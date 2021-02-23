
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/MyUser.dart';

import 'auth/Authenticate.dart';
import 'home/HomeSrrn.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appUser = Provider.of<MyUser>(context);

    if(appUser == null) {       //depending on user value UI will change
      return Authenticate();
    }else{
      return HomeSrrn();
    }
  }
}
