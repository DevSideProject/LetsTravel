import 'package:flutter/material.dart';
import 'package:letstravel/src/presentation/util/colors.dart';
import 'package:letstravel/src/presentation/util/constants.dart';
import 'package:letstravel/src/presentation/util/images_path.dart';

import 'home.dart';

class ChooseAuthType extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 56),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: KPRIMARY_COLOR,
                ),
                child: Text(
                  "Let's Travel",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'CairoBold',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 80),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 56,
                    margin: EdgeInsets.all(32),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Home(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: CAIRO_SEMI_BOLD,
                          fontSize: 20
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: ACCENT_COLOR,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 56,
                    margin: EdgeInsets.only(left: 32,right: 32,top: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Home(),
                          ),
                        );
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontFamily: CAIRO_SEMI_BOLD,
                            fontSize: 20
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: ACCENT_COLOR,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                    ),
                  )

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
