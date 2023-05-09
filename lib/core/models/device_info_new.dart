import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/enums/device_type_new.dart';

class DeviceInfoNew {
  final Orientation orientation;
  final DeviceTypeNew deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHight;

  DeviceInfoNew (
    {
    required this.orientation,
    required this.deviceType,
    required this.screenWidth,
    required this.screenHeight,
    required this.localWidth,
    required this.localHight
    });
  }