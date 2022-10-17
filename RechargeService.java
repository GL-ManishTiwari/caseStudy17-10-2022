package com.casestudy.mobilerecharge.service;

import java.util.List;

import com.casestudy.mobilerecharge.model.*;

public interface RechargeService {
    public List<Offer> getAllRechargePlans();

    public Offer getRechargePlanById(Long id);

    public void addRecharge(Bill transc);

}