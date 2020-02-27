import 'package:flutter/material.dart';

// 自作モジュール
import 'calendar/calendar.dart';
import 'counter/counter.dart';
import 'config/config.dart';
import 'CustomFAB/cool.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学校行け',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("学校行け")),
      body: Container(
        child: Text("はよ実装しろカス"),
      ),
      floatingActionButton:
        FoldFloatButtonWrap(
          isExpanded: isExpanded,
          floatButton: FloatingActionButton(
            child: isExpanded ? Icon(Icons.close) : Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
            onPressed: (){
              setState(() {
                isExpanded ^= true;
              });
            },
          ),
          expandedWidget: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.calendar_today, size: 16,),
              backgroundColor: Colors.deepOrangeAccent,
              mini: true,
              onPressed: (){
                setState(() {
                  isExpanded ^= true;
                  CalendarRootView();
                });
              },
            ),
            SizedBox(height: 4,),
            FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.deepOrangeAccent,
              mini: true,
              onPressed: (){
                setState(() {
                  isExpanded ^= true;

                });
              },
            )
          ],
        ),
    );
  }
}
