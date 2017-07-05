package com.app.contact.contactapp.controller;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.app.contact.contactapp.data.DBHelper;
import com.app.contact.contactapp.exceptions.EmailException;
import com.app.contact.contactapp.exceptions.NameException;
import com.app.contact.contactapp.exceptions.PhoneException;
import com.app.contact.contactapp.model.Contact;
import com.app.contact.contactapp.model.DeletedContact;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Pedro on 2017-06-29.
 */
//Contact Controller is the Controller in the MVC pattern. It is responsible to all the Contact operations that involves database and business logic.
public class ContactController {

    private static ContactController instance = null;
    private DBHelper dbHelper;
    private Context context;

    //Implements a singleton since just one instance is needed of this class.
    public static ContactController getInstance(Context context) {
        if (instance == null) {
            instance = new ContactController(context);
        }
        return instance;
    }

    //Constructor received the context and created the DBHelper object.
    public ContactController(Context context) {
        this.dbHelper = new DBHelper(context);
        this.context = context;
    }

    //Insert the contact object into the database.
    //Validate the contact and throws exceptions regarding the current error.
    //After Contact inserted successfully then insert the Log showing that it was Inserted. Calling the LogController for it.
    public long insert(Contact contact) throws EmailException, PhoneException, NameException {
        validate(contact);
        SQLiteDatabase db = this.dbHelper.getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put(Contact.ContactEntry.COLUMN_NAME, contact.getName());
        values.put(Contact.ContactEntry.COLUMN_PHONE, contact.getPhone());
        values.put(Contact.ContactEntry.COLUMN_EMAIL, contact.getEmail());

        long rowId = db.insert(Contact.ContactEntry.TABLE_NAME, null, values);

        if (rowId >= 0) {
            LogController.getInstance(this.context).insert((int) rowId, LogController.LogStatus.INSERTED);
        }
        return rowId;
    }

    //Update the contact object into the database.
    //Validate the contact and throws exceptions regarding the current error.
    //After Contact updated successfully then insert the Log showing that it was Updated. Calling the LogController for it.
    public long update(Contact contact) throws EmailException, PhoneException, NameException {
        validate(contact);
        SQLiteDatabase db = this.dbHelper.getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put(Contact.ContactEntry.COLUMN_NAME, contact.getName());
        values.put(Contact.ContactEntry.COLUMN_PHONE, contact.getPhone());
        values.put(Contact.ContactEntry.COLUMN_EMAIL, contact.getEmail());

        int rowId = db.update(Contact.ContactEntry.TABLE_NAME, values, Contact.ContactEntry._ID + " = ? ", new String[]{Integer.toString(contact.getId())});

        if (rowId >= 0) {
            LogController.getInstance(this.context).insert(rowId, LogController.LogStatus.UPDATED);
        }

        return rowId;
    }

    //Fetch all the Contacts from the database and insert them into a ArrayList and return it.
    public List<Contact> findAll() {
        List<Contact> contactList = new ArrayList<>();
        SQLiteDatabase db = this.dbHelper.getReadableDatabase();

        Cursor cursor = db.rawQuery("SELECT * FROM " + Contact.ContactEntry.TABLE_NAME, null);
        cursor.moveToFirst();

        while (!cursor.isAfterLast()) {
            contactList.add(makeContact(cursor));
            cursor.moveToNext();
        }

        cursor.close();
        return contactList;
    }

    //Find the contact which has the giving id in the database, if found then return it, if not return null.
    public Contact find(int id) {
        Contact contact = null;
        SQLiteDatabase db = this.dbHelper.getReadableDatabase();
        Cursor cursor = db.rawQuery("SELECT * FROM " + Contact.ContactEntry.TABLE_NAME + " WHERE " + Contact.ContactEntry._ID + " = " + id, null);
        cursor.moveToFirst();

        while (!cursor.isAfterLast()) {
            contact = makeContact(cursor);
            cursor.moveToNext();
        }

        cursor.close();
        return contact;
    }

    //Find the contacts that have the text parameter in either name, phone or email fields.
    //Using SQL Like operator to match the text with the contacts fields.
    //Return the list of contacts.
    public List<Contact> findByText(String text) {
        List<Contact> contactList = new ArrayList<>();
        SQLiteDatabase db = this.dbHelper.getReadableDatabase();

        Cursor cursor = db.rawQuery("SELECT * FROM " + Contact.ContactEntry.TABLE_NAME + " WHERE NAME LIKE '%" + text + "%' OR PHONE LIKE '%" + text + "%' OR EMAIL LIKE '%" + text + "%'", null);
        cursor.moveToFirst();

        while (!cursor.isAfterLast()) {
            contactList.add(makeContact(cursor));
            cursor.moveToNext();
        }

        cursor.close();
        return contactList;
    }

    //Create a contact object based on the cursor information from the database.
    //Uses the ContactEntry class to get the column names.
    //Return the new contact object.
    private Contact makeContact(Cursor cursor) {
        Contact contact = new Contact();
        contact.setId(cursor.getInt(cursor.getColumnIndex(Contact.ContactEntry._ID)));
        contact.setName(cursor.getString(cursor.getColumnIndex(Contact.ContactEntry.COLUMN_NAME)));
        contact.setPhone(cursor.getString(cursor.getColumnIndex(Contact.ContactEntry.COLUMN_PHONE)));
        contact.setEmail(cursor.getString(cursor.getColumnIndex(Contact.ContactEntry.COLUMN_EMAIL)));
        return contact;
    }

    //Delete the contact from the database that match with the contact id given.
    //If delete successfully then insert this contact in the DeletedContact Table and in the Log Table.
    //return the number of rows deleted returned by the DBHelper delete().
    public long delete(Contact contact) {
        SQLiteDatabase db = this.dbHelper.getWritableDatabase();

        int wasDeleted = db.delete(Contact.ContactEntry.TABLE_NAME, Contact.ContactEntry._ID + " = ? ", new String[]{Integer.toString(contact.getId())});

        if (wasDeleted >= 0) {
            insertDeletedContact(contact);
            LogController.getInstance(this.context).insert(contact.getId(), LogController.LogStatus.DELETED);
        }

        return wasDeleted;
    }

    //Insert the contact into the DeletedContact table after the contact is deleted in the Contact Table.
    //Keeping track of the deleted contacts.
    //Return > 0 if it was inserted.
    private long insertDeletedContact(Contact contact) {
        SQLiteDatabase db = this.dbHelper.getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put(Contact.ContactEntry.COLUMN_NAME, contact.getName());
        values.put(Contact.ContactEntry.COLUMN_PHONE, contact.getPhone());
        values.put(Contact.ContactEntry.COLUMN_EMAIL, contact.getEmail());

        return db.insert(DeletedContact.DeletedContactEntry.TABLE_NAME, null, values);
    }

    //Validate all the contact fields and throw exception if an error was caught.
    //For each error the exception message changes letting the interface (Activity) knows what to show to the user.
    //The last check is if the contact already exists in the database.
    private void validate(Contact contact) throws NameException, EmailException, PhoneException {
        if (contact.getName().length() > Contact.ContactEntry.MAX_NAME_LENGTH) {
            throw new NameException("Name max lenght reached");
        } else if (contact.getName().isEmpty()) {
            throw new NameException("Name Empty");
        }

        if (contact.getEmail().length() > Contact.ContactEntry.MAX_EMAIL_LENGTH) {
            throw new EmailException("Email max lenght reached");
        } else if (contact.getEmail().isEmpty()) {
            throw new EmailException("Email Empty");
        }

        if (contact.getPhone().length() > Contact.ContactEntry.MAX_PHONE_LENGTH) {
            throw new PhoneException("Phone max lenght reached");
        } else if (contact.getPhone().isEmpty()) {
            throw new PhoneException("Phone Empty");
        }

        if (alreadyExists(contact))
            throw new RuntimeException("Contact already exsits.");

    }

    //Check whether the contact was already added to the database or not.
    //If the name and phone is the same of the contact received as parameter then it already exists.
    //To check if the Android Cursor object has the method getCount() showing how many objects were returned from the query.
    //If get count > 0 then the database found and object with the same name and phone.
    private boolean alreadyExists(Contact contact) {

        SQLiteDatabase db = this.dbHelper.getReadableDatabase();

        Cursor cursor = db.rawQuery("SELECT * FROM " + Contact.ContactEntry.TABLE_NAME + " WHERE NAME = '" + contact.getName() + "' AND PHONE = '" + contact.getPhone() + "'", null);

        if (cursor.getCount() > 0) {
            return true;
        }

        return false;
    }
}
