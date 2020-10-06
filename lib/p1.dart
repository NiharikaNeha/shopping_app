import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45),
                    child: Container(
                        constraints: BoxConstraints.expand(height: 150),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: NetworkImage(
                                    "http://www.freevectors.com/wp-content/uploads/2016/01/Excited-Cartoon-Girl-Face-Expression-565x480.jpg"))))),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "Hi, Annie",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.amber),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Center(
                                          child: Text(
                                            '120m',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5, top: 5),
                                        child: Text(
                                          'Total Time',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        )),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.lightBlueAccent),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Center(
                                          child: Text(
                                            '10',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5, top: 5),
                                        child: Text(
                                          'Daily Trainings',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        )),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.lightGreenAccent),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Center(
                                          child: Text(
                                            '12m',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5, top: 5),
                                        child: Text(
                                          'Average Time',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey[300]),
                                    top: BorderSide(color: Colors.grey[300]))),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Profile Information',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_right,
                                      size: 60.0,
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            )),
                      ],
                    )),
                Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[300]),
                            )),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Notifications',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 30),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_right,
                                  size: 60.0,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[300]),
                            )),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Settings',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 220,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 30),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_right,
                                  size: 60.0,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[300]),
                            )),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Follow & Share',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 160,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 30),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_right,
                                  size: 60.0,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[300]),
                            )),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Help & Support',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 160,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 30),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_right,
                                  size: 60.0,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.lightBlueAccent),
                  child: Center(
                    child: Text(
                      'Sign Out',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
