import 'dart:ui';
import 'package:flutter/material.dart';
import 'custombar.dart';
import 'package:flutter/cupertino.dart';

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int index = 0;
  PageController pageController = PageController(initialPage: 0);

  void _pageincrement() {
    pageController.animateToPage(++index,
        duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              allowImplicitScrolling: false,
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  index = value;
                  pagenumber = value;
                });
              },
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
                        color: Colors.orange[300],
                        elevation: 8,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        child: Text(
                          "NEXT",
                          textScaleFactor: 1.2,
                        ),
                        onPressed: () {
                          _pageincrement();
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      )
                    ],
                  ),
                ),
                Container(
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        child: Text(
                          "NEXT",
                          textScaleFactor: 1.2,
                        ),
                        color: Colors.orange[300],
                        onPressed: () {
                          _pageincrement();
                        },
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        child: Text(
                          "NEXT",
                          textScaleFactor: 1.2,
                        ),
                        color: Colors.orange[300],
                        onPressed: () {
                          _pageincrement();
                        },
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        child: Text(
                          "NEXT",
                          textScaleFactor: 1.2,
                        ),
                        color: Colors.orange[300],
                        onPressed: () {
                          _pageincrement();
                        },
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        child: Text(
                          "Complete",
                          textScaleFactor: 1.2,
                        ),
                        color: Colors.orange[300],
                        onPressed: () {
                          setState(() {
                            pagenumber = 5;
                          });
                        },
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
    );
  }
}
