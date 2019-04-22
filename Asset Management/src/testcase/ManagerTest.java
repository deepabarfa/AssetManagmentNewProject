package testcase;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.math.BigInteger;
import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;
import org.testng.Assert;

import beans.AllotedAsset;
import beans.Employee;
import beans.Request;
import beans.UserAssetRequest;
import dao.EmpDao;
import dao.RequestDao;

public class ManagerTest 
{
	EmpDao ed;
	RequestDao rd;
	
	@Before
	public void setUp()
	{
		ed=mock(EmpDao.class);
		rd=mock(RequestDao.class);
	}
	
	@Test
	public void viewmanagerprofile()
	{
		when(ed.viewmanagerprofile("M102") ).thenReturn(new ArrayList<Employee>());
	    Assert.assertEquals(ed.viewmanagerprofile("M102"), new ArrayList<Employee>());
	}
	
	@Test
	public void managerprofileupdate()
	{
		when(ed.managerprofileupdate("M102","deepa barfa","deepabarfa30595@gmail.com","indore",90909090)).thenReturn(0);
	    Assert.assertEquals(ed.managerprofileupdate("M102","deepa barfa","deepabarfa30595@gmail.com","indore",90909090), 0);
	}
	
	@Test
	public void Managerupdateinsert()
	{
		when(ed.Managerupdateinsert("M102","11","9999")).thenReturn(0);
	    Assert.assertEquals(ed.Managerupdateinsert("M102","11","9999"), 0);
	}

	@Test
	public void MinsertRequest()
	{
		Request ps=new Request(); 
	ps.setRequestid("19");
	ps.setAssetid("2");
	ps.setAssetname("mouse");
	ps.setDesignation("Employee");
	ps.setRequestdate("14/11/2017");
	ps.setStatus(3);
	ps.setEid1("E102");
	ps.setEid2(null);
	ps.setMid1("M102");
	ps.setMid2(null);
	ps.setSid("S101");
	
	when(ed.MinsertRequest(ps)).thenReturn(0);
    Assert.assertEquals(ed.MinsertRequest(ps), 0);
	}
	
	@Test
	public void MviewRequest()
	{
		when(ed.MviewRequest("M102") ).thenReturn(new ArrayList<Request>());
	    Assert.assertEquals(ed.MviewRequest("M102"), new ArrayList<Request>());
	}
	
	@Test
	public void viewmanagerasset()
	{
		when(ed.viewmanagerasset("M102") ).thenReturn(new ArrayList<AllotedAsset>());
	    Assert.assertEquals(ed.viewmanagerasset("M102"), new ArrayList<AllotedAsset>());
	}
	
	@Test
	public void viewMallemployee()
	{
		when(ed.viewMallemployee("M102") ).thenReturn(new ArrayList<Employee>());
	    Assert.assertEquals(ed.viewMallemployee("M102"), new ArrayList<Employee>());
	}
	
	@Test
	public void viewMRequest()
	{
		when(ed.viewMRequest() ).thenReturn(new ArrayList<Request>());
	    Assert.assertEquals(ed.viewMRequest(), new ArrayList<Request>());
	}

	@Test
	public void viewTransferRequest()
	{
		when(ed.viewTransferRequest() ).thenReturn(new ArrayList<UserAssetRequest>());
	    Assert.assertEquals(ed.viewTransferRequest(), new ArrayList<UserAssetRequest>());
	}
	
	@Test
	public void approveMTransferReq()
	{
		UserAssetRequest r=new UserAssetRequest();
		
		r.setRequestid(21);
		r.setAssetid("5");
		r.setAssetname("Pen Drive");
		r.setFromemp("M102");
		r.setToemp("E103");
		r.setMid1("M103");
		r.setRequestdate("23/11/2017");
		r.setStatus(4);
		
		when(ed.approveMTransferReq(r)).thenReturn(0);
	    Assert.assertEquals(ed.approveMTransferReq(r), 0);
	}
	
	@Test
	public void rejectMTransferRequest()
	{
		UserAssetRequest r=new UserAssetRequest();
		
		r.setRequestid(21);
		r.setAssetid("5");
		r.setAssetname("Pen Drive");
		r.setFromemp("M102");
		r.setToemp("E103");
		r.setMid1("M103");
		r.setRequestdate("23/11/2017");
		r.setStatus(4);
		
		when(ed.rejectMTransferRequest(r)).thenReturn(0);
	    Assert.assertEquals(ed.rejectMTransferRequest(r), 0);
	}
	
	
	@Test
	public void approveMReq()
	{
		Request ps=new Request(); 
	ps.setRequestid("19");
	ps.setAssetid("2");
	ps.setAssetname("mouse");
	ps.setDesignation("Employee");
	ps.setRequestdate("14/11/2017");
	ps.setStatus(3);
	ps.setEid1("E102");
	ps.setEid2(null);
	ps.setMid1("M102");
	ps.setMid2(null);
	ps.setSid("S101");
	
	when(ed.approveMReq(ps)).thenReturn(0);
    Assert.assertEquals(ed.approveMReq(ps), 0);
	}
	
	@Test
	public void rejectMRequest()
	{
		Request ps=new Request(); 
	ps.setRequestid("19");
	ps.setAssetid("2");
	ps.setAssetname("mouse");
	ps.setDesignation("Employee");
	ps.setRequestdate("14/11/2017");
	ps.setStatus(3);
	ps.setEid1("E102");
	ps.setEid2(null);
	ps.setMid1("M102");
	ps.setMid2(null);
	ps.setSid("S101");
	
	when(ed.rejectMRequest(ps)).thenReturn(0);
    Assert.assertEquals(ed.rejectMRequest(ps), 0);
	}
	
	@Test
	public void checkdata()
	{
		when(ed.checkdata("E102")).thenReturn(0);
	    Assert.assertEquals(ed.checkdata("E102"), 0);
	}
	
	@Test
	public void checkemail()
	{
		when(ed.checkemail("deepabarfa30595@gmail.com")).thenReturn(0);
	    Assert.assertEquals(ed.checkemail("deepabarfa30595@gmail.com"), 0);
	}
	
	@Test
	public void checkmobile()
	{
		when(ed.checkmobile(909090900)).thenReturn(0);
	    Assert.assertEquals(ed.checkmobile(909090090), 0);
	}
	
	@Test
	public void checkmid()
	{
		when(ed.checkmid("M102")).thenReturn(0);
	    Assert.assertEquals(ed.checkmid("M102"), 0);
	}
	
	@Test
	public void checksid()
	{
		when(ed.checksid("S101")).thenReturn(0);
	    Assert.assertEquals(ed.checksid("S101"), 0);
	}
	
	@Test
	public void viewallotedAsset()
	{
		when(rd.viewallotedAsset() ).thenReturn(new ArrayList<AllotedAsset>());
	    Assert.assertEquals(rd.viewallotedAsset(), new ArrayList<AllotedAsset>());
	}
	
	@Test
	public void insertTransferReq()
	{
		UserAssetRequest r=new UserAssetRequest();
		
		r.setRequestid(21);
		r.setAssetid("5");
		r.setAssetname("Pen Drive");
		r.setFromemp("M102");
		r.setToemp("E103");
		r.setMid1("M103");
		r.setRequestdate("23/11/2017");
		r.setStatus(4);
		
		when(rd.insertTransferReq(r)).thenReturn(0);
	    Assert.assertEquals(rd.insertTransferReq(r), 0);
	}
	
	@Test
	public void viewAssetTransfer()
	{
		when(rd.viewAssetTransfer("M102") ).thenReturn(new ArrayList<UserAssetRequest>());
	    Assert.assertEquals(rd.viewAssetTransfer("M102"), new ArrayList<UserAssetRequest>());
	}
	
	@Test
	public void viewRequestFromOther()
	{
		when(rd.viewRequestFromOther("E103") ).thenReturn(new ArrayList<UserAssetRequest>());
	    Assert.assertEquals(rd.viewRequestFromOther("E103"), new ArrayList<UserAssetRequest>());
	}
	
	@Test
	public void approveEmpTransferReq()
	{
		UserAssetRequest r=new UserAssetRequest();
		
		r.setRequestid(21);
		r.setAssetid("5");
		r.setAssetname("Pen Drive");
		r.setFromemp("M102");
		r.setToemp("E103");
		r.setMid1("M103");
		r.setRequestdate("23/11/2017");
		r.setStatus(4);
		
		when(ed.approveEmpTransferReq(r)).thenReturn(0);
	    Assert.assertEquals(ed.approveEmpTransferReq(r), 0);
	}
	
	@Test
	public void rejectEmpTransferReq()
	{
		UserAssetRequest r=new UserAssetRequest();
		
		r.setRequestid(21);
		r.setAssetid("5");
		r.setAssetname("Pen Drive");
		r.setFromemp("M102");
		r.setToemp("E103");
		r.setMid1("M103");
		r.setRequestdate("23/11/2017");
		r.setStatus(4);
		
		when(ed.rejectEmpTransferReq(r)).thenReturn(0);
	    Assert.assertEquals(ed.rejectEmpTransferReq(r), 0);
	}
	
	@Test
	public void alloteassetemployee()
	{
		when(ed.alloteassetemployee("M102") ).thenReturn(new ArrayList<AllotedAsset>());
	    Assert.assertEquals(ed.alloteassetemployee("M102"), new ArrayList<AllotedAsset>());
	}
	
	@Test
	public void viewmallotedasset()
	{
		when(ed.viewmallotedasset() ).thenReturn(new ArrayList<AllotedAsset>());
	    Assert.assertEquals(ed.viewmallotedasset(), new ArrayList<AllotedAsset>());
	}
	
	@Test
	public void viewtransferrequestfromemployee()
	{
		when(ed.viewtransferrequestfromemployee("M102") ).thenReturn(new ArrayList<UserAssetRequest>());
	    Assert.assertEquals(ed.viewtransferrequestfromemployee("M102"), new ArrayList<UserAssetRequest>());
	}
	
	@Test
	public void MinsertTransferReq()
	{
UserAssetRequest r=new UserAssetRequest();
		
		r.setRequestid(21);
		r.setAssetid("5");
		r.setAssetname("Pen Drive");
		r.setFromemp("M102");
		r.setToemp("E103");
		r.setMid1("M103");
		r.setRequestdate("23/11/2017");
		r.setStatus(4);
		
		when(rd.MinsertTransferReq(r)).thenReturn(0);
	    Assert.assertEquals(rd.MinsertTransferReq(r), 0);
	}
	
	@Test
	public void approveAssetTransferReqFromEmployee()
	{
		when(ed.approveAssetTransferReqFromEmployee("M102",21,"5")).thenReturn(0);
	    Assert.assertEquals(ed.approveAssetTransferReqFromEmployee("M102",21,"5"), 0);
	}
	
	@Test
	public void rejectAssetTransferReqFromEmployee()
	{
		when(ed.rejectAssetTransferReqFromEmployee("M102",21)).thenReturn(0);
	    Assert.assertEquals(ed.rejectAssetTransferReqFromEmployee("M102",21), 0);
	}
	
	
}
