import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:letstravel/src/business_logic/models/onbording_content.dart';
import 'package:letstravel/src/presentation/util/colors.dart';

import 'home.dart';

class Onbording extends StatefulWidget {
  @override
  _OnBordingState createState() => _OnBordingState();
}

class _OnBordingState extends State<Onbording> {
  int currentIndex = 0;
  PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            //Page View Scrolling
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              //Page Content
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contents[i].title,
                            style: TextStyle(
                              fontSize: 24,
                              color: PRIMARY_COLOR,
                              fontFamily: 'CairoBold',
                            ),
                          ),
                          Text(
                            contents[i].discription,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.3,
                              fontFamily: 'CairoRegular',
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Image(
                      alignment: Alignment.center,
                      image: AssetImage(contents[i].image),
                    )),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: double.infinity,
            margin: EdgeInsets.all(16),
            child: OutlinedButton(
              child: Text(
                "Skip",
                style: TextStyle(fontFamily: 'CairoRegular'),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Home(),
                  ),
                );
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              style: OutlinedButton.styleFrom(
                primary: PRIMARY_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: PRIMARY_COLOR,
      ),
    );
  }
}
