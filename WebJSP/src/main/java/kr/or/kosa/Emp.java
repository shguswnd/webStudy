package kr.or.kosa;

public class Emp {

//DTO 클래스

	
		private int empno;
		private String ename;
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
		@Override
		public String toString() {
			return "Emp [empno=" + empno + ", ename=" + ename + "]";
		}
	
}
