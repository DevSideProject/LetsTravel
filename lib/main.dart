import 'package:flutter/material.dart';
import 'package:letstravel/src/presentation/ui/onbording.dart';
import 'package:letstravel/src/presentation/util/colors.dart';
import 'package:letstravel/src/presentation/util/images_path.dart';

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
              color: Colors.white, fontSize: 18, fontFamily: 'CairoRegular'),
        ),
      ),
      body: Onbording(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(INTRO_IMAGE),
                width: 300,
                height: 300,
              ),
              Text(
                "Let's Travel Home Page",
                style: TextStyle(
                    color: PRIMARY_COLOR,
                    fontSize: 18,
                    fontFamily: 'CairoBold'),
              ),
            ],
          )),
        ],
      ),
    ]);
  }
}
