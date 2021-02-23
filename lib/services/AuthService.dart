
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/models/MyUser.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //creating user from firebaseUser
  MyUser _getUser(User fireBaseUser) =>
      fireBaseUser != null ? MyUser(fireBaseUser.uid) : null;

  //auth change stream
  Stream<MyUser> get streamUser {
    return _auth
        .authStateChanges()
        // .map((User firebaseUser) => _getUser(firebaseUser));
        .map(_getUser); //same to previous line
  }

  //signin without auth
  Future signInAnon() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();  //AuthResult is replaced by UserCredential
      User user = userCredential.user;  //FirebaseUser is deprecated
      return _getUser(user);
    } catch (ex) {
      print(ex.toString());
      return null;
    }
  }


  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(ex){
      print(ex.toString());
      return null;
    }
  }
}
