import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:screenprojet/colum_custom.dart';
import 'package:screenprojet/text_custom.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              home: LayoutBuilder(builder: (context, constraints) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: const Color.fromARGB(255, 132, 49, 196),
                    title: constraints.maxWidth > 700
                        ? MyText(name: 'TABLET')
                        : MyText(name: 'MOBILE'),
                  ),
                  body: constraints.maxWidth > 700
                      ? Container(
                          padding: EdgeInsets.only(
                                  top: 50.0,
                                  left: 80.0,
                                  right: 80.0,
                                  bottom: 50.0)
                              .r,
                          height: double.infinity,
                          width: double.infinity,
                          color: const Color.fromARGB(255, 234, 206, 251),
                          child: Row(children: [
                            Expanded(
                              child: ColumCustom(
                                number1: 110.w,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 60,
                            ),
                            Container(
                              width: 250,
                              color: const Color.fromARGB(255, 174, 143, 247),
                            )
                          ]),
                        )
                      : Container(
                          padding: EdgeInsets.only(
                                  top: 20.0, left: 20.0, right: 20.0)
                              .r,
                          height: double.infinity,
                          width: double.infinity,
                          color: const Color.fromARGB(255, 234, 206, 251),
                          child: ColumCustom(
                            number1: 195.0.h,
                          ),
                        ),
                );
              }));
        });
  }
}
