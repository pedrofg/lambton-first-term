package com.app.contact.contactapp.exceptions;

/**
 * Created by Pedro on 2017-06-30.
 */

//Exception used by the controller to inform the activity when the Contact Email is not valid.
public class EmailException extends Exception {
    public EmailException(String message) {
        super(message);
    }
}
