package com.buaa.hr.entity;

import java.util.Date;

public class Train {
	// 1 Id trainid NUMBER √ √
	// 2 类别 trainclass NUMBER
	// 3 性质 trainkind VERCHAR2(20)
	// 4 培训编号 trainnum VERCHAR2(20)
	// 5 培训名称 trainname VERCHAR2(30)
	// 6 开始时间 startdate DATE
	// 7 结束时间 enddate DATE
	// 8 费用 traincost VERCHAR2(20)
	// 9 地点 trainplace VERCHAR2(30)
	
	private int trainId;
	private String trainClass;//培训类别
	private String trainKind;//培训性质
	private String trainNum;//培训编号
	private String trainName;//培训名称
	private Date startDate;
	private Date endDate;
	private String trainCost;//花费费用
	private String trainPlace;//培训地点

	public int getTrainId() {
		return trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}

	public String getTrainClass() {
		return trainClass;
	}

	public void setTrainClass(String trainClass) {
		this.trainClass = trainClass;
	}

	public String getTrainKind() {
		return trainKind;
	}

	public void setTrainKind(String trainKind) {
		this.trainKind = trainKind;
	}

	public String getTrainNum() {
		return trainNum;
	}

	public void setTrainNum(String trainNum) {
		this.trainNum = trainNum;
	}

	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getTrainCost() {
		return trainCost;
	}

	public void setTrainCost(String trainCost) {
		this.trainCost = trainCost;
	}

	public String getTrainPlace() {
		return trainPlace;
	}

	public void setTrainPlace(String trainPlace) {
		this.trainPlace = trainPlace;
	}

	

}
