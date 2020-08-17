import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _registerForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1,right: MediaQuery.of(context).size.width*0.1),
            child:Form(
              key:_registerForm ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  Text("Full Name"),
                  //Full Name
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      hintStyle: TextStyle(color: Colors.green[800]),

                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Text("Date of Birth"),
                  //date of birth
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        hintText: "DD-MM-YYYY",
                        hintStyle: TextStyle(color: Colors.green[800]),

                    ),

                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  //Create Login ID
                  Text("Create Login ID"),
                  //password
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
                    height: 10.0,
                  ),

                  //Login ID Policy
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      hintText: "Login ID Policy",
                      fillColor: Colors.grey[300],
                      filled:true,

                    ),
                      maxLines: 3,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Text("Cell Phone Number"),
                  //Cell Phone Number
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),


                    ),

                  ),

                  SizedBox(
                    height: 20.0,
                  ),

//Back Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                     Container(
                       width:MediaQuery.of(context).size.width*0.35,
                       height:MediaQuery.of(context).size.height*0.06 ,
                       child:RaisedButton(
                         onPressed: (){

                         },
                         color: Colors.black54,
                         child: Text("Back",style: TextStyle(color: Colors.white),),
                       ),
                     ),


                  //Continue Button

                      Container(
                        width:MediaQuery.of(context).size.width*0.35,
                        height:MediaQuery.of(context).size.height*0.06 ,
                        child:RaisedButton(
                          onPressed: (){

                          },
                          color: Colors.teal,
                          child: Text("Continue",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),


                  SizedBox(
                    height: 10.0,
                  ),



                ],
              ),


            )),


      ],
    );
  }
}
