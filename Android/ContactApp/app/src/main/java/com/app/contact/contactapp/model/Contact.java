package com.app.contact.contactapp.model;

import android.provider.BaseColumns;

import static com.app.contact.contactapp.model.Contact.ContactEntry.TABLE_NAME;

/**
 * Created by Pedro on 2017-06-29.
 */

public class Contact {

    private int id;
    private String name;
    private String phone;
    private String email;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public static class ContactEntry implements BaseColumns {
        public static final String TABLE_NAME = "contact";
        public static final String COLUMN_NAME = "name";
        public static final String COLUMN_PHONE = "phone";
        public static final String COLUMN_EMAIL = "email";

        public static final int MAX_NAME_LENGTH = 50;
        public static final int MAX_EMAIL_LENGTH = 50;
        public static final int MAX_PHONE_LENGTH = 10;
    }

    public static final String SQL_CREATE_TABLE =
            "CREATE TABLE " + TABLE_NAME + " (" +
                    ContactEntry._ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                    ContactEntry.COLUMN_NAME + " TEXT," +
                    ContactEntry.COLUMN_PHONE + " TEXT," +
                    ContactEntry.COLUMN_EMAIL + " TEXT)";

}
