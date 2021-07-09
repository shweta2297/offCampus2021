package com.example.demo.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Customer;

import java.util.*;
@Controller
@Repository
public class CustomerRepository {

	@Autowired
	private JdbcTemplate template;
	
	public int addCustomer(Customer entity) {
		SimpleJdbcInsert insert=new SimpleJdbcInsert(template);
		insert.withTableName("cudtomer").usingColumns("id","customer");
		BeanPropertySqlParameterSource sql= new BeanPropertySqlParameterSource(insert);
		
		
		return insert.execute(sql);
		
	}
	
	public List<Customer> getAllCustomers(){
		String sql= "select * from customer";
		
List<Customer> custList= template.query(sql,BeanPropertyRowMapper.newInstance(Customer.class));
		return  custList ;
		
		
	}
}
