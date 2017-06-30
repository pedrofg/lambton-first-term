package com.app.contact.contactapp.controller;


import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.app.contact.contactapp.data.DBHelper;
import com.app.contact.contactapp.model.Log;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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

    public List<Log> findAll() {
        List<Log> logList = new ArrayList<>();
        SQLiteDatabase db = this.dbHelper.getReadableDatabase();

        Cursor cursor = db.rawQuery("SELECT * FROM " + Log.LogEntry.TABLE_NAME, null);
        cursor.moveToFirst();

        while (!cursor.isAfterLast()) {
            logList.add(makeLog(cursor));
            cursor.moveToNext();
        }

        cursor.close();
        return logList;
    }

    private Log makeLog(Cursor cursor) {
        Log log = new Log();
        log.setId(cursor.getInt(cursor.getColumnIndex(Log.LogEntry._ID)));
        log.setContactId(cursor.getInt(cursor.getColumnIndex(Log.LogEntry.COLUMN_CONTACT_ID)));
        log.setStatus(cursor.getString(cursor.getColumnIndex(Log.LogEntry.COLUMN_STATUS)));
        log.setDate(cursor.getString(cursor.getColumnIndex(Log.LogEntry.COLUMN_DATE)));
        return log;
    }

    private String getDateTime() {
        SimpleDateFormat dateFormat = new SimpleDateFormat(
                "yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        Date date = new Date();
        return dateFormat.format(date);
    }
}
