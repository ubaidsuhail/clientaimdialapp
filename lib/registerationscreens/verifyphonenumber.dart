import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyPhoneNumber extends StatefulWidget {
String userName;
String userDateOfBirth;
String userCellNumber;
String userPassword;


VerifyPhoneNumber({this.userName,this.userDateOfBirth,this.userCellNumber,this.userPassword});


  @override
  _VerifyPhoneNumberState createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  final _codeForm = GlobalKey<FormState>();
  TextEditingController _phoneCode = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Full Name:${widget.userName}");
    print("Date of Birth:${widget.userDateOfBirth}");
    print("Cell Phone Number:${widget.userCellNumber}");
    print("Password:${widget.userPassword}");
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Verify Phone Number"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.0,right: 15.0),
        child:Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(width: 1.0,color: Colors.teal),
                ),
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(width: 1.0,color: Colors.teal),
               ),
                border: InputBorder.none,

                fillColor: Colors.white,
                filled: true,
              ),
              style: TextStyle(fontSize: 20.0),
              keyboardType:TextInputType.number ,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(6),
                  WhitelistingTextInputFormatter.digitsOnly
                ]
              
            ),


            SizedBox(
              height: 5.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Code has been Expired",style: TextStyle(color:Colors.red,fontSize: 13.0)),
                GestureDetector(
                  onTap: ()
                  {
print("send code");
                  },
                  child:Text("Send Code",style: TextStyle(color:Colors.teal,fontSize: 15.0),),

                ),

              ],
            ),


            Spacer(),

            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.06,
              margin: EdgeInsets.only(top:6.0),
              child: RaisedButton(
                elevation: 0.0,
                onPressed: (){
                  //Navigator.pushNamed(context, 'BottomBars');
                  print("verify");
                },
                color:Colors.teal,
                child: Text("Verify",style: TextStyle(color:Colors.white,fontSize: 16.0),),
              ),

            ),

          SizedBox(
          height:20.0,
      )






          ],),
      )
    );
  }
}
