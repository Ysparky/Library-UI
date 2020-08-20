import 'package:booking_app/pages/hello_page.dart';
import 'package:booking_app/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: HelloPage(),
      initialRoute: HelloPage.routeName,
      routes: routes,
    );
  }
}
