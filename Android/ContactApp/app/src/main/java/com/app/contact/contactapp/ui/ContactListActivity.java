package com.app.contact.contactapp.ui;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.app.contact.contactapp.R;
import com.app.contact.contactapp.controller.ContactController;
import com.app.contact.contactapp.model.Contact;

import java.util.List;

import static com.app.contact.contactapp.controller.ContactController.getInstance;

public class ContactListActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_contact_list);

        Contact contact = new Contact();
        contact.setEmail("pedro@gmail.com");
        contact.setPhone("2412451251");
        contact.setName("PedroGF");

        long id = getInstance(this).insert(contact);

        contact = ContactController.getInstance(this).find((int) id);

        contact.setEmail("changed@gmail.com");

        id = getInstance(this).insert(contact);

        List<Contact> contactList = ContactController.getInstance(this).findAll();

//        ContactController.getInstance(this).update(contact);
//
//        contact = ContactController.getInstance(this).find((int) id);
//
//        Log.i("test", contact.getEmail());
//
//        ContactController.getInstance(this).delete(contact.getId());
//
//        contact = ContactController.getInstance(this).find((int) id);
    }
}
