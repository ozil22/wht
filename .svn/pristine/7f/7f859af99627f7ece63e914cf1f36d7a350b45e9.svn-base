package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.SystemAccountFlow;
import com.huashidai.weihuotong.query.SystemAccountFlowQuery;

public interface SystemAccountFlowMapper {

	void save(SystemAccountFlow systemAccountFlow);

	SystemAccountFlow get(Long id);


	Long queryTotal(SystemAccountFlowQuery qu);
	/**
	 * 高级查询（包含关联对象Account）
	 * @param qu
	 * @return
	 */
	List<SystemAccountFlow> query(SystemAccountFlowQuery qu);
	/**
	 * 高级查询(只查询发生金额和时间)
	 * @param qu
	 * @return
	 */
	List<SystemAccountFlow> queryOfCharts(SystemAccountFlowQuery qu);

}