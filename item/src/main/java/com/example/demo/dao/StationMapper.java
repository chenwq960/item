package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Update;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Station;

public interface StationMapper {
    int deleteByPrimaryKey(Integer stationId);

    int insert(Station record);

    int insertSelective(Station record);

    Station selectByPrimaryKey(Integer stationId);

    int updateByPrimaryKeySelective(Station record);

    int updateByPrimaryKey(Station record);

	List<Station> selectList(SearchParam searchParam);

	@Update("update tb_station set is_delete = 1 where station_id = #{stationId}")
	void updateStationIsdelete(Integer stationId);
}