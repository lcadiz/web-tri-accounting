package com.tri.erp.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Created by TSI Admin on 9/9/2014.
 */
@Controller
@RequestMapping("/admin/coa")
public class ChartOfAccountsController {
    private final String BASE_PATH = "admin/coa/partials/";

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
}

// TODO: work with parent account in hibernate to avoid workarounds