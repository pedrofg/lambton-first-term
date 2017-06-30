package com.app.contact.contactapp.model;

import android.provider.BaseColumns;

import static com.app.contact.contactapp.model.Log.LogEntry.TABLE_NAME;

/**
 * Created by Pedro on 2017-06-29.
 */

public class Log {

    private int id;
    private int contactId;
    private String status;
    private String date;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getContactId() {
        return contactId;
    }

    public void setContactId(int contactId) {
        this.contactId = contactId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public static class LogEntry implements BaseColumns {
        public static final String TABLE_NAME = "log";
        public static final String COLUMN_CONTACT_ID = "contact_id";
        public static final String COLUMN_STATUS = "status";
        public static final String COLUMN_DATE = "date";
    }

    public static final String SQL_CREATE_TABLE =
            "CREATE TABLE " + TABLE_NAME + " (" +
                    LogEntry._ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                    LogEntry.COLUMN_CONTACT_ID + " INTEGER," +
                    LogEntry.COLUMN_STATUS + " TEXT," +
                    LogEntry.COLUMN_DATE + " TEXT," +
                    " FOREIGN KEY(" + LogEntry.COLUMN_CONTACT_ID + ") REFERENCES " + Contact.ContactEntry.TABLE_NAME + "(" + Contact.ContactEntry._ID + "))";
}
