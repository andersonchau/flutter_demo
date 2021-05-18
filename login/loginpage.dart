import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {



    @override
    Widget build(BuildContext context) {

      final Widget noticeBar = Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Not Yet Registered?'),
              subtitle: Text('It is free of charge and enjoy discount!'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('REGISTER'),
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

      final emailField = SizedBox(

          width: double.infinity, // <-- match_parent
          child:
          Padding(
              padding: EdgeInsets.only(left: 20.0, right:20),
              child:TextField(
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Email",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      )
          )
      );

      final passwordField =
      SizedBox(

          width: double.infinity, // <-- match_parent
          child:
          Padding(
              padding: EdgeInsets.only(left: 20.0, right:20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Password",
                border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      )
          )
      );

      final loginButton = SizedBox(

          width: double.infinity, // <-- match_parent
          child:
          Padding(
              padding: EdgeInsets.only(left: 20.0, right:20),
              child: ElevatedButton(
                    child: Text('LOGIN'),
                    onPressed: () {
                      print('Pressed');
                    },
              )
          )
      );

      final Widget banner = Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
        width: double.infinity,
        child: Image.asset(
          'assets/images/banner.jpg',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );

      return
        MaterialApp(
          home:
        Scaffold(
        body: Center(
          child: Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:40),
              banner,
              SizedBox(height:30),
              emailField,
              SizedBox(height:30),
              passwordField,
              SizedBox(height:30),
              loginButton,
              SizedBox(height:20),
              noticeBar
            ]

          ),
        ),
      )
      ));




    }
  }

