import 'package:flutter/material.dart';
import 'package:letstravel/src/presentation/util/colors.dart';
import 'package:letstravel/src/presentation/util/constants.dart';
import 'package:letstravel/src/presentation/util/images_path.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ROMA_City_IMAGE),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 32),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontFamily: CAIRO_BOLD,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: ACCENT_COLOR,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
