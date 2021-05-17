import 'package:flutter/material.dart';


class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        Container(
          child: Column(
            children: <Widget>[
              infoBar,
              banner,
              const Divider(
                height: 10,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              buildItemBar2(),
              const Divider(
                height: 10,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
               Expanded(
                  child:  Align(
                      alignment: Alignment.bottomCenter,
                      child:  noticeBar
            ))
            ],
          ),
        ),
      ),
    );
  }

  final Widget banner = Container(
    margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
    width: double.infinity,
    child: Image.asset(
      'assets/images/banner.jpg',
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  );

  final Widget infoBar = Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
      width: double.infinity,
      child: Column(
          children: <Widget>[
            Text(
              'A, 12/F, Fum Ming Building, MongKok',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              //style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Opening Hours : 09:00 - 12:00',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              //style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Divider(
              height: 5,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
          ]
      )
  );

  final Widget itemBar = Row(
    children: <Widget>[
      Expanded(child:
      Column(
          children: <Widget>[
            Image.asset(
              'assets/images/booking.jpg',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Center(
                child: Text(
                  "Visit Us",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
            ),
          ]
      )
      ),
      Expanded(child:
      Column(
          children: <Widget>[
            Image.asset(
              'assets/images/products.jpg',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Center(
                child: Text(
                  "Our Products",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
            ),
          ]
      )
      ),
      Expanded(child:
      Column(
          children: <Widget>[
            Image.asset(
                'assets/images/tips2.png',
                width: double.infinity,
                fit: BoxFit.fill
            ),
            Center(
              child: Text(
                "Skin Tips Here",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ]
      )
      ),
    ],
  );


  final Widget shadowedImage3 =
  Container(
    margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
    child:
    Column(
        children: <Widget>[
          Image.asset(
              'assets/images/tips2.png',
              fit: BoxFit.fill
          ),
          Center(
            child: Text(
              "Skin Tips Here",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ]
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
  );

  final Widget shadowedImage2 =
  Container(
    margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
    child:
    Column(
        children: <Widget>[
          Image.asset(
              'assets/images/booking.jpg',
              fit: BoxFit.fill
          ),
          Center(
            child: Text(
              "Booking",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ]
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
  );

  final Widget shadowedImage1 =
  Container(
    margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
    child:
    Column(
        children: <Widget>[
          Image.asset(
              'assets/images/products.jpg',
              fit: BoxFit.fill
          ),
          Center(
            child: Text(
              "Products",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ]
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
  );


  Widget buildItemBar2() {
    return Row(
      children: <Widget>[
        Expanded( child: shadowedImage1),
        Expanded( child: shadowedImage2),
        Expanded( child: shadowedImage3),
      ],
    );
  }

  final Widget noticeBar = Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Join/Login to be a Member'),
            subtitle: Text('It is free of charge and enjoy discount!'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('LOGIN/REGISTER'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LATER'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
}
