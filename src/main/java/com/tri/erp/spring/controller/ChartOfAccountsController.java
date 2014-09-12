package com.tri.erp.spring.controller;

import com.tri.erp.spring.commons.Response;
import com.tri.erp.spring.commons.beans.CreateAccountResponse;
import com.tri.erp.spring.commons.helpers.MessageFormatter;
import com.tri.erp.spring.dto.AccountDTO;
import com.tri.erp.spring.model.Account;
import com.tri.erp.spring.service.interfaces.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by TSI Admin on 9/9/2014.
 */
@Controller
@RequestMapping("/admin/coa")
public class ChartOfAccountsController {
    private final String BASE_PATH = "admin/coa/partials/";

    @Autowired
    AccountService accountService;

    @Autowired
    MessageSource messageSource;

    // view providers
    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        return "admin/coa/main";
    }

    @RequestMapping(value = "/accounts-tree-page", method = RequestMethod.GET)
    public String accountsTree() {
        return BASE_PATH + "chart-of-accounts";
    }

    @RequestMapping(value = "/new-account-page", method = RequestMethod.GET)
    public String newAccount() {
        return BASE_PATH + "add-edit";
    }

    @RequestMapping(value = "/account-details-page", method = RequestMethod.GET)
    public String accountDetails() {
        return BASE_PATH + "account-details";
    }
    // end: view providers

    // json providers
    @RequestMapping(value = "/accounts", method = RequestMethod.GET)
    @ResponseBody
    public List<AccountDTO> accountList() {
        List<AccountDTO> accountList = accountService.findAll();
        return accountList;
    }

    @RequestMapping(value = "/account/{id}", method = RequestMethod.GET)
    @ResponseBody
    public AccountDTO getAccount(@PathVariable Integer id) {
        AccountDTO shop = accountService.findById(id);
        return shop;
    }
    // end: json provides

    // create account
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public Response createAccount(@Valid @RequestBody Account account, BindingResult bindingResult) {
        return accountService.processCreate(account, bindingResult, messageSource);
    }
}
