
import 'package:flutter/material.dart';

import 'SignInScrn.dart';
import 'SignUpScrn.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isSignIn = true;

  void toggleView() {
    setState(() {
      isSignIn = !isSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isSignIn) {
      return SignInScrn(toggleView);
    } else {
      return SignUpScrn(toggleView);
    }
  }
}
