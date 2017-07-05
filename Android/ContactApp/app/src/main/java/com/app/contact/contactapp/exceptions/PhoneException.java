package com.app.contact.contactapp.exceptions;

/**
 * Created by Pedro on 2017-06-30.
 */
//Exception used by the controller to inform the activity when the Contact Phone is not valid.
public class PhoneException extends Exception {
    public PhoneException(String message) {
        super(message);
    }
}
