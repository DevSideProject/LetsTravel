import 'package:flutter/material.dart';
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
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Let's Travel",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontFamily: 'CairoRegular'),
        ),
      ),
      body: Center(
          child: Text(
        "Let's Travel Home Page",
        style: TextStyle(
            color: PRIMARY_COLOR, fontSize: 18, fontFamily: 'CairoBold'),
      )),
    );
  }
}
