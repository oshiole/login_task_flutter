import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {

  final TextEditingController _userController = new TextEditingController();

  final TextEditingController _nameController = new TextEditingController();

  final TextEditingController _passwordController = new TextEditingController();

  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Colors.greenAccent,

        body: new Container(
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget>[
              new Image.asset(
        '     images/face.png',
                width: 90.0,
                height: 90.0,
                color: Colors.grey,
            ),

              new Container(
                color: Colors.white,

                child: new Column(

                children: <Widget>[
                    new TextField(
                      controller: _nameController,
                      decoration: new InputDecoration(
                      hintText: 'Full Name',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      icon: new Icon(Icons.person)
                      ),
                      ),

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

                  new FlatButton(onPressed: _erase,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      child: new Text ("Create New Account",
                        textAlign: TextAlign.center,
                        style: new TextStyle(color: Colors.white,
                        fontSize: 19.0)
                      ),
                  )
    ]
    )
              )
    ]
    )
        )
    );
  }

}