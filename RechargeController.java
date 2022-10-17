package com.casestudy.mobilerecharge.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.casestudy.mobilerecharge.model.*;
import com.casestudy.mobilerecharge.service.*;

@RestController
@RequestMapping(value = "/recharge")
public class RechargeController {
    @Autowired
    RechargeService rechargePlanService;

    @GetMapping(value = "/welcome")
    public ModelAndView list() {

        ModelAndView model = new ModelAndView("welcome");
        Bill transc = new Bill();
        List<Offer> rechargePlanList = rechargePlanService.getAllRechargePlans();
        model.addObject("rechargePlanList", rechargePlanList);
        model.addObject("mobileRechargeForm", transc);
        return model;
    }

    @PostMapping(value = "/successful")
    public ModelAndView add(@ModelAttribute("mobileRechargeForm") Bill trnsc) {

        rechargePlanService.addRecharge(trnsc);
        ModelAndView model = new ModelAndView("paymentsuccessful");
        model.addObject("transactionList", trnsc);
        Offer plan = rechargePlanService.getRechargePlanById(trnsc.getOfferId());
        model.addObject("rechargeplan", plan);
        return model;

    }

}