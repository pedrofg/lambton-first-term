package com.app.contact.contactapp.model;

import android.provider.BaseColumns;

import static com.app.contact.contactapp.model.Log.LogEntry.TABLE_NAME;

/**
 * Created by Pedro on 2017-06-29.
 */
//Log POJO class to represent the model.
//Log class will store all the operation under Contact table.
//It has the contact id as foreign key in the database and it has status of the operation (Inserted, Deleted...)
//and date when the operation happened.
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

    //Base column names and table name to be used by the database and controllers.
    public static class LogEntry implements BaseColumns {
        public static final String TABLE_NAME = "log";
        public static final String COLUMN_CONTACT_ID = "contact_id";
        public static final String COLUMN_STATUS = "status";
        public static final String COLUMN_DATE = "date";
    }

    //Create table query giving the contact id as the foreign key referencing the contact table.
    //All the column names come from the LogEntry created above.
    public static final String SQL_CREATE_TABLE =
            "CREATE TABLE " + TABLE_NAME + " (" +
                    LogEntry._ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                    LogEntry.COLUMN_CONTACT_ID + " INTEGER," +
                    LogEntry.COLUMN_STATUS + " TEXT," +
                    LogEntry.COLUMN_DATE + " TEXT," +
                    " FOREIGN KEY(" + LogEntry.COLUMN_CONTACT_ID + ") REFERENCES " + Contact.ContactEntry.TABLE_NAME + "(" + Contact.ContactEntry._ID + "))";
}
