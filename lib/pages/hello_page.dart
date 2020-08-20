import 'package:flutter/material.dart';

import 'package:booking_app/components/custom_text.dart';
import 'package:booking_app/pages/meet_page.dart';

class HelloPage extends StatelessWidget {
  static String routeName = '/hello';
  final String descriptionText =
      'This is the app that allows you tu discover and read ebooks and magazines.';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: size.height * 0.03),
          child: Column(
            children: [
              _HeaderBar(),
              SizedBox(height: size.height * 0.08),
              Image(
                image: AssetImage('assets/images/img_book1-removebg.png'),
              ),
              SizedBox(height: size.height * 0.015),
              CustomText(
                text: 'Hello',
                color: Colors.black,
                weight: FontWeight.bold,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  descriptionText,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              _GetStartedButtom(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class _GetStartedButtom extends StatelessWidget {
  const _GetStartedButtom({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: SizedBox(
        height: size.height * 0.075,
        width: double.infinity,
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, MeetPage.routeName);
          },
          color: Color(0xff2C2E36),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          textColor: Colors.white,
          child: Text(
            'Get Started',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class _HeaderBar extends StatelessWidget {
  const _HeaderBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: 'Library',
          color: Colors.black,
          weight: FontWeight.w500,
        ),
        CustomText(
          text: 'on',
          color: Colors.red,
          weight: FontWeight.w900,
        ),
      ],
    );
  }
}
