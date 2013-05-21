package com.alfresco;

import java.io.IOException;
import java.io.StringReader;

import javax.ws.rs.core.MediaType;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

public class Test {

	// geef hier je gegevens
	static String url = "http://alfrescocommunity-42337-ndiarmand.cloudwaysapps.com";
	static String username = "admin";
	static String password = "bowmnhgdx4";
	static String ticket = "";

	public Test(){
		
		try {
			ticket = this.getTicket();
		} catch (ParserConfigurationException | SAXException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public String getTicket() throws ParserConfigurationException, SAXException, IOException {
		String resource_url = url+"/alfresco/service/api/login?u="+username+"&pw="+password;
		Client c = Client.create();
		WebResource r = c.resource(resource_url);
		r.accept(MediaType.APPLICATION_JSON_TYPE,MediaType.APPLICATION_XML_TYPE);
		r.header("X-FOO", "BAR");
		String xml = r.get(String.class);
		
		DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	    InputSource is = new InputSource();
	    is.setCharacterStream(new StringReader(xml));
	    Document doc = db.parse(is);
	    String ticket = doc.getElementsByTagName("ticket").item(0).getTextContent();
	    
		return ticket;
   
	}

	public String getUsers() {

		return null;
	}

}