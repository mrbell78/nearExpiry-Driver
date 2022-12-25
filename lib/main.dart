import 'package:flutter/material.dart';
import 'package:near_expiry_driver/profile/edit-profile.dart';
import 'package:near_expiry_driver/profile/profile-controller.dart';
import 'package:near_expiry_driver/registration/login-controller.dart';
import 'package:near_expiry_driver/splash-screen/splash-screen.dart';
import 'package:provider/provider.dart';

import 'Home/Home.dart';
import 'locator/locator.dart';
import 'order/order.dart';

Future<void> main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProfileController()),
        ChangeNotifierProvider(create: (context) => CustommerLoginController()),
      ],
      child: MaterialApp(

        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          fontFamily: "Poppins"
        ),
        home:  SpashScreen()
      ),
    );
  }
}

