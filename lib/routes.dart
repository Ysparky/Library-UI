import 'package:booking_app/pages/hello_page.dart';
import 'package:booking_app/pages/meet_page.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  HelloPage.routeName: (context) => HelloPage(),
  MeetPage.routeName: (context) => MeetPage()
};
