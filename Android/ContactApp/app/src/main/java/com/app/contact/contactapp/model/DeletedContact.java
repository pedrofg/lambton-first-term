package com.app.contact.contactapp.model;

import android.provider.BaseColumns;

import static com.app.contact.contactapp.model.DeletedContact.DeletedContactEntry.TABLE_NAME;

/**
 * Created by Pedro on 2017-06-30.
 */

//DeletedContact POJO class to represent the model. This class will store the deleted contacts.
//It has a id to be used by the database and the contact information.
public class DeletedContact {

    private int id;
    private Contact contact;


    //As this class uses contact it just have the table name as different.
    //All the other column names or validation comes from the contact model.
    public static class DeletedContactEntry implements BaseColumns {
        public static final String TABLE_NAME = "deleted_contact";
    }

    //SQL scrypt to create the table using the column names from the contact model.
    public static final String SQL_CREATE_TABLE =
            "CREATE TABLE " + TABLE_NAME + " (" +
                    DeletedContactEntry._ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                    Contact.ContactEntry.COLUMN_NAME + " TEXT," +
                    Contact.ContactEntry.COLUMN_PHONE + " TEXT," +
                    Contact.ContactEntry.COLUMN_EMAIL + " TEXT)";
}
