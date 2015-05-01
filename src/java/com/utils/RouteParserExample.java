package com.utils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.net.URL;
//import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;


import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class RouteParserExample {
	
	

    public static int plotRout(String lat, String lon) {

        try {

            String urladdr = "http://maps.googleapis.com/maps/api/geocode/xml?latlng=" + lat + "," + lon + "&sensor=true";///////////////////////////////=location
            System.out.println(urladdr);


            URL oracle = new URL(urladdr);
            BufferedReader in = new BufferedReader(
                    new InputStreamReader(oracle.openStream()));

            String inputLine, st = "";
            while ((inputLine = in.readLine()) != null) {
                st = st + inputLine;
            }
            in.close();


            st = st.trim();
            String path = new java.io.File(".").getCanonicalPath();
            File fil = new File("./loc.xml");
            System.out.println("fpath:" + fil.getAbsolutePath());
            FileOutputStream f = new FileOutputStream(fil);
            f.write(st.getBytes());
        } catch (Exception e) {
        }

        return 0;
    }

    public static String parse() {
        String s = "";
        try {
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = dbf.newDocumentBuilder();
            String path = new java.io.File(".").getCanonicalPath();
            File file = new File("./loc.xml"); //refering rajagiri.xml file (in project folder)
            System.out.println("new pa:" + file.getAbsolutePath());
            Document doc = db.parse(file); //parsing the xml file(inbuilt methord)
            doc.getDocumentElement().normalize();
            NodeList nodeLst = doc.getElementsByTagName("GeocodeResponse"); //Listing all nodes including root tag(college)
            Node fstNode = nodeLst.item(0); //taking 0th item from nodelist(college)
            Element secndelmnt = (Element) fstNode; //casting that node to element
            //  System.out.println("root element:" + secndelmnt.getNodeName()); //printing the element name
            NodeList nds = secndelmnt.getChildNodes(); //Listing child nodes of college

            Node fstNode1 = nds.item(3);//node 9 is course tag

            Element secndelmnt1 = (Element) fstNode1;//converting to element
            System.out.println("sec:" + secndelmnt1);
            NodeList nds1 = secndelmnt1.getChildNodes();//listing the node of course

            s = getNodeValue("formatted_address", nds1);
            System.out.println("sec:" + s);
        } catch (Exception ex) {
            Logger.getLogger(RouteParserExample.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    protected static String getNodeValue(String tagName, NodeList nodes) {
        for (int x = 0; x < nodes.getLength(); x++) {
            Node node = nodes.item(x);
            if (node.getNodeName().equalsIgnoreCase(tagName)) {
                NodeList childNodes = node.getChildNodes();
                for (int y = 0; y < childNodes.getLength(); y++) {
                    Node data = childNodes.item(y);
                    if (data.getNodeType() == Node.TEXT_NODE) {
                        return data.getNodeValue();
                    }
                }
            }

        }
        return "";
    }

    public static void main(String[] args) {
        plotRout("10.882646", "76.306651");
        String place = parse();
        String[] pl = place.split(" ");
        System.out.println("place:" + place);
    }
}
