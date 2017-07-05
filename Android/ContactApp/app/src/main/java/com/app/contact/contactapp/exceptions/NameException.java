package com.app.contact.contactapp.exceptions;

/**
 * Created by Pedro on 2017-06-30.
 */
//Exception used by the controller to inform the activity when the Contact Name is not valid.
public class NameException extends Exception {
    public NameException(String message) {
        super(message);
    }
}
