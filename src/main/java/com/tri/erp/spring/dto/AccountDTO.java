package com.tri.erp.spring.dto;

import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.google.common.base.Objects;

/**
 * Created by arjayadong on 9/9/14.
 */
public class AccountDTO {

    private int id;
    private String code;
    private String title;
    private String type;
    private String GLAccount;
    private String SLAccount;
    private String auxAccount;
    private String group;
    private int isActive;
    private int level;
    private int hasSL;
    private String parentAccount;
    private int normalBalance;
    private int isHeader;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {

        return this.code + " => " + this.title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getGLAccount() {
        return GLAccount;
    }

    public void setGLAccount(String GLAccount) {
        this.GLAccount = GLAccount;
    }

    public String getSLAccount() {
        return SLAccount;
    }

    public void setSLAccount(String SLAccount) {
        this.SLAccount = SLAccount;
    }

    public String getAuxAccount() {
        return auxAccount;
    }

    public void setAuxAccount(String auxAccount) {
        this.auxAccount = auxAccount;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public int getIsActive() {
        return isActive;
    }

    public void isActive(int isActive) {
        this.isActive = isActive;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getHasSL() {
        return hasSL;
    }

    public void hasSL(int hasSL) {
        this.hasSL = hasSL;
    }

    public String getParentAccount() {
        return parentAccount;
    }

    public void setParentAccount(String parentAccount) {
        this.parentAccount = parentAccount;
    }

    public int getNormalBalance() {
        return normalBalance;
    }

    public void setNormalBalance(int normalBalance) {
        this.normalBalance = normalBalance;
    }

    public int getIsHeader() {
        return isHeader;
    }

    public void setIsHeader(int isHeader) {
        this.isHeader = isHeader;
    }
}
