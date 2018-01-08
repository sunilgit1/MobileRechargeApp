package com.app.mobileRecharge.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.app.mobileRecharge.DAO.MobileRechargeDAO;
import com.app.mobileRecharge.DTO.MobileRechargeDTO;
import com.app.mobileRecharge.DTO.RechargeDTO;

@Component
public class MobileRechargeService 
{

	@Autowired
	private MobileRechargeDAO dao;
	
	public void register(MobileRechargeDTO dto)
	{
		System.out.println("inside service");
		dao.register(dto);
		//return n;
	}
	
	public List<MobileRechargeDTO> load()
	{
		
		List<MobileRechargeDTO> mob=dao.load();
		return mob;
	}
	
	public MobileRechargeDTO viewProfile(MobileRechargeDTO dto)
	{
		return dao.viewProfile(dto);
	}
	
	public void delete(long mobNo)
	{
		dao.delete(mobNo);
	}
	
	public MobileRechargeDTO find(long mobNo)
	{
		System.out.println("inside deleteservice");
		
		return dao.find(mobNo);
	}
	
	public void update(MobileRechargeDTO dto)
	{
		System.out.println("inside update Service");
		dao.update(dto);
	}
	
	public MobileRechargeDTO search(MobileRechargeDTO dto)
	{
		return dao.search(dto);
	}
	
	public String login(MobileRechargeDTO dto)
	{
		System.out.println("inside loginService");
		return dao.login(dto);
	}
	
	public void recharge(RechargeDTO dto)
	{
		dao.recharge(dto);
	}
	
	
	
	
	
	
	
	
}
