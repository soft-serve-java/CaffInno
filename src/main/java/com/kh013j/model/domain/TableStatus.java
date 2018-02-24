package com.kh013j.model.domain;

import com.fasterxml.jackson.annotation.JsonValue;

import java.io.Serializable;

public class TableStatus implements Serializable {
    public static final String HAS_NULL_WAITER = "HAS_NULL_WAITER";
    public static final String IS_OF_CURRENT_WAITER = "IS_OF_CURRENT_WAITER";
    public static final String IS_ON_DELIVERY = "IS_ON_DELIVERY";
    public static final String CALLING_WAITER = "CALLING_WAITER";
    public static final String HAS_WAITER = "HAS_WAITER";
}