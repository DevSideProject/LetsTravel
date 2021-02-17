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
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            contents[i].title,
                            style: TextStyle(
                              fontSize: 20,
                              color: PRIMARY_COLOR,
                              fontFamily: 'CairoBold',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            contents[i].discription,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1,
                              fontFamily: 'CairoRegular',
                              color: TEXT_COLOR,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Image(
                            image: AssetImage(contents[i].image),
                            height: 250,
                            width: 250,
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
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
            alignment: Alignment.bottomRight,
            height: 60,
            width: 100,
            margin: EdgeInsets.all(10),
            child: TextButton(
              child: Text("Skip"),
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

                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(8),
                // ),

              ),

              // style: ButtonStyle(
              //   textStyle: TextStyle(
              //     color: PRIMARY_COLOR,
              //     textColor: Colors.white,
              //   ),
              // ),
              //

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
        borderRadius: BorderRadius.circular(20),
        color: PRIMARY_COLOR,
      ),
    );
  }
}
