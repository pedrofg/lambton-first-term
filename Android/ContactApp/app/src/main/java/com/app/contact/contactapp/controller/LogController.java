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

public class LogController {
    public enum LogStatus {
        INSERTED, UPDATED, DELETED;
    }

    private static LogController instance = null;
    private DBHelper dbHelper;

    public static LogController getInstance(Context context) {
        if (instance == null) {
            instance = new LogController(context);
        }
        return instance;
    }

    public LogController(Context context) {
        this.dbHelper = new DBHelper(context);
    }

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

    private String getDateTime() {
        SimpleDateFormat dateFormat = new SimpleDateFormat(
                "yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        Date date = new Date();
        return dateFormat.format(date);
    }
}
