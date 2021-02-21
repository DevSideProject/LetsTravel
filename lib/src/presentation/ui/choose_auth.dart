import 'package:flutter/material.dart';
import 'package:letstravel/src/presentation/util/colors.dart';
import 'package:letstravel/src/presentation/util/images_path.dart';

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
          child: Expanded(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
