import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:pageSlider/custombar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: CustomProgressBar(),
              ),
              Expanded(
                child: PageView(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Page 1",
                            textAlign: TextAlign.center,
                            textScaleFactor: 2,
                          ),
                          Padding(padding: EdgeInsets.all(100)),
                          RaisedButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            child: Text("NEXT"),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.orange,
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Page 2",
                            textAlign: TextAlign.center,
                            textScaleFactor: 2,
                          ),
                          Padding(padding: EdgeInsets.all(100)),
                          RaisedButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            child: Text("NEXT"),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.cyan,
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Page 3",
                            textAlign: TextAlign.center,
                            textScaleFactor: 2,
                          ),
                          Padding(padding: EdgeInsets.all(100)),
                          RaisedButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            child: Text("NEXT"),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Page 4",
                            textAlign: TextAlign.center,
                            textScaleFactor: 2,
                          ),
                          Padding(padding: EdgeInsets.all(100)),
                          RaisedButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            child: Text("NEXT"),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Page 5",
                            textAlign: TextAlign.center,
                            textScaleFactor: 2,
                          ),
                          Padding(padding: EdgeInsets.all(100)),
                          RaisedButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            child: Text("NEXT"),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
