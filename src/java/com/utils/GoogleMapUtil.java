package com.utils;


import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author MIS
 */
public class GoogleMapUtil {

    public static String getPlaceName(String lat, String log) {
        String latitude = lat;
        String longitude = log;
        String placeName = "";
        //System.out.println("http://maps.google.com/maps/geo?q=" + latitude + "," + longitude + "&output=csv");
        String link = "http://maps.google.com/maps/geo?q=" + latitude + "," + longitude + "&output=csv";
//        System.out.println(link);
        try {
            URL url = new URL(link);
            URLConnection urlc = url.openConnection();
            InputStream ip = urlc.getInputStream();
            String data = "";
            int d = 0;
            while ((d = ip.read()) != -1) {
                data = data + (char) d;
            }
            //System.out.println("Place data from google server: "+data);
            placeName = extractPlaceName(data.getBytes());

        } catch (Exception e) {
            e.printStackTrace();
        }
        return placeName;

    }

    public static String[] getPlaceCoordinate(String placeName) {

        String[] position = null;
        //System.out.println("http://maps.google.com/maps/geo?q=" + latitude + "," + longitude + "&output=csv");
        String link = "http://maps.google.com/maps/geo?q=" + placeName + "&output=csv";
//        System.out.println(link);
        try {
            URL url = new URL(link);

            URLConnection urlc = url.openConnection();
            InputStream ip = urlc.getInputStream();
            String data = "";
            int d = 0;
            while ((d = ip.read()) != -1) {
                data = data + (char) d;
            }
            //System.out.println("Place data from google server: "+data);
            position = extractCoordinate(data.getBytes());

        } catch (Exception e) {
            e.printStackTrace();
        }
        return position;

    }

    private static String extractPlaceName(byte[] bt) {
        String str = new String(bt).trim();
//        System.out.println("Placeeeeeeeeeeeeeeeee = "+str);
        int fi = str.indexOf("\"");
        //System.out.println(fi);
        int li = str.lastIndexOf("\"");
        String place = str.substring(fi + 1, li);
        //System.out.println("Processed Placeeeeeeeeeee = "+place);
        return place;

    }

    public static void main(String[] args) {
    //    System.out.println("Place = " + GoogleMapUtil.getPlaceName("9.9392480", "76.2596250"));
     //   System.out.println("Place = " + GoogleMapUtil.getPlaceName("10.005005314152001", "76.312143370282"));
        String[] position = GoogleMapUtil.getPlaceCoordinate("Cochin");
        System.out.println("Position [lat]= " + position[0]);
        System.out.println("Position [long]= " + position[1]);
    }

    private static String[] extractCoordinate(byte[] data) {
        String[] position = null;
        String str = new String(data).trim();
        String[] temp = str.split(",");
        position = new String[2];
        position[0] = temp[2].trim();
        position[1] = temp[3].trim();
        return position;
    }
}
