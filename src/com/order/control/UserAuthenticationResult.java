package com.order.control;

public class UserAuthenticationResult {
    private boolean isValid = false ;

    //
    private String role;

    public UserAuthenticationResult(boolean isValid, String role) {
        this.isValid = isValid;
        this.role = role;
    }

    public UserAuthenticationResult() {
    }

    public boolean isValid() {
        return isValid;
    }

    public void setValid(boolean valid) {
        isValid = valid;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
