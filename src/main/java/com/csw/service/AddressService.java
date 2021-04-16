package com.csw.service;

import com.csw.entity.Address;

import java.util.List;

public interface AddressService {

    void insertInto(Address address);

    Address queryByID(String addressid);

    List<Address> queryAllAddress(String id);

    void updateAddress(Address address);

}
