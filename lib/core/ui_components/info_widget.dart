import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/models/device_info_new.dart';
import 'package:flutter_responsive/core/functions/get_device_type.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfoNew deviceInfo) builder;

  const InfoWidget({Key? key, required this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context , constrains) {
          var mediaQueryData = MediaQuery.of(context);
          var deviceInfoNew = DeviceInfoNew(
            orientation: mediaQueryData.orientation,
            deviceType: getDeviceType(mediaQueryData),
            screenWidth: mediaQueryData.size.width,
            screenHeight: mediaQueryData.size.height,
            localHight: constrains.maxHeight,
            localWidth: constrains.maxWidth,
          );
          return builder(context, deviceInfoNew);
     },
    );
  }
}
