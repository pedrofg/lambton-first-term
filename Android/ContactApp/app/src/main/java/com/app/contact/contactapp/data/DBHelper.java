package com.app.contact.contactapp.data;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import com.app.contact.contactapp.model.Contact;
import com.app.contact.contactapp.model.DeletedContact;
import com.app.contact.contactapp.model.Log;


/**
 * Created by Pedro on 2017-06-29.
 */

public class DBHelper extends SQLiteOpenHelper {

    public static final int DATABASE_VERSION = 1;
    public static final String DATABASE_NAME = "MyContactsList.db";

    public DBHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(Contact.SQL_CREATE_TABLE);
        db.execSQL(Log.SQL_CREATE_TABLE);
        db.execSQL(DeletedContact.SQL_CREATE_TABLE);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + Contact.ContactEntry.TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + Log.LogEntry.TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + DeletedContact.DeletedContactEntry.TABLE_NAME);
        onCreate(db);
    }
}
