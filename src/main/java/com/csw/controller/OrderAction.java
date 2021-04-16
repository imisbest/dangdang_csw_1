package com.csw.controller;

import com.csw.entity.*;
import com.csw.service.*;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.util.*;

public class OrderAction {
    HttpSession session = ServletActionContext.getRequest().getSession();
    Map<String, ChooseOrder> cart = (Map<String, ChooseOrder>) session
            .getAttribute("cart");
    BookService bs = new BookServiceImpl();
    AddressService as = new AddressServiceImpl();
    OrderService os = new OrderServiceImpl();
    ItemService isItemService = new ItemServiceImpl();

    private String bookid;
    private String orderC;
    private Integer totalMoney;
    private Integer savingMoney;
    private Address address;
    private List<Address> listaddressList;
    private String addressid;
    private String addrbjString;
    private String message;
    private String ddbhString;
    private List<Item> itemlists;
    private List<Item> itemaa;
    private String itemid;
    private List<Order> orderLists;
    private String orderid;
    private Order order;
    private List<Order> orders;
    private Address ass;

    public Address getAss() {
        return ass;
    }

    public void setAss(Address ass) {
        this.ass = ass;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public List<Item> getItemaa() {
        return itemaa;
    }

    public void setItemaa(List<Item> itemaa) {
        this.itemaa = itemaa;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public List<Order> getOrderLists() {
        return orderLists;
    }

    public void setOrderLists(List<Order> orderLists) {
        this.orderLists = orderLists;
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public List<Item> getItemlists() {
        return itemlists;
    }

    public void setItemlists(List<Item> itemlists) {
        this.itemlists = itemlists;
    }

    public String getDdbhString() {
        return ddbhString;
    }

    public void setDdbhString(String ddbhString) {
        this.ddbhString = ddbhString;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getAddrbjString() {
        return addrbjString;
    }

    public void setAddrbjString(String addrbjString) {
        this.addrbjString = addrbjString;
    }

    public String getAddressid() {
        return addressid;
    }

    public void setAddressid(String addressid) {
        this.addressid = addressid;
    }

    public List<Address> getListaddressList() {
        return listaddressList;
    }

    public void setListaddressList(List<Address> listaddressList) {
        this.listaddressList = listaddressList;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getOrderC() {
        return orderC;
    }

    public void setOrderC(String orderC) {
        this.orderC = orderC;
    }

    public String getBookid() {
        return bookid;
    }

    public void setBookid(String bookid) {
        this.bookid = bookid;
    }

    public String ordermain() throws InterruptedException {
        Thread.sleep(3000);
        Map<String, ChooseOrder> cart = (Map<String, ChooseOrder>) session
                .getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<String, ChooseOrder>();
        }
        Book book = bs.queryBybookId(bookid);
        boolean flag = true;
        if (cart.containsKey(bookid)) {
            flag = false;// 如果存在
        }
        if (flag) {
            if (book.getStock() > 0) {// 库存大于0，可以存
                cart.put(
                        bookid,
                        new ChooseOrder(book.getCover(), book.getName(), book
                                .getPrice(), book.getDprice(), 1));
            }
        } else {
            if (book.getStock() > cart.get(bookid).getCount()) {// 库存大于当前已经添加的数量
                cart.put(
                        bookid,
                        new ChooseOrder(book.getCover(), book.getName(), book
                                .getPrice(), book.getDprice(), cart.get(bookid)
                                .getCount() + 1));
            } else {// 小于等于的情况
                cart.put(
                        bookid,
                        new ChooseOrder(book.getCover(), book.getName(), book
                                .getPrice(), book.getDprice(), cart.get(bookid)
                                .getCount()));
            }
        }
        orderExtract(cart);
        session.setAttribute("cart", cart);
        //return "cart_list";
        return null;
    }

    public String orderChange() {
        Map<String, ChooseOrder> cart = (Map<String, ChooseOrder>) session
                .getAttribute("cart");
        Book book = bs.queryBybookId(bookid);
        if (orderC.equals("")) {// 判空

        } else {// 不为空的时候
            if (book.getStock() > Integer.parseInt(orderC)) {
                cart.get(bookid).setCount(Integer.parseInt(orderC));
            } else {
                cart.get(bookid).setCount(book.getStock());
            }
        }
        orderExtract(cart);
        session.setAttribute("cart", cart);
        return "cart_list";
    }

    public String orderDelete() {
        Map<String, ChooseOrder> cart = (Map<String, ChooseOrder>) session
                .getAttribute("cart");
        cart.remove(bookid);
        if (cart.isEmpty()) {// 如果购物车为空，清除购物车
            cart = null;
        } else {
            orderExtract(cart);// 不为空，继续计算数量
        }
        session.setAttribute("cart", cart);
        return "cart_list";
    }

    public void orderExtract(Map<String, ChooseOrder> cart) {
        Integer total = 0;
        Integer saving = 0;
        Integer count = 0;
        Set<String> set = cart.keySet();
        for (String string : set) {
            total += cart.get(string).getDprice() * cart.get(string).getCount();
            saving += (cart.get(string).getPrice()
                    * cart.get(string).getCount() - cart.get(string)
                    .getDprice() * cart.get(string).getCount());
            count += cart.get(string).getCount();
        }
        totalMoney = total;
        savingMoney = saving;
        Integer counts = count;
        System.out.println("count:" + count);
        session.setAttribute("count", counts);
        session.setAttribute("totalMoney", totalMoney);
        session.setAttribute("savingMoney", savingMoney);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    /* 。。订单下一步提交模块。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。 */
    public String orderNextAction() {
        System.out.println("orderNextAction()");
        System.out.println("addressid:" + addressid);
        User user = (User) session.getAttribute("user");
        listaddressList = as.queryAllAddress(user.getId());// 查询所有地址
        System.out.println("listaddressLis:" + listaddressList);

        if (addressid == null) {
            System.out.println("1");
            address = null;
        } else {
            System.out.println("2");

            address = as.queryByID(addressid);
            addrbjString = addressid;
        }
        ass = address;
        return "address_form";
    }

    public String addressInfo() {
        Map<String, ChooseOrder> cart = (Map<String, ChooseOrder>) session
                .getAttribute("cart");
        Set<String> set = cart.keySet();
        System.out.println("address:" + address);
        if (address.getName().equals("")) {
            message = "名字未输入";
            session.setAttribute("message", message);
            return "orderNextAction";
        } else if (address.getLocal().equals("")) {
            message = "地址未输入";
            session.setAttribute("message", message);
            return "orderNextAction";
        } else if (address.getZip_code().equals("")) {
            message = "邮编未输入";
            session.setAttribute("message", message);
            return "orderNextAction";
        } else if (address.getPhone().equals("")) {
            message = "手机号未输入";
            session.setAttribute("message", message);
            return "orderNextAction";
        }
        /*
         * private String id; private String order_no; private Integer total;
         * private Date create_date; private String status; private Address
         * address; private User user;
         */

        /*
         * private String id; private Integer count; private Date create_date;
         * private Order order; private Book book;
         */

        User user = (User) session.getAttribute("user");
        if (!addressid.equals("")) {
            address.setId(addressid);
            address.setUser(user);
            as.updateAddress(address);
            session.setAttribute("address", address);
        } else if (addressid.equals("")) {
            address.setId(UUID.randomUUID() + "");
            address.setUser(user);
            as.insertInto(address);
            session.setAttribute("address", address);
        }
        // ////////////////////////////////////////////////////////////////////////
        Integer totalMoney = (Integer) session.getAttribute("totalMoney");
        Integer count = (Integer) session.getAttribute("count");
        Address addrrString = (Address) session.getAttribute("address");
        User uuusUser = (User) session.getAttribute("user");
        Date date = new Date();
        ddbhString = new Date().getTime() + "";
        String uuid = UUID.randomUUID() + "";
        String uuid2 = UUID.randomUUID() + "";
        for (String string : set) {
            Order order = new Order(uuid2, ddbhString, totalMoney, date, "未支付",
                    addrrString, uuusUser);
            os.insertDD(order);

            isItemService.insertOrder(new Item(UUID.randomUUID() + "", cart
                    .get(string).getCount(), date, order, bs
                    .queryBybookId(string)));
        }
        // ////////////////////////////////////////////////////////////////////////////
        for (String string : set) {
            Integer aa = Integer.parseInt(bs.queryBybookId(string).getSale())
                    + cart.get(string).getCount();
            bs.changeSaleStock(aa + "", bs.queryBybookId(string).getStock()
                    - cart.get(string).getCount(), string);
        }

        cart = null;
        session.setAttribute("cart", cart);
        return "order_ok";
    }

    ///后台订单管理//////////////////////////////////////////////////////////////////////////////////////////
    //查询所有订单信息struts-address.xml
    public String showStringAllOrder() {
        orderLists = os.queryAllOrder();
        System.out.println("orderLists" + orderLists);
        return "show";
    }

    //点击查看详细信息
    public String detailOrderAction() {
        System.out
                .println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        orders = os.queryByid(orderid);
        itemaa = isItemService.queryByItemID(orderid);
        for (Item itt : itemaa) {
            System.out.println("itemaa" + itemaa);
        }

        return "detail";
    }
}
