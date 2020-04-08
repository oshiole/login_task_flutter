import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignUp.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState()
  }

}

class LoginState extends State<Login> {

  final TextEditingController _userController = new TextEditingController();

  final TextEditingController _passwordController = new TextEditingController();


  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent,

      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'images/face.png',
              width: 90.0,
              height: 90.0,
              color: Colors.grey,
            ),

            new Container(
              color: Colors.white,

              child: new Column(

                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: 'username',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      icon: new Icon(Icons.person)
                    ),
                  ),

                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        hintText: 'PassWord',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        icon: new Icon(Icons.lock)
                    ),
                  ),

                  new Center (
                    child: new Row (
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.only(left: 30.0),
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          child: new FlatButton(
                              onPressed: _erase,
                              child: new Text(
                                "login",
                                textAlign: TextAlign.center,
                                style: new TextStyle(color: Colors.white,
                                fontSize: 19.0),
                              ),
                          ),
                        ),

                        new Container(
                          margin: const EdgeInsets.only(left: 120.0),
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          child: new FlatButton(
                            onPressed: () {
                                MaterialPageRoute(
                                    builder: (context) => SignUp());
                            },
                            child: new Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: new TextStyle(color: Colors.white,
                                  fontSize: 19.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}