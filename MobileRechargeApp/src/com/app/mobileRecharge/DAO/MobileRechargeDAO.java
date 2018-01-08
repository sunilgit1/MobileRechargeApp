package com.app.mobileRecharge.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.app.mobileRecharge.DTO.MobileRechargeDTO;
import com.app.mobileRecharge.DTO.RechargeDTO;

@Component
public class MobileRechargeDAO
{

	@Autowired
	private SessionFactory sf;
	
	public void register(MobileRechargeDTO dto)
	{
		System.out.println("inside dao");
		//Session sess=null;
		if(dto.getFname()!=null)
		{
		
			Session sess=sf.openSession();
			sess.save(dto);
			sess.beginTransaction().commit();

		
		}
		else
		{
			System.out.println("null value");
		}
		
	}
	
	public List<MobileRechargeDTO> load()
	{
		Session sess=sf.openSession();
		Criteria crit=sess.createCriteria(MobileRechargeDTO.class);
		List<MobileRechargeDTO>mob=crit.list();
		return mob;
	}
	
	public MobileRechargeDTO viewProfile(MobileRechargeDTO dto)
	{
		try
		{
			System.out.println("inside ViewDAO");
			Session sess=sf.openSession();
			String query=" from MobileRechargeDTO where mobNo=:mno" ;
			Query hql=sess.createQuery(query);
			hql.setParameter("mno", dto.getMobNo());
			dto=(MobileRechargeDTO)hql.uniqueResult();
			System.out.println(dto);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
		
	}
	
	public void delete(long mobNo)
	{
		MobileRechargeDTO dto=new MobileRechargeDTO();
		dto.setMobNo(mobNo);
		Session sess=sf.openSession();
		sess.delete(dto);
		sess.beginTransaction().commit();
	}
	
	public MobileRechargeDTO find(long mobNo)
	{
		System.out.println("inside DAOedit");
		Session sess=sf.openSession();
		MobileRechargeDTO dto=sess.get(MobileRechargeDTO.class,mobNo);
		return dto;
	}
	
	public void update(MobileRechargeDTO dto)
	{
		System.out.println("inside update DAO");
		
		Session sess=sf.openSession();
		sess.update(dto);
		sess.beginTransaction().commit();
	}
	
	public MobileRechargeDTO search(MobileRechargeDTO dto)
	{
		
		try
		{
			Session sess=sf.openSession();
			String query="from MobileRechargeDTO where mobNo=:mno";
			Query hql=sess.createQuery(query);
			hql.setParameter("mno", dto.getMobNo());
			dto=(MobileRechargeDTO)hql.uniqueResult();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public String login(MobileRechargeDTO dto)
	{
		System.out.println("inside loginDAo");
		Session sess = null;
		String isAdmin = null;
		try {
			sess = sf.openSession();
			String query = "select isAdmin from MobileRechargeDTO where gmail=:gml and password=:psd";
			Query hql = sess.createQuery(query);
			hql.setParameter("gml", dto.getGmail());
			hql.setParameter("psd", dto.getPassword());
			isAdmin = (String) hql.uniqueResult();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			sess.close();
		}
		return isAdmin;

	}
	
	public void recharge(RechargeDTO dto)
	{
		System.out.println("inside dao");
		//Session sess=null;
		if(dto.getOperator()!=null)
		{
		
			Session sess=sf.openSession();
			sess.save(dto);
			sess.beginTransaction().commit();

		
		}
		else
		{
			System.out.println("null value");
		}
	}
	
	
	
	
	
	
	
	
	
	
}
