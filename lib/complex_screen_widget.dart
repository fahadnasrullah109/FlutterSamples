import 'package:flutter/material.dart';

class ComplexScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Image.asset(
                  'assets/image_nature_top.jpeg',
                  fit: BoxFit.fitHeight,
                )),
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      // Top Row
                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Hilway icon',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 23.0)),
                                    Text('Kasur, Pakistan',
                                        style: TextStyle(color: Colors.grey))
                                  ])),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.red),
                              Text('41')
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      // Options Row
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.call,
                                  color: Colors.blue,
                                ),
                                Text('CALL',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ))
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.edit_location,
                                  color: Colors.blue,
                                ),
                                Text('ROUTE',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ))
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.sync,
                                  color: Colors.blue,
                                ),
                                Text('SHARE',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      // Bottom Text
                      SizedBox(height: 20),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          style: TextStyle(
                              fontFamily: "fonts/ComicNeue",
                              fontSize: 18,
                              fontStyle: FontStyle.normal))
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}