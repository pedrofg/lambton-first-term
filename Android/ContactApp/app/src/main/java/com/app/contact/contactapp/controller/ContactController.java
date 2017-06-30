package com.app.contact.contactapp.controller;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.app.contact.contactapp.data.DBHelper;
import com.app.contact.contactapp.model.Contact;
import com.app.contact.contactapp.model.DeletedContact;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Pedro on 2017-06-29.
 */

public class ContactController {

    private static ContactController instance = null;
    private DBHelper dbHelper;
    private Context context;

    public static ContactController getInstance(Context context) {
        if (instance == null) {
            instance = new ContactController(context);
        }
        return instance;
    }

    public ContactController(Context context) {
        this.dbHelper = new DBHelper(context);
        this.context = context;
    }

    public long insert(Contact contact) {
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

    public long update(Contact contact) {
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

    private Contact makeContact(Cursor cursor) {
        Contact contact = new Contact();
        contact.setId(cursor.getInt(cursor.getColumnIndex(Contact.ContactEntry._ID)));
        contact.setName(cursor.getString(cursor.getColumnIndex(Contact.ContactEntry.COLUMN_NAME)));
        contact.setPhone(cursor.getString(cursor.getColumnIndex(Contact.ContactEntry.COLUMN_PHONE)));
        contact.setEmail(cursor.getString(cursor.getColumnIndex(Contact.ContactEntry.COLUMN_EMAIL)));
        return contact;
    }

    public long delete(Contact contact) {
        SQLiteDatabase db = this.dbHelper.getWritableDatabase();

        int wasDeleted = db.delete(Contact.ContactEntry.TABLE_NAME, Contact.ContactEntry._ID + " = ? ", new String[]{Integer.toString(contact.getId())});

        if (wasDeleted >= 0) {
            insertDeletedContact(contact);
            LogController.getInstance(this.context).insert(contact.getId(), LogController.LogStatus.DELETED);
        }

        return wasDeleted;
    }

    private long insertDeletedContact(Contact contact) {
        SQLiteDatabase db = this.dbHelper.getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put(Contact.ContactEntry.COLUMN_NAME, contact.getName());
        values.put(Contact.ContactEntry.COLUMN_PHONE, contact.getPhone());
        values.put(Contact.ContactEntry.COLUMN_EMAIL, contact.getEmail());

        return db.insert(DeletedContact.DeletedContactEntry.TABLE_NAME, null, values);
    }

    public List<Contact> findAllDeletedContact() {
        List<Contact> contactList = new ArrayList<>();
        SQLiteDatabase db = this.dbHelper.getReadableDatabase();

        Cursor cursor = db.rawQuery("SELECT * FROM " + DeletedContact.DeletedContactEntry.TABLE_NAME, null);
        cursor.moveToFirst();

        while (!cursor.isAfterLast()) {
            contactList.add(makeContact(cursor));
            cursor.moveToNext();
        }

        cursor.close();
        return contactList;
    }
}
