import 'package:flutter/material.dart';
import 'package:letstravel/src/presentation/util/colors.dart';
import 'package:letstravel/src/presentation/util/constants.dart';
import 'package:letstravel/src/presentation/util/images_path.dart';

import 'home.dart';

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
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                height: 325,
                width: 325,
                padding: EdgeInsets.all(24),
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "User Name",
                          labelStyle: TextStyle(
                            color: TEXT_COLOR,
                            fontFamily: CAIRO_REG,
                            fontSize: 16,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        onSaved: (value) {},
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "User Email",
                          labelStyle: TextStyle(
                            color: TEXT_COLOR,
                            fontFamily: CAIRO_REG,
                            fontSize: 16,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        onSaved: (value) {},
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: TEXT_COLOR,
                            fontFamily: CAIRO_REG,
                            fontSize: 16,
                          ),
                        ),
                        obscureText: true,
                        onSaved: (value) {},
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(
                            color: TEXT_COLOR,
                            fontFamily: CAIRO_REG,
                            fontSize: 16,
                          ),
                        ),
                        obscureText: true,
                        onSaved: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 460,
            left: 100,
            child: Container(
              height: 48,
              width: 140,
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
                  "Sign Up",
                  style: TextStyle(fontFamily: CAIRO_SEMI_BOLD, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: ACCENT_COLOR,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
