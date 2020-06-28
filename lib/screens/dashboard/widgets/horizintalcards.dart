import 'package:flutter/material.dart';

class HorizontalCards extends StatefulWidget {
  @override
  _HorizontalCardsState createState() => _HorizontalCardsState();
}

class _HorizontalCardsState extends State<HorizontalCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 15.0),
//          child: Text(
//            'OVERVIEW',
//            style: TextStyle(
//              color: Colors.indigo,
//              fontSize: 20.0,
//              fontWeight: FontWeight.w500,
//              letterSpacing: 1.3,
//            ),
//          ),
        ),
        Container(
          color: Colors.lightBlueAccent[100],
          height: 120.0,
          child: ListView(
            padding: EdgeInsets.only(left: 10.0),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(
                colorback: Colors.pink[300],
                colorcircle: Colors.pink[800],
                colortext: Colors.pink[100],
                title: "PRODUCTIVITY GEEK",
                num: "12",
              ),
              Card(
                colorback: Colors.green[300],
                colorcircle: Colors.green[800],
                colortext: Colors.green[100],
                title: "ENVIRONMENTALIST",
                num: "23",
              ),
              Card(
                colorback: Colors.deepOrange,
                colorcircle: Colors.yellow[800],
                colortext: Colors.yellow[100],
                title: "GOOD CITIZEN",
                num: "8",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Card extends StatelessWidget {
  final Color colorback;
  final Color colorcircle;
  final Color colortext;
  final String title;
  final String num;

  Card(
      {this.colorback, this.colorcircle, this.colortext, this.num, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 250,
      decoration: BoxDecoration(
        color: colorback,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.grey[300],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10.0, left: 12.0),
                  width: 46.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: colorcircle,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                      child: Text(
                    num,
                    style: TextStyle(color: colortext, fontSize: 32.0),
                  )),
                ),
                Expanded(
                  child: Container(
                    //margin: EdgeInsets.only(left:10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'BADGES EARNED',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white70,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
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
