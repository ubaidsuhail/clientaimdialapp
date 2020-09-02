import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/services.dart';
import 'package:aimdialconsultantapp/apiurl/apis_url.dart';
import 'package:http/http.dart';
import 'package:aimdialconsultantapp/registerationscreens/verifyphonenumber.dart';
class LoginRegister extends StatefulWidget {
  @override
  _LoginRegisterState createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  //select screen 1 for login , 2 for register and 3 for quick balance
  int selectScreen = 1;
  final _loginForm = GlobalKey<FormState>();
  final _registerForm = GlobalKey<FormState>();

  TextEditingController _userName = TextEditingController();
  TextEditingController _userDateOfBirth = TextEditingController();
  TextEditingController _userLoginPolicy = TextEditingController(text:"Please read correct login policy");
  TextEditingController _userCellNumber = TextEditingController();
  TextEditingController _userPassword = TextEditingController();

  var dbMaskFormatter = new MaskTextInputFormatter(mask: '##-##-####', filter: { "#": RegExp(r'[0-9]') });



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
                height: MediaQuery.of(context).size.height*0.15,
              ),

              Image(image: AssetImage("images/consultancylogo.jpg"),width: 120.0,height: 120.0,),

              SizedBox(
                height: 35.0,
              ),

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

              SizedBox(
                height: 4.0,
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
                    controller: _userName,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Full name should not be empty';
                      }
                      return null;
                    },

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
                    controller: _userDateOfBirth,

                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Date of birth should not be empty';
                        }
                        else if (value.length < 10)
                          {
                          return 'Enter Correct date format';
                          }
                        return null;
                      },

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
                    keyboardType: TextInputType.number,
                      inputFormatters: [
                        dbMaskFormatter,
                        //WhitelistingTextInputFormatter.digitsOnly
                      ]

                  ),



                  SizedBox(
                    height: 20.0,
                  ),

                  //Login ID Policy
                  TextFormField(
                    enabled: false,
                    controller: _userLoginPolicy,
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
                    controller: _userCellNumber,

                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Cell Phone Number should not be empty';
                        }
                        else if (value.length < 11)
                        {
                          return 'Enter Correct Phone No format';
                        }
                        return null;
                      },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),

                      hintText: "03102765431",
                      hintStyle: TextStyle(color: Colors.green[800]),
                    ),
                    keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(11),
                        WhitelistingTextInputFormatter.digitsOnly
                      ]
                  ),


                  SizedBox(
                    height: 20.0,
                  ),

                  Text("Password"),
                  //Cell Phone Number
                  TextFormField(
                      controller: _userPassword,

                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Password should not be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),

                      ),
                      obscureText: true,
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
                          if(_registerForm.currentState.validate()) {
                            Register();
                          }
                          else{
                            print("register invalid");
                          }
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

  void Register() async
  {


    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => VerifyPhoneNumber(userName:_userName.text,userDateOfBirth:_userDateOfBirth.text,userCellNumber:_userCellNumber.text,userPassword:_userPassword.text)));


//    setState(() {
//      selectScreen = 1;
//    });


//    showDialog(
//        context: context,
//        builder: (context) {
//          return Center(
//                child:CircularProgressIndicator(),
//              );
//        });
//
//    print("Full Name:${_userName.text}");
//    print("Date of Birth:${_userDateOfBirth.text}");
//    print("Cell Phone Number:${_userCellNumber.text}");
//    print("Password:${_userPassword.text}");
//
//    String convertDateOfBirth = _userDateOfBirth.text.substring(6,10) + "-" + _userDateOfBirth.text.substring(3,5) + "-" + _userDateOfBirth.text.substring(0,2);
//   print("Convert date of birth:${convertDateOfBirth}");
//
//    String url = signupApi;
//    String json = '{"UserName":"${_userName.text}","UserDateOfBirth":"$convertDateOfBirth","UserCellNumber":"${_userCellNumber.text}","UserPassword":"${_userPassword.text}"}';
//    Response response = await post(url, body: json);
//
//    print("status code is:${response.statusCode}");
//    print("response body is:${response.body}");
//
//    if(response.statusCode == 200 && response.body.toString() == "1")
//      {
//        Navigator.of(context, rootNavigator: true).pop();
//
//        _userName.text = "";
//        _userDateOfBirth.text = "";
//        _userCellNumber.text = "";
//        _userPassword.text = "";
//
//        setState(() {
//      selectScreen = 1;
//    });
//
//         print("signup");
//      }
//
//    else if(response.statusCode == 200 && response.body.toString() == "Cell Number Already Exists")
//      {
//        Navigator.of(context, rootNavigator: true).pop();
//        showDialog(
//            context: context,
//            builder: (context) {
//              return AlertDialog(
//                title: Text(
//                  "Error",
//                ),
//                content: Text("Cell Number already used"),
//                actions: <Widget>[
//                  FlatButton(
//                    child: Text("Ok"),
//                    onPressed: () {
//                     Navigator.pop(context);
//                    },
//                  )
//                ],
//              );
//            });
//      }
//



  }

}
