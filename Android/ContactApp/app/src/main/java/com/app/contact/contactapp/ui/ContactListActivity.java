package com.app.contact.contactapp.ui;

import android.app.SearchManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

import com.app.contact.contactapp.R;
import com.app.contact.contactapp.controller.ContactController;
import com.app.contact.contactapp.model.Contact;

import java.util.List;

// Launcher activity, which is the first activity to be opened. Extends AppCompatActivity which is the Activity of the android support library.
// ContactListActivity implements AdapterListener so it knows when the user clicked to edit or remove a contact, information that comes from the adapter.
// Implements and handle view click listeners. e.g. button add contact and button restore page.
public class ContactListActivity extends AppCompatActivity implements ContactsAdapter.AdapterListener, View.OnClickListener {

    //Recyclerview to show all the contacts stored in the database as a list in the screen.
    private RecyclerView listContacts;
    private View btnAddContact, btnRestorePage;
    //Adapter to show handle and show all the contacts as views on the screen.
    private ContactsAdapter contactsAdapter;
    //Request code passed to the UpdateContactActivity and used to validate the return.
    public static final int REQUEST_CODE = 1;
    // Constant used as a key to the Intent.putExtra, giving the contact id in case of editing.
    public static final String EXTRA_CONTACT_ID = "contact_id";

    //Oncreate is the first method of the activity life cycle, here we bind the xml view with this activity and bring the views in to be used later.
    // Also instantiate the adapter giving the own activity as the listener for the buttons.
    // Request the contact list from the database and fill it in the recycler view.
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_contact_list);

        // Bringing the views from the xml to java code. findViewById(id).
        this.listContacts = (RecyclerView) findViewById(R.id.listContacts);
        this.btnAddContact = findViewById(R.id.btnAddContact);
        this.btnRestorePage = findViewById(R.id.btnRestorePage);
        // Setting the click listener passing the activity as the handler, since this activity implements OnClickListener this is possible.
        this.btnAddContact.setOnClickListener(this);
        this.btnRestorePage.setOnClickListener(this);

        // LayoutManager required by the recyclerview to inform which kind of layout will be this recyclerview. e.g. Linear, Grid.
        LinearLayoutManager mLayoutManager = new LinearLayoutManager(this);
        this.listContacts.setLayoutManager(mLayoutManager);


        //Instantiate the adapter passing the activity as the listener for the buttons.
        this.contactsAdapter = new ContactsAdapter(this);
        this.listContacts.setAdapter(contactsAdapter);

        // Load contacts from the database and fill the list.
        loadContactsIntoList(null);
    }


    // Method to handle the edit button click sent from the adapter. When edit is clicked start activity responsible to edit the contact.
    @Override
    public void editContact(Contact contact) {
        startUpdateActivity(contact.getId());
    }

    // Method to handle the delete button click sent from the adapter. When delete is clicked, shows a confirmation popup, if true then
    // delete from the database, reload the list view and close the dialog. If false just close the dialog.
    @Override
    public void deleteContact(final Contact contact) {

        //AlertDialog is a default dialog from Android, setting a message and giving implementation to the buttons click listeners.
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage("Delete contact " + contact.getName() + "?")
                .setPositiveButton("Delete", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        ContactController.getInstance(ContactListActivity.this).delete(contact);
                        loadContactsIntoList(null);
                        dialog.cancel();
                    }
                })
                .setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                });
        //Showing the dialog on the screen.
        builder.create().show();
    }

    // Click listeners to the add contact and restore page buttons.
    @Override
    public void onClick(View view) {
        //When add contact is clicked, start the activity which will handle the add contact UpdateContactActivity.
        //If restore page is clicked then reload the list from the database to the recycler view, restoring the initial state.
        if (view.getId() == R.id.btnAddContact)
            startUpdateActivity(0);
        else if (view.getId() == R.id.btnRestorePage) {
            loadContactsIntoList(null);
        }
    }

    //Start the activity which will handle add or edit contact giving the contact id in case of editing.
    //Start the activity waiting for the result, using the REQUEST_CODE for this.
    private void startUpdateActivity(int contactId) {
        Intent intent = new Intent(this, UpdateContactActivity.class);
        if (contactId > 0)
            intent.putExtra(EXTRA_CONTACT_ID, contactId);

        startActivityForResult(intent, REQUEST_CODE);
    }

    //Handle the result from the UpdateContactActivity, if the result is OK then reload the contact list into the list view,
    //because either a new contact was added or a existing contact was updated.
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == REQUEST_CODE && resultCode == RESULT_OK) {
            loadContactsIntoList(null);
        }
    }

    //Fetch the contacts from the database. If text is false then load all the existing contacts.
    //If text is set then give the text to the controller to be used in the query to find the contact.
    //After fetch the list of contacts load into the adapter and notify it that the data was updated.
    private void loadContactsIntoList(String text) {
        List<Contact> contactList;
        if (text != null)
            contactList = ContactController.getInstance(this).findByText(text);
        else
            contactList = ContactController.getInstance(this).findAll();

        contactsAdapter.setContactList(contactList);
        contactsAdapter.notifyDataSetChanged();
    }

    //Receive the intent sent by the Search Bar when user searched for a text. Android sent this intent,
    //as the activity is "singleTop", just one instance of it will exists then a new intent will be sent through onNewIntent
    //with the query as a parameter inside the intent.
    @Override
    protected void onNewIntent(Intent intent) {
        //set intent simply tells the activity that this is the current intent received, then the getExtra will work.
        setIntent(intent);
        handleIntent(intent);
    }

    //Handle the received intent from the Search Bar. Extract the query from the intent Extra paramenter with getStringExtra,
    //SearchManager.QUERY is the default key sent by the Android. With the result load the contacts list based on this query
    //typed by the user.
    private void handleIntent(Intent intent) {
        if (Intent.ACTION_SEARCH.equals(intent.getAction())) {
            String query = intent.getStringExtra(SearchManager.QUERY);
            loadContactsIntoList(query);
        }
    }

    //Instantiate the SearchView to the top menu on the screen. Default Android implementation.
    //Find the search in the options_menu xml menu file and connects to the activity.
    //This same implementation can be find in the documentation.
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.options_menu, menu);

        // Associate searchable configuration with the SearchView
        SearchManager searchManager =
                (SearchManager) getSystemService(Context.SEARCH_SERVICE);
        SearchView searchView =
                (SearchView) menu.findItem(R.id.search).getActionView();
        searchView.setSearchableInfo(
                searchManager.getSearchableInfo(getComponentName()));


        return true;
    }
}
