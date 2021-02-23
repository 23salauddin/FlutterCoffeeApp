
import 'package:flutter/material.dart';
import 'package:untitled/services/AuthService.dart';

class HomeSrrn extends StatelessWidget {
  final _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[10],
      appBar: AppBar(
        backgroundColor: Colors.brown[500],
        title: Text("Home"),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text("Logout"), textColor: Colors.white,),
        ],
      ),
    );
  }
}
