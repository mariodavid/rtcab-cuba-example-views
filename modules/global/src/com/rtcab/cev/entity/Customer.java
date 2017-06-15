package com.rtcab.cev.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@NamePattern("%s|name")
@Table(name = "CEV_CUSTOMER")
@Entity(name = "cev$Customer")
public class Customer extends StandardEntity {
    private static final long serialVersionUID = 8981823106567683037L;

    @NotNull
    @Column(name = "NAME", nullable = false)
    protected String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TYPE_ID")
    protected CustomerType type;

    public void setType(CustomerType type) {
        this.type = type;
    }

    public CustomerType getType() {
        return type;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}