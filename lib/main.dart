import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(builder:(context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          width: screenWidth/2,
          height: screenHeight/2,
          child: Center(
            child: LayoutBuilder(
              builder: (context,constraint) {
                double localHeight = constraint.maxHeight;
                double localWidth = constraint.maxWidth;

                print('height =$screenHeight');
                print('localHight =$localHeight');

                print('width =$screenWidth');
                print('localWidth $localWidth');
                return Container(
                  color: Colors.red,
                  width: localWidth/2,
                  height: localHeight/2,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

