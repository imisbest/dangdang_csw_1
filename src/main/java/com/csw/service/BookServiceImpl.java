package com.csw.service;

import com.csw.dao.BookDao;
import com.csw.entity.Book;
import com.csw.util.MybatisUtil;

import java.io.File;
import java.util.List;

public class BookServiceImpl implements BookService {
    /*
     * try { BookDao bd = MybatisUtil.getMapper(BookDao.class);
     * MybatisUtil.commit(); } catch (Exception e) { MybatisUtil.rollback();
     * e.printStackTrace(); throw new RuntimeException("添加失败"); } finally {
     * MybatisUtil.close(); }
     */
    public List<Book> queryAllBook() {
        // TODO Auto-generated method stub
        List<Book> lists;
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            lists = bd.queryAllBook();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public List<Book> queryLike(String key, String content) {
        // TODO Auto-generated method stub
        List<Book> lists;
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            lists = bd.queryLike(key, content);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public List<Book> queryAllConnection() {
        // TODO Auto-generated method stub
        List<Book> lists;
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            lists = bd.queryAllConnection();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public Book queryBybookId(String id) {
        // TODO Auto-generated method stub
        Book book;
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            book = bd.queryBybookId(id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
        return book;
    }

    @Override
    public void updateAction(Book book, File cover) {
        // TODO Auto-generated method stub
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            bd.updateAction(book, cover);
            MybatisUtil.commit();
        } catch (Exception e) {
            try {
                MybatisUtil.rollback();
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
            e.printStackTrace();
            throw new RuntimeException("更新失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public void addInsert(Book book) {
        // TODO Auto-generated method stub
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            bd.addInsert(book);
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
    public void deleteAction(String id) {
        // TODO Auto-generated method stub
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            bd.deleteAction(id);
            MybatisUtil.commit();
        } catch (Exception e) {
            try {
                MybatisUtil.rollback();
            } catch (Exception e2) {
                // TODO: handle exception
            }
            throw new RuntimeException(e.getMessage());
        } finally {
            MybatisUtil.close();
        }

    }

    @Override
    public List<Book> query(String sale, String createdate) {
        // TODO Auto-generated method stub
        List<Book> lists;
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            lists = bd.query(sale, createdate);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public List<Book> queryBookByFirstCategoryId(String id, Integer currPage,
                                                 int pageSize, Integer countPage) {
        // TODO Auto-generated method stub
        List<Book> list;
        Integer firstIndex;
        Integer lastIndex;
        try {
            BookDao sd = MybatisUtil.getMapper(BookDao.class);
            if (currPage != countPage) {
                firstIndex = (currPage - 1) * pageSize + 1;
                lastIndex = currPage * pageSize;
            } else {
                firstIndex = (currPage - 1) * pageSize + 1;
                lastIndex = sd.countByfirst(id);
            }
            System.out.println("queryBookByFirstCategoryId:firstIndex:"
                    + firstIndex);
            System.out.println("queryBookByFirstCategoryId:lastIndex:"
                    + lastIndex);
            list = sd.queryBookByFirstCategoryId(id, firstIndex, lastIndex);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("��ѯ����ʧ��");
        } finally {
            MybatisUtil.close();
        }
        return list;
    }

    @Override
    public Integer countByfirst(String id) {
        // TODO Auto-generated method stub
        try {
            Integer count;
            BookDao sd = MybatisUtil.getMapper(BookDao.class);
            Integer ss = sd.countByfirst(id);
            System.out.println("ss:" + ss);
            if (ss % 2 == 0) {
                count = ss / 2;
            } else {
                count = ss / 2 + 1;
            }
            return count;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("ͳ��ʧ��");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public Integer countBySecond(String id) {
        // TODO Auto-generated method stub
        try {
            Integer count;
            BookDao sd = MybatisUtil.getMapper(BookDao.class);
            Integer ss = sd.countBySecond(id);
            if (ss % 2 == 0) {
                count = ss / 2;
            } else {
                count = ss / 2 + 1;
            }
            return count;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("ͳ��ʧ��");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public List<Book> queryBookBySecondCategoryId(String id2, Integer currPage,
                                                  int pageSize, Integer countPage) {
        // TODO Auto-generated method stub
        List<Book> list;
        Integer firstIndex;
        Integer lastIndex;
        try {
            BookDao sd = MybatisUtil.getMapper(BookDao.class);
            if (currPage != countPage) {
                firstIndex = (currPage - 1) * pageSize + 1;
                lastIndex = currPage * pageSize;
            } else {
                firstIndex = (currPage - 1) * pageSize + 1;
                lastIndex = sd.countBySecond(id2);
            }
            list = sd.queryBookBySecondCategoryId(id2, firstIndex, lastIndex);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("��ѯ����ʧ��");
        } finally {
            MybatisUtil.close();
        }
        return list;
    }

    @Override
    public Integer count1(String id1) {
        // TODO Auto-generated method stub
        try {
            Integer count;
            BookDao sd = MybatisUtil.getMapper(BookDao.class);
            Integer ss = sd.countByfirst(id1);

            return ss;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("ͳ��ʧ��");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public Integer count2(String id) {
        // TODO Auto-generated method stub
        try {
            Integer count;
            BookDao sd = MybatisUtil.getMapper(BookDao.class);
            Integer ss = sd.countBySecond(id);

            return ss;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("ͳ��ʧ��");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public void changeSaleStock(String sale, int stock, String id) {
        // TODO Auto-generated method stub
        try {
            BookDao bd = MybatisUtil.getMapper(BookDao.class);
            bd.changeSaleStock(sale, stock, id);
            MybatisUtil.commit();
        } catch (Exception e) {
            try {
                MybatisUtil.rollback();
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
            e.printStackTrace();
            throw new RuntimeException("更新失败");
        } finally {
            MybatisUtil.close();
        }
    }
}
