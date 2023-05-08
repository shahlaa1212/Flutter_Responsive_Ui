import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class DeviceInfo{
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHight;

  DeviceInfo({required this.orientation, required this.deviceType, required this.screenWidth, required this.screenHeight, required this.localWidth, required this.localHight});
  }