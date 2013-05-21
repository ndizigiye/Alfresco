package com.alfresco;

import javax.ws.rs.core.MediaType;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

public class Test {

	// geef hier je gegevens
	static String url = "http://alfrescocommunity-42337-ndiarmand.cloudwaysapps.com";
	static String username = "admin";
	static String password = "bowmnhgdx4";
	static String ticket = "";

	public Test() {

	}

	public String getTicket() {
		String resource_url = url+"/alfresco/service/api/login?u="+username+"&pw="+password;
		Client c = Client.create();
		WebResource r = c.resource(resource_url);
		r.accept(MediaType.APPLICATION_JSON_TYPE,MediaType.APPLICATION_XML_TYPE);
		r.header("X-FOO", "BAR");
		String xml = r.get(String.class);
		
		return xml;
   
	}

	public String getUsers() {

	}

}