import 'package:flutter/material.dart';
import 'landing_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: UserLogin(),
    );
  }
  
} 
class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController emailEditingContrller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Container(
            padding: EdgeInsets.only(top:100.0,right:20.0,left: 20.0,bottom: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'LOGO',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  buildTextField("Email"),
                  SizedBox(height: 10.0,),
                  buildTextField("Password"),
                  SizedBox(height: 10.0,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Forgotten Password?",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  buildButtonContainer(),
                ],
              ),
      ),
    );
  }

  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText =="Email" ? Icon(Icons.email):Icon(Icons.lock),
        suffix: hintText == "Password" ? IconButton(
          onPressed: (){},
          icon:Icon(Icons.visibility_off),  
        ):Container(),
      ),
    );
  }
  Widget buildButtonContainer(){
    return Container(
        height: 46.0,
        width: MediaQuery.of(context).size.width,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(23.0),
          gradient: LinearGradient(
            colors: [
            Color(0xFFFB415B),
            Color(0xFFEE5623),
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft
            ),
        ),
        child: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              )
          ),
        ),
    );
  }
}