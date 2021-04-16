package com.csw.dao;

import com.csw.entity.Address;

import java.util.List;

public interface AddressDao {

    void addInsert(Address address);

    List<Address> queryAllAddress(String id);

    Address queryByID(String addressid);

    void updateAddress(Address address);

}
