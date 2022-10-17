package com.casestudy.mobilerecharge.model;

import javax.persistence.*;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
public class Bill {
    @Id
    @GenericGenerator(name = "sequence-generator", strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator", parameters = {
            @Parameter(name = "sequence_name", value = "user_sequence"),
            @Parameter(name = "initial_value", value = "100001"),
            @Parameter(name = "increment_size", value = "1")
    })
    @GeneratedValue(generator = "sequence-generator")
    Long transactionId;
    Integer mobileNumber;
    Long offerId;

    public Bill() {
    }

    public Bill(Long transactionId, Integer mobileNumber, Long offerId) {
        this.transactionId = transactionId;
        this.mobileNumber = mobileNumber;
        this.offerId = offerId;
    }

    public Long getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(Long transactionId) {
        this.transactionId = transactionId;
    }

    public Integer getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(Integer mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public Long getOfferId() {
        return offerId;
    }

    public void setOfferId(Long offerId) {
        this.offerId = offerId;
    }

}
