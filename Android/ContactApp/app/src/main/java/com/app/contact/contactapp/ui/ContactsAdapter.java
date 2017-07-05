package com.app.contact.contactapp.ui;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.app.contact.contactapp.R;
import com.app.contact.contactapp.model.Contact;

import java.util.List;

/**
 * Created by macstudent on 2017-06-30.
 */

//ContactsAdapter is the Adapter pattern to handle the main contacts list. It is a recyclerView adapter.
//AdapterListener is a interface to be the bridge between the edit and remove click and the handler which is the activity in this case.
public class ContactsAdapter extends RecyclerView.Adapter<ContactsAdapter.ViewHolder> {

    List<Contact> contactList;
    private AdapterListener listener;

    //Receive the AdapterListener as a parameter in the constructor and sets to a object variable. The activity is the listener here.
    public ContactsAdapter(AdapterListener listener) {
        this.listener = listener;
    }

    public void setContactList(List<Contact> contactList) {
        this.contactList = contactList;
    }

    //AdapterListener is a interface which two methods to be listen by the activity. editContact and deleteContact.
    public interface AdapterListener {
        void editContact(Contact contact);

        void deleteContact(Contact contact);
    }

    //Adapter method responsible to inflate the layout for each item of the list, list_contacts_item in this case and
    //Create the ViewHolder giving this layout. ViewHolder is a pattern used for performance since the same view
    //can be used again when user scroll the list, so with ViewHolder the same instance can be reused.
    @Override
    public ContactsAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

        View inflate = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.list_contacts_item, parent, false);

        ViewHolder vh = new ViewHolder(inflate);
        return vh;
    }

    //Adapter method used to fill the layout of each item with the data object values.
    //In this case it is filling the list_contacts_item view holders with the contactList information.
    //And setClickListeners and send it to the AdapterListener received in the constructor.
    @Override
    public void onBindViewHolder(ContactsAdapter.ViewHolder holder, int position) {

        final Contact contact = contactList.get(position);
        holder.txtName.setText(contact.getName());
        holder.txtEmail.setText(contact.getEmail());
        holder.txtPhone.setText(contact.getPhone());

        holder.btnEditContact.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                listener.editContact(contact);
            }
        });

        holder.btnDeleteContact.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                listener.deleteContact(contact);
            }
        });

    }

    //Adapter method to know the size of the list of models. contactList in this case.
    @Override
    public int getItemCount() {
        return contactList.size();
    }

    //View holder implementation to hold the views created in order to reuse it. This is an Android Pattern.
    //Receive the view inflated and bind the views to variables to be used in the adapter.
    public class ViewHolder extends RecyclerView.ViewHolder {
        public TextView txtName;
        public TextView txtEmail;
        public TextView txtPhone;
        public View btnEditContact;
        public View btnDeleteContact;

        public ViewHolder(View itemView) {
            super(itemView);

            txtName = itemView.findViewById(R.id.txtName);
            txtEmail = itemView.findViewById(R.id.txtEmail);
            txtPhone = itemView.findViewById(R.id.txtPhone);

            btnEditContact = itemView.findViewById(R.id.btnEditContact);
            btnDeleteContact = itemView.findViewById(R.id.btnDeleteContact);
        }
    }
}
