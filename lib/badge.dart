import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://image.freepik.com/free-photo/blurred-background-vintage-filter-customer-coffee-shop-blur-background-with-bokeh_1253-1568.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 80.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Text(
                  'PRODUCTIVITY CATEGORY\nBADGE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400),
                )),
            SizedBox(
              height: 40.0,
            ),
            Hero(
              tag: 'Hero1',
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomLeft,
                              colors: [Colors.blue, Colors.greenAccent])),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Image(
                      image: NetworkImage(
                          "https://i0.wp.com/www.carlsetzer.com/wp-content/uploads/2018/04/cropped-just-a-design-geek-icon.png?fit=512%2C512&ssl=1&w=640"),
                      height: 120.0,
                    ),
                  )),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 140.0),
                    child: Text(
                      'GEEK',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'YAY you won a new BADGE!!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
