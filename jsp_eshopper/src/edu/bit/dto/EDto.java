package edu.bit.dto;

import java.sql.Timestamp;
import java.util.Random;

public class EDto {
		
		int empno;
		String ename;
		String job;
		int mgr;
		Timestamp hiredate;
		int sal;
		int comm;
		int deptno;
		
		public EDto() {}
		
		

		public EDto(String ename, int sal) {
			this.ename = ename;
			this.sal = sal;
		}



		public int getEmpno() {
			return empno;
		}

		public void setEmpno(int empno) {
			this.empno = empno;
		}

		public String getEname() {
			return ename;
		}

		public void setEname(String ename) {
			this.ename = ename;
		}

		public String getJob() {
			return job;
		}

		public void setJob(String job) {
			this.job = job;
		}

		public int getMgr() {
			return mgr;
		}

		public void setMgr(int mgr) {
			this.mgr = mgr;
		}

		public Timestamp getHiredate() {
			return hiredate;
		}

		public void setHiredate(Timestamp hiredate) {
			this.hiredate = hiredate;
		}

		public int getSal() {
			return sal;
		}

		public void setSal(int sal) {
			this.sal = sal;
		}

		public int getComm() {
			return comm;
		}

		public void setComm(int comm) {
			this.comm = comm;
		}

		public int getDeptno() {
			return deptno;
		}

		public void setDeptno(int deptno) {
			this.deptno = deptno;
		}
		
	
	   public String getPhoto() {
		   Random random = new Random(); 
		   int num = random.nextInt(6) + 1;
		   return "product" + String.valueOf(num) + ".jpg";
				   
	   }
	 

}
