package finalProject.data;

import finalProject.business.Shift;
import finalProject.business.Staff;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StaffDAO {

    public static Staff getStaffById(String staffId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try{
            Staff staff = em.find(Staff.class, staffId);
            return staff;
        }
        finally{
            em.close();
        }
    }

    public static void insert(Staff staff) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        try{
            em.persist(staff);
            trans.commit();
        }
        catch(Exception e){
            trans.rollback();
            e.printStackTrace();
        }
        finally{
            em.close();
        }
    }

    public static void update(Staff staff) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.merge(staff); //merge = update
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static void delete(Staff staff) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.remove(em.merge(staff)); //remove = delete
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static List<Staff> getAllStaffs() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "SELECT s FROM Staff s";
        return em.createQuery(query, Staff.class).getResultList();
    }

    public static List<Staff> getStaffByName(String name) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "SELECT s FROM Staff s where s.name like :name";
        return em.createQuery(query, Staff.class).setParameter("name", "%" + name + "%").getResultList();
    }

    public static List<Staff> getStaffByFilters(double salaryMin, double salaryMax, int ageMin, int ageMax, int workTimeMin, int workTimeMax) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "Select s From Staff s " +
                        "Where function('year', current_date) - function('year', s.birthDate) between :ageMin and :ageMax " +
                        "and function('year', current_date) - function('year', s.workDate) between :workTimeMin and :workTimeMax " +
                        "and s.salary between :salaryMin and :salaryMax ";

        return em.createQuery(query, Staff.class)
                .setParameter("ageMin", ageMin)
                .setParameter("ageMax", ageMax)
                .setParameter("workTimeMin", workTimeMin)
                .setParameter("workTimeMax", workTimeMax)
                .setParameter("salaryMin", salaryMin)
                .setParameter("salaryMax", salaryMax).getResultList();
    }

    public static int StaffPerShift(LocalDate date, String shiftName){
        Date shiftDate = Date.from(date.atStartOfDay(ZoneId.systemDefault()).toInstant());

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "SELECT COUNT(s) FROM Staff s JOIN s.listShift shift WHERE shift.shiftDate = :shiftDate and shift.shiftName = :shiftName";
        Long count = em.createQuery(query, Long.class).
                setParameter("shiftDate", shiftDate).
                setParameter("shiftName", shiftName).getSingleResult();
        return count.intValue();
    }

    public static Map<LocalDate, Integer> getStaffPerShiftInMonth(String shiftName, int month, int year) {

        Map<LocalDate, Integer> map = new HashMap<>();
        int daysInMonth = YearMonth.of(year, month).lengthOfMonth();
        for (int day = 1; day <= daysInMonth; day++) {
            LocalDate date = LocalDate.of(year, month, day);
            map.put(date, StaffPerShift(date, shiftName));
        }
        return map;
    }

    public static boolean isOverShifts(Staff staff, int month, int year) {
            EntityManager em = DBUtil.getEmFactory().createEntityManager();
            String query = "SELECT COUNT(shift) FROM Staff s JOIN s.listShift shift " +
                    "WHERE s.personID = :staffId " +
                    "AND FUNCTION('MONTH', shift.shiftDate) = :month " +
                    "AND FUNCTION('YEAR', shift.shiftDate) = :year";
            Long shiftCount = em.createQuery(query, Long.class)
                    .setParameter("staffId", staff.getPersonID())
                    .setParameter("month", month)
                    .setParameter("year", year)
                    .getSingleResult();
            return shiftCount > 15;
        }


    public static boolean isExisted(String name, String phone){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "Select Count(s) From Staff s where s.name = :name and s.phone = :phone";
        Long empCount = em.createQuery(query, Long.class)
                .setParameter("name", name)
                .setParameter("phone", phone)
                .getSingleResult();
        return empCount > 0;
    }

    public static List<Shift> getShiftInMonth(Staff staff, int month, int year) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "Select shift From Staff s Join s.listShift shift Where s.personID = :staffId " +
                "And function('MONTH', shift.shiftDate) = :month " +
                "AND function('YEAR', shift.shiftDate) = :year";
        return em.createQuery(query, Shift.class).setParameter("staffId", staff.getPersonID()).
                setParameter("year", year).
                setParameter("month", month).getResultList();
    }

    public static int getTotalShift(Staff staff) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "select count(shift) from Staff s join s.listShift shift Where s.personID = :staffId";
        Long count = em.createQuery(query, Long.class).setParameter("staffId", staff.getPersonID()).getSingleResult();
        return count.intValue();
    }

    public static List<Staff> getStaffInShift(LocalDate date, String shiftName) {
        Date shiftDate = Date.from(date.atStartOfDay(ZoneId.systemDefault()).toInstant());
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "Select s From Staff s Join s.listShift shift Where shift.shiftDate = :shiftDate and shift.shiftName = :shiftName";
        return em.createQuery(query, Staff.class).setParameter("shiftDate", shiftDate).
                setParameter("shiftName", shiftName).getResultList();
    }
}
