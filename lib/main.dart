import 'package:flutter/material.dart';
import 'package:whatsappclone/responsive%20layout/responsive_layout.dart';
import 'package:whatsappclone/screens/mobilescreen_layout.dart';
import 'package:whatsappclone/screens/webscreen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(),
      title: 'Whatsapp Clone',
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: ResponsiveLayout(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout()),
      ),
    );
  }
}
