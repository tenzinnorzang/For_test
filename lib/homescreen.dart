import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, left: 15),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Image.asset('assets/images/alarm.png'),
                        trailing: Switch.adaptive(value: isSwitched,
                          activeColor: Colors.greenAccent,
                          onChanged: (value){
                            print(value);
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 18, bottom: 10, top: 10),
                          child: Text(
                            "Alarm",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                height: 1.18),
                          )
                      ),

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