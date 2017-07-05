package com.app.contact.contactapp.controller;


import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import com.app.contact.contactapp.data.DBHelper;
import com.app.contact.contactapp.model.Log;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Created by Pedro on 2017-06-29.
 */

//Log Controller is the Controller in the MVC pattern. It is responsible to all the Log operations that involves database and business logic.
public class LogController {
    //LogStatus enum is created to maintain the data integrity when the status is sent to the database as Text.
    public enum LogStatus {
        INSERTED, UPDATED, DELETED;
    }

    private static LogController instance = null;
    private DBHelper dbHelper;

    //LogController is a singleton since just one instance is needed.
    public static LogController getInstance(Context context) {
        if (instance == null) {
            instance = new LogController(context);
        }
        return instance;
    }

    //Constructor receives the context and instantiate the DBHelper object to communicate with the database.
    public LogController(Context context) {
        this.dbHelper = new DBHelper(context);
    }

    //Creates the Log object using the parameters and insert into the database using the DBHelper object.
    public long insert(int contactId, LogStatus logStatus) {
        Log log = new Log();
        log.setContactId(contactId);
        log.setStatus(logStatus.toString());
        log.setDate(getDateTime());

        SQLiteDatabase db = this.dbHelper.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(Log.LogEntry.COLUMN_CONTACT_ID, log.getContactId());
        contentValues.put(Log.LogEntry.COLUMN_STATUS, log.getStatus());
        contentValues.put(Log.LogEntry.COLUMN_DATE, log.getDate());
        return db.insert(Log.LogEntry.TABLE_NAME, null, contentValues);
    }

    //Get the current date and time, format it to be inserted as the Log date into the database.
    private String getDateTime() {
        SimpleDateFormat dateFormat = new SimpleDateFormat(
                "yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        Date date = new Date();
        return dateFormat.format(date);
    }
}
