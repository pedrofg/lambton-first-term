package com.app.contact.contactapp.model;

import android.provider.BaseColumns;

import static com.app.contact.contactapp.model.DeletedContact.DeletedContactEntry.TABLE_NAME;

/**
 * Created by Pedro on 2017-06-30.
 */

public class DeletedContact {

    private int id;
    private Contact contact;


    public static class DeletedContactEntry implements BaseColumns {
        public static final String TABLE_NAME = "deleted_contact";
    }

    public static final String SQL_CREATE_TABLE =
            "CREATE TABLE " + TABLE_NAME + " (" +
                    DeletedContactEntry._ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                    Contact.ContactEntry.COLUMN_NAME + " TEXT," +
                    Contact.ContactEntry.COLUMN_PHONE + " TEXT," +
                    Contact.ContactEntry.COLUMN_EMAIL + " TEXT)";
}
