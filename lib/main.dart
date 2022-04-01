import 'package:b2b_ordering_system/pages/landing_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'B2B Ordering System',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const LandingPage()),
        GetPage(name: '/login', page: () => const LoginPage()),
      ],
    );
  }
}
