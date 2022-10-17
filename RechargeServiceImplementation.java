package com.casestudy.mobilerecharge.service;

import com.casestudy.mobilerecharge.model.*;
import com.casestudy.mobilerecharge.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class RechargeServiceImplementation implements RechargeService {

    @Autowired
    OfferRepository offerRepository;
    @Autowired
    BillRepository billRepository;

    @Override
    public List<Offer> getAllRechargePlans() {
        return (List<Offer>) offerRepository.findAll();
    }

    @Override
    public Offer getRechargePlanById(Long id) {
        return offerRepository.findById(id).get();
    }

    @Override
    public void addRecharge(Bill trnsc) {
        billRepository.save(trnsc);
    }

}
