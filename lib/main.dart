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
                fontSize: 18),
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
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: "Let's Travel"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Text(
        "Let's Travel Home Page",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: PRIMARY_COLOR, fontSize: 18),
      )),
    );
  }
}
