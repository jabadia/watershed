#!/bin/bash

#http://54.217.224.125/arcgis/services/GP_Demo/Watershed/GPServer/WPSServer

#curl  "http://54.217.224.125/arcgis/services/GP_Demo/Watershed/GPServer/WPSServer?request=GetCapabilities&service=WPS" -o "capabilities.xml"
#curl  "http://54.217.224.125/arcgis/services/GP_Demo/Watershed/GPServer/WPSServer?request=DescribeProcess&service=WPS&version=1.0.0&Identifier=Model" -o "processDescription.xml"
#curl  -d @request.xml 

curl  -d @request.xml "http://54.217.224.125/arcgis/services/GP_Demo/Watershed/GPServer/WPSServer?request=Execute&service=WPS&version=1.0.0&Identifier=Model" -o "executionResponse.xml"

