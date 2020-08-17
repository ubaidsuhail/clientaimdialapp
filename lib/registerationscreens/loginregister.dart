import 'package:flutter/material.dart';

class LoginRegister extends StatefulWidget {
  @override
  _LoginRegisterState createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  //select screen 1 for login , 2 for register and 3 for quick balance
  int selectScreen = 1;
  final _loginForm = GlobalKey<FormState>();
  final _registerForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),

              Image(image: AssetImage("images/consultancylogo.png"),width: 200.0,height: 200.0,),

              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.07,
                color: Colors.grey[400],
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05),

                child: Row(
                  children: <Widget>[
                    //Login container
                    GestureDetector(

                      onTap: (){
                        print("Login Tab");
                        setState(() {
                          selectScreen = 1;
                        });
                      },

                      child:Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        height: MediaQuery.of(context).size.height*0.07,
                        decoration: BoxDecoration(
                          border: Border(
                            top: selectScreen == 1 ? BorderSide(width: 3, color: Colors.teal) : BorderSide(width: 0, color: Colors.transparent)

                          ),
                          color: selectScreen == 1 ? Colors.white : Colors.grey[400],
                        ),


                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.account_circle,size: 16.0,color: selectScreen == 1 ? Colors.teal : Colors.black),
                            SizedBox(width: 2.0,),
                            Text("Login",style: TextStyle(fontSize: 13.0,color:selectScreen == 1 ? Colors.teal : Colors.black ),)
                          ],
                        ),


                      ),
                    ),

                    //Sign up container
                    GestureDetector(
                      onTap: (){
                        print("Sigup Tab");
                        setState(() {
                          selectScreen = 2;
                        });
                      },

                    child:Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      height: MediaQuery.of(context).size.height*0.07,


                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 0.4, color: Colors.grey[600]),
                          right: BorderSide(width: 0.4, color: Colors.grey[600]),
                          top: selectScreen == 2 ? BorderSide(width: 3, color: Colors.teal) : BorderSide(width: 0, color: Colors.transparent)
                        ),
                        color: selectScreen == 2 ? Colors.white : Colors.grey[400],
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.account_circle,size: 16.0,color: selectScreen == 2 ? Colors.teal : Colors.black,),
                          SizedBox(width: 2.0,),
                          Text("Register",style: TextStyle(fontSize: 13.0,color: selectScreen == 2 ? Colors.teal : Colors.black),)
                        ],
                      ),


                    )),

                    GestureDetector(
                      onTap: (){
                        print("Quick Balance Tab");
                      },
                    child:Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.07,
                      //color: Colors.purple,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.blur_linear,size: 16.0,),
                          SizedBox(width: 2.0,),
                          Text("Quick Balance",style: TextStyle(fontSize: 13.0),)
                        ],
                      ),
                    ),
                    )

                  ],
                ),


              ),

              SizedBox(
                height: 10.0,
              ),

              //Login Form
              selectScreen == 1 ?
               LoginScreen()
              :
              //Register Form
              RegisterScreen(),

              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                child: Text("AIMDIAL",style: TextStyle(fontSize: 35.0,color: Colors.grey),),
              ),

            ],
          ),
        ),
      ),
    );
  }

  //Ya login Ki Ui ha
  Widget LoginScreen()
  {
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
                     Navigator.pushNamed(context, 'BottomBars');
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

  //Ye register screen ki ui ha
  Widget RegisterScreen()
  {
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
                           setState(() {
                             selectScreen = 1;
                           });
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
                            setState(() {
                              selectScreen = 1;
                            });
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
