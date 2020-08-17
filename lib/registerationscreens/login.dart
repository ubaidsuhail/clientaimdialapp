import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1,right: MediaQuery.of(context).size.width*0.1),
            child:Form(
              key:_loginForm ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login ID"),
                  //login id
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      hintText: "Enter Login ID",
                      hintStyle: TextStyle(color: Colors.green[800]),

                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Text("Password"),
                  //password
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.green[800]),
                        suffixIcon:IconButton(icon: Icon(Icons.visibility_off,color: Colors.black,size:20.0), onPressed: null)
                    ),
                    obscureText: true,
                  ),


                  //Login Button
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.06,
              margin: EdgeInsets.only(top:6.0),
              child: RaisedButton(
                elevation: 0.0,
                  onPressed: (){

                  },
                color:Colors.teal,
                child: Text("Login",style: TextStyle(color:Colors.white,fontSize: 16.0),),
                  ),

              ),
                ],
              ),


            )),

        SizedBox(height:20.0),
        //ForgotID/Password
        Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.06,
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05),
          color: Colors.grey,
          child: RaisedButton(
            elevation: 0.0,
            onPressed: (){

            },
            child: Text("Forgot Login ID/Password?",style: TextStyle(color:Colors.black54,fontSize: 16.0),),
          ),

        ),
      ],
    );
  }
}
