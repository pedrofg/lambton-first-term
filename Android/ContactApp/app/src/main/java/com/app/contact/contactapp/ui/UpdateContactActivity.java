package com.app.contact.contactapp.ui;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.app.contact.contactapp.R;
import com.app.contact.contactapp.controller.ContactController;
import com.app.contact.contactapp.model.Contact;

import static com.app.contact.contactapp.ui.ContactListActivity.EXTRA_CONTACT_ID;

/**
 * Created by Pedro on 2017-06-29.
 */
//Activity responsible to handle the Add and Edit of Contacts objects in the database.
// This activity can received a contact_id meaning that it will be an edit action or not meaning that will be an add action.
public class UpdateContactActivity extends AppCompatActivity implements View.OnClickListener {

    private Contact contact;
    private EditText edtName, edtEmail, edtPhone;
    private Button btnSave;
    private boolean isUpdating;

    //Bind the xml view to the activity through setContentView and bind the xml views to java Objects through the findViewById.
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_update_contact);

        this.edtName = (EditText) findViewById(R.id.edtName);
        this.edtEmail = (EditText) findViewById(R.id.edtEmail);
        this.edtPhone = (EditText) findViewById(R.id.edtPhone);
        this.btnSave = (Button) findViewById(R.id.btnSave);

        this.btnSave.setOnClickListener(this);

        //Verify if has the intent and then fill the views with the received contact.
        if (getIntent().hasExtra(EXTRA_CONTACT_ID)) {
            fillScreen();
        }
    }

    //Handle the save button click. Get the textx from the EditTexts Views and save to local variables.
    //Set the values typed by the user to the contact and call the insert or updated to the database.
    //If no error then set the result as ok and finish the activity, returning the message to the activity caller
    //as result ok then the previous activity can update the list.
    //If a error happened then show a Toast with the message inside the Exception create by the Controller.
    @Override
    public void onClick(View view) {
        String name = this.edtName.getText().toString();
        String email = this.edtEmail.getText().toString();
        String phone = this.edtPhone.getText().toString();

        if (!isUpdating) {
            this.contact = new Contact();
        }

        this.contact.setName(name);
        this.contact.setEmail(email);
        this.contact.setPhone(phone);

        try {
            if (!isUpdating) {
                ContactController.getInstance(this).insert(contact);
            } else {
                ContactController.getInstance(this).update(contact);
            }
            setResult(RESULT_OK);
            finish();
        } catch (Exception exception) {
            showToast(exception.getMessage());
        }
    }

    //show Toast with the message received as parameter. LENGTH_SHORT to be a Toast which will disappear fast.
    private void showToast(String message) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }

    //If is a edit then fetch the contact with the contact_id received from the previous activity and
    //fill the EditTexts with the contact information from the database.
    private void fillScreen() {
        int contactId = getIntent().getIntExtra(EXTRA_CONTACT_ID, 0);
        this.contact = ContactController.getInstance(this).find(contactId);

        this.edtName.setText(contact.getName());
        this.edtEmail.setText(contact.getEmail());
        this.edtPhone.setText(contact.getPhone());
    }
}
