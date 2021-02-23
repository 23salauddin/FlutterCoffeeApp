
import 'package:flutter/material.dart';
import 'package:untitled/services/AuthService.dart';

class SignInScrn extends StatefulWidget {             // a SignIn widget

  final Function toggleView;

  SignInScrn(this.toggleView);

  @override
  _SignInScrnState createState() => _SignInScrnState();
}

class _SignInScrnState extends State<SignInScrn> {      // state object

  final AuthService _authService = AuthService();
  String email ="";
  String password ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // main background
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("coffee App"),
        elevation: 0.5,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              widget.toggleView();
            },
            icon: Icon(Icons.person, color: Colors.black,),
            label: Text("Signup"), textColor: Colors.white,),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
        child: Form(child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(                  //email
              onChanged: (val) {
                setState(() {
                  email=val;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(                  //password
              obscureText: true,
              onChanged: (val) {setState(() {
                password=val;
              });},
            ),
            SizedBox(
              height: 40,
            ), // indent
            ElevatedButton(
              onPressed: () {
                print(email + password);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // background
                onPrimary: Colors.white, // foreground
              ),
              child: Text('Sign In', style: TextStyle(color: Colors.white)),
            )
          ],
        )),
      ),
    );
  }
}
/*
RaisedButton(
          child: Text("sign in anon"),
          onPressed: () async{
            dynamic authResult = await _authService.signInAnon();
            if(authResult == null){
              print("error occurred in signin ");
            }else{
              print(authResult.uid);
            }
          },
        ),
 */
