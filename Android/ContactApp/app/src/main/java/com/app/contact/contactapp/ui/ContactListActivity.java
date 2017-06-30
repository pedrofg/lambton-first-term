package com.app.contact.contactapp.ui;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.app.contact.contactapp.R;
import com.app.contact.contactapp.controller.ContactController;
import com.app.contact.contactapp.controller.LogController;
import com.app.contact.contactapp.model.Contact;
import com.app.contact.contactapp.model.Log;

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
        contact.setId((int) id);


        ContactController.getInstance(this).delete(contact);

        List<Contact> allDeletedContact = ContactController.getInstance(this).findAllDeletedContact();

        List<Log> all = LogController.getInstance(this).findAll();
    }
}
