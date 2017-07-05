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
//DBHelper is the class the give access to the Database, it extends from SQLiteOpenHelper, which is an
//Android class that gives access to the database.
public class DBHelper extends SQLiteOpenHelper {

    //Constant that holds the database version.
    public static final int DATABASE_VERSION = 1;
    //Constant that holds the database name.
    public static final String DATABASE_NAME = "MyContactsList.db";

    //Constructor receives a Context object and gives to the super class as required.
    public DBHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    //Execute the models create table queries. This method is called by the Android system on the first interaction with the database.
    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(Contact.SQL_CREATE_TABLE);
        db.execSQL(Log.SQL_CREATE_TABLE);
        db.execSQL(DeletedContact.SQL_CREATE_TABLE);
    }

    //Method called by the Android when a upgraded in the Database version occurs.
    //If so, drop all tables and recreate. It is not being used in this App, since we do not upgrade the DATABASE_VERSION.
    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + Contact.ContactEntry.TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + Log.LogEntry.TABLE_NAME);
        db.execSQL("DROP TABLE IF EXISTS " + DeletedContact.DeletedContactEntry.TABLE_NAME);
        onCreate(db);
    }
}
