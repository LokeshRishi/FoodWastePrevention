package com.albany.edu.fwp.dao;

import java.util.List;

import com.albany.edu.fwp.model.ManagerInfo;
import com.albany.edu.fwp.model.QuadInfo;

public interface ManagerInfoDAO {
	void insertManagerInfo(String managerID, String managerName, String managerPhoneNumber, String managerEmailID, QuadInfo managerQuad);
	List<ManagerInfo> searchManagerInfo(String managerID, String managerName, QuadInfo Quad, String managerEmailID);
}