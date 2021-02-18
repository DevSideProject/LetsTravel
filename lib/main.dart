import 'package:flutter/material.dart';
import 'package:letstravel/src/presentation/ui/onbording.dart';
import 'package:letstravel/src/presentation/util/colors.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) => Scaffold(
        body: Center(
          child: Text(
            "Something went wrong !",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: PRIMARY_COLOR,
                fontSize: 18,
                fontFamily: 'CairoRegular'),
          ),
        ),
      );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Onbording());
  }
}
