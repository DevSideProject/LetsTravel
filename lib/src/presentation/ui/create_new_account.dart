import 'package:flutter/material.dart';
import 'package:letstravel/src/presentation/util/colors.dart';
import 'package:letstravel/src/presentation/util/constants.dart';
import 'package:letstravel/src/presentation/util/images_path.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ROMA_City_IMAGE),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Create Account",
                style: TextStyle(
                  fontFamily: CAIRO_BOLD,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: ACCENT_COLOR,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ), // body: Center(
      //   child: Container(
      //     constraints: BoxConstraints.expand(),
      //     decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage(ROMA_City_IMAGE),
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     child: Column(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(top: 32),
      //           child: Text(
      //             "Create Account",
      //             style: TextStyle(
      //               fontFamily: CAIRO_BOLD,
      //               fontSize: 28,
      //               fontWeight: FontWeight.bold,
      //               color: ACCENT_COLOR,
      //             ),
      //
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
