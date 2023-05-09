import 'package:flutter/material.dart';
import '../enums/device_type_new.dart';

DeviceTypeNew getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  if(orientation == Orientation.landscape){
    width = mediaQueryData.size.height;
  }else{
    width = mediaQueryData.size.width;
  }
  if(width >= 950){
    return DeviceTypeNew.Desktop;
  }
  if(width >= 600){
    return DeviceTypeNew.Tablet;
  }
  return DeviceTypeNew.Mobile;
}