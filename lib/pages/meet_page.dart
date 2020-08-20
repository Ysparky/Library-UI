import 'package:booking_app/components/custom_text.dart';
import 'package:flutter/material.dart';

class MeetPage extends StatelessWidget {
  const MeetPage();
  final String descriptionText =
      'Borrow and read free ebooks, audiobooks and magazine from your library using your phone or tablet. It\'s easy to get.';

  static String routeName = '/meet';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _HeaderBar(),
              SizedBox(height: size.height * 0.08),
              Image(
                image: AssetImage('assets/images/img_book2-removebg.png'),
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                'Meet',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              Text(
                'Libraryon',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              _DescriptionText(size: size, descriptionText: descriptionText),
              SizedBox(height: size.height * 0.03),
              _BottomRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomRow extends StatelessWidget {
  const _BottomRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Borrow and read from ebooks',
          style: TextStyle(
            color: Color(0xffF16D7C),
            fontSize: 15.5,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
          ),
        ),
        Spacer(),
        Ink(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 34.0,
            padding: EdgeInsets.all(10.0),
            icon: Icon(Icons.navigate_next),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class _DescriptionText extends StatelessWidget {
  const _DescriptionText({
    Key key,
    @required this.size,
    @required this.descriptionText,
  }) : super(key: key);

  final Size size;
  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.2),
      child: Text(
        descriptionText,
        style: TextStyle(
          fontSize: 16.0,
          height: 1.8,
        ),
      ),
    );
  }
}

class _HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
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
        Spacer(),
        Text(
          'skip'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
