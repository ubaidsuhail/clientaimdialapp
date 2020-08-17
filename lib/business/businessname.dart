import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class BusinessName extends StatefulWidget {
  @override
  _BusinessNameState createState() => _BusinessNameState();
}

class _BusinessNameState extends State<BusinessName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.clear,color: Colors.grey,),
        )
      ),
      body:SingleChildScrollView(
      child:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.86,
        //color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),

            Padding(
              padding: EdgeInsets.only(left:25.0,right: 12.0),
            child:Text("What's the name of your business?",style: TextStyle(fontSize: 25.0),),
            ),



            Padding(
              padding: EdgeInsets.only(left:28.0,right: 6.0,top: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    margin: EdgeInsets.only(left:40.0),
                    child: Text("Business name",style: TextStyle(color: Colors.black54,fontSize: 13.0),),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.store_mall_directory,color: Colors.black54,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.75,
                        margin: EdgeInsets.only(left:15.0),
                        child: TextFormField(
                         style: TextStyle(
                           fontSize: 18.0
                         ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    margin: EdgeInsets.only(left:40.0,top: 35.0),
                      child:RichText(
                        text: TextSpan(
                          text: 'By continuing you agree to the following ',
                          style: TextStyle(color: Colors.black54,wordSpacing: 1.0,fontSize: 16.0),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Terms of Service',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print("Terms of Service");
                                  },
                                style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontWeight: FontWeight.w400),
                            ),
                                TextSpan(text:' and ',style: TextStyle(color: Colors.black54)),
                            TextSpan(
                                text: 'Private Policy',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print("Private Policy");
                                  },
                                style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontWeight: FontWeight.w400),
                            ),

                          ],
                        ),
                      )
                  ),
                ],



              )
            ),


            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 1.4,
                          offset: Offset(0, -2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          width:28.0,
                          child:Icon(Icons.remove,size: 42.0,color: Colors.grey[300]),
                        ),
                        SizedBox(
                          width:28.0,
                          child:Icon(Icons.remove,size: 42.0,color: Colors.grey[300]),
                        ),
                        SizedBox(
                          width:28.0,
                          child:Icon(Icons.remove,size: 42.0,color: Colors.grey[300]),
                        ),
                        SizedBox(
                          width:28.0,
                          child:Icon(Icons.remove,size: 42.0,color: Colors.grey[300]),
                        ),
                        SizedBox(
                          width:28.0,
                          child:Icon(Icons.remove,size: 42.0,color: Colors.grey[300]),
                        ),

                        SizedBox(
                          width:25.0,
                        ),

                        GestureDetector(
                          onTap: (){
                         Navigator.pushNamed(context, 'BusinessCategorys');
                          },
                          child: Row(
                            children: <Widget>[
                          Text("Next",style: TextStyle(color: Colors.blue,fontSize: 15.5,fontWeight: FontWeight.w600),),
                          Icon(Icons.keyboard_arrow_right,size: 22.0,color: Colors.blue,),
                            ],
                          ),
                        ),

                        SizedBox(
                          width:15.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


          ],

        ),



      ))
    );
  }
}
