package com.kh013j.model.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class Tables {
    int quantityOfTables = 8;
    @NonNull
    int currentTable;
    String tableStatus;
    public Tables(int currentTable, String tableStatus){
        this.currentTable = currentTable;
        this.tableStatus = tableStatus;
    }
}
