package com.csw.service;

import com.csw.dao.AddressDao;
import com.csw.entity.Address;
import com.csw.util.MybatisUtil;

import java.util.List;

public class AddressServiceImpl implements AddressService {

    @Override
    public void insertInto(Address address) {
        // TODO Auto-generated method stub
        try {
            AddressDao ad = MybatisUtil.getMapper(AddressDao.class);
            ad.addInsert(address);
            MybatisUtil.commit();
        } catch (Exception e) {
            try {
                MybatisUtil.rollback();
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
            e.printStackTrace();
            throw new RuntimeException("插入失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public List<Address> queryAllAddress(String id) {
        // TODO Auto-generated method stub
        try {
            AddressDao ad = MybatisUtil.getMapper(AddressDao.class);
            List<Address> lists = ad.queryAllAddress(id);
            return lists;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public Address queryByID(String addressid) {
        // TODO Auto-generated method stub
        try {
            AddressDao ad = MybatisUtil.getMapper(AddressDao.class);
            Address address = ad.queryByID(addressid);
            return address;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public void updateAddress(Address address) {
        // TODO Auto-generated method stub
        try {
            AddressDao ad = MybatisUtil.getMapper(AddressDao.class);
            ad.updateAddress(address);
            MybatisUtil.commit();
        } catch (Exception e) {
            try {
                MybatisUtil.rollback();
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
            e.printStackTrace();
            throw new RuntimeException("插入失败");
        } finally {
            MybatisUtil.close();
        }
    }

}
