package rest

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import domain.Equipo

class Database {
	static SessionFactory factory

	new() {
		try {
			factory = new Configuration().configure().buildSessionFactory()
		} catch (Throwable ex) {
			System.err.println("Failed to create sessionFactory object." + ex)
			throw new ExceptionInInitializerError(ex)
		}

	}

	def static init() {
//		var db = new Database()
		/* Algun ejemplito */
//		var Integer river = db.addEquipo("River", "CARP", "../../../assets/logos/0002.png");
//		var Integer boca = db.addEquipo("Boca", "CABJ", "../../../assets/logos/0001.png");
//		
		/* List down all the employees */
//		db.listEmployees();
		/* Update employee's records */
//		db.updateEmployee(empID1, 5000);
		/* Delete an employee from the database */
//		db.deleteEmployee(empID2);
		/* List down new list of the employees */
//		db.listEmployees();
	}

	/* Method to CREATE an employee in the database */
	def Integer addEquipo(Equipo equipo) {
		var Session session = factory.openSession()
		var Transaction tx = null;
		var Integer idEquipo = null;

		try {
			tx = session.beginTransaction()
			idEquipo = session.save(equipo) as Integer
			tx.commit()
		} catch (HibernateException e) {
			if(tx !== null) tx.rollback()
			e.printStackTrace()
		} finally {
			session.close()
		}
		return idEquipo
	}

/* Method to  READ all the employees */
//	def void listEmployees() {
//		var session = factory.openSession();
//		var tx = null;
//
//		try {
//			tx = session.beginTransaction();
//			var employees = session.createQuery("FROM Employee").list();
//			for (var iterator = employees.iterator(); iterator.hasNext();) {
//				var employee = (Employee)
//				iterator.next();
//				System.out.print("First Name: " + employee.getFirstName());
//				System.out.print("  Last Name: " + employee.getLastName());
//				System.out.println("  Salary: " + employee.getSalary());
//			}
//			tx.commit();
//		} catch (HibernateException e) {
//			if(tx != null) tx.rollback();
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//	}
//
//	/* Method to UPDATE salary for an employee */
//	def void updateEmployee(Integer EmployeeID, int salary) {
//		var session = factory.openSession();
//		tx = null;
//
//		try {
//			tx = session.beginTransaction();
//			var employee = (Employee)
//			session.get(Employee.class, EmployeeID);
//			employee.setSalary(salary);
//			session.update(employee);
//			tx.commit();
//		} catch (HibernateException e) {
//			if(tx != null) tx.rollback();
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//	}
//
//	/* Method to DELETE an employee from the records */
//	def void deleteEmployee(Integer EmployeeID) {
//		var session = factory.openSession();
//		var tx = null;
//
//		try {
//			tx = session.beginTransaction();
//			var employee = (Employee)
//			session.get(Employee.class, EmployeeID);
//			session.delete(employee);
//			tx.commit();
//		} catch (HibernateException e) {
//			if(tx != null) tx.rollback();
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//	}
}
