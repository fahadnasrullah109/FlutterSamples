import 'package:flutter/material.dart';

class UserProfileScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> _colors = [Colors.green[300], Colors.blue[50]];
    List<double> _stops = [0.0, 0.7];

    return Scaffold(
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: _colors,
                  stops: _stops,
                )
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Jonathan Patricson',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontFamily: "ComicNeue",
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 7.0),
                              Text('UI/UX Designer | Front End Developer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontFamily: "ComicNeue")),
                              SizedBox(height: 7.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  Text('Comillia, Bangladesh',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontFamily: "ComicNeue"))
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text('2332',
                                            style: TextStyle(
                                              color: Colors.blue,
                                                fontSize: 25.0,
                                                fontFamily: "ComicNeue",
                                            fontWeight: FontWeight.bold)),
                                        Text('Applications',
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                                fontSize: 16.0,
                                                fontFamily: "ComicNeue"))
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text('732',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 25.0,
                                                fontFamily: "ComicNeue",
                                                fontWeight: FontWeight.bold)),
                                        Text('Followers',
                                            style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 16.0,
                                                fontFamily: "ComicNeue"))
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding:  EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text('332',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 25.0,
                                                fontFamily: "ComicNeue",
                                                fontWeight: FontWeight.bold)),
                                        Text('Following',
                                            style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 16.0,
                                                fontFamily: "ComicNeue"))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(20.0),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'About Jonathan',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: "ComicNeue",
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                  style: TextStyle(
                                      fontSize: 15.0, fontFamily: "ComicNeue"),
                                )
                              ],
                            ))
                      ],
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0 , 20, 20),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    onPressed: () {
                      // TODO: IMPLEMENT THIS LATER WITH OPTIONS IN DIALOG
                    },
                    color: Colors.blue,
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Text(
                      'FOLLOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
