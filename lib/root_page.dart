import 'package:project/landing_page.dart';
import 'login_page.dart';
import 'package:flutter/material.dart';
import 'package:project/auth.dart';

class RootPage extends StatefulWidget{
  RootPage({this.auth});
  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() =>new _RootPageState();
    
  }
  enum AuthStatus{
    notSignedIn,
    signedIn
  }
  class _RootPageState extends State<RootPage>{

    AuthStatus authStatus = AuthStatus.notSignedIn;

      @override
  initState() {
    super.initState();
    widget.auth.currentUser().then((userId){
      setState(() {
       // authStatus = userId == null ? AuthStatus.notSignedIn:AuthStatus.signedIn;
      });
    });
  }

void _signedIn(){
setState(() {
  authStatus = AuthStatus.signedIn;
});

}
void _signedOut(){
  setState(() {
    authStatus = AuthStatus.notSignedIn;
  });
}


    @override
    Widget build (BuildContext context){

      switch(authStatus){
        case AuthStatus.notSignedIn:
        return UserLogin(
          auth: widget.auth,
          onSignedIn: _signedIn,);
      case AuthStatus.signedIn:
        return MyHomePage(
         auth: widget.auth,
         onSignedOut: _signedOut,
       
        );
      
    }
  }
  }