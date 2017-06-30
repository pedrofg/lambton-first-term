package com.app.contact.contactapp.ui;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.app.contact.contactapp.R;
import com.app.contact.contactapp.exceptions.EmailMaxLenghtReached;
import com.app.contact.contactapp.exceptions.NameMaxLenghtReached;
import com.app.contact.contactapp.exceptions.PhoneMaxLenghtReached;
import com.app.contact.contactapp.model.Contact;

import static com.app.contact.contactapp.controller.ContactController.getInstance;

public class ContactListActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_contact_list);

        Contact contact = new Contact();
        contact.setEmail("pedro@gmail.com");
        contact.setPhone("415444422");
        contact.setName("pedro");

        long id = 0;
        try {
            id = getInstance(this).insert(contact);
        } catch (EmailMaxLenghtReached emailMaxLenghtReached) {
            emailMaxLenghtReached.printStackTrace();
        } catch (PhoneMaxLenghtReached phoneMaxLenghtReached) {
            phoneMaxLenghtReached.printStackTrace();
        } catch (NameMaxLenghtReached nameMaxLenghtReached) {
            nameMaxLenghtReached.printStackTrace();
        }
        contact.setId((int) id);

    }
}
