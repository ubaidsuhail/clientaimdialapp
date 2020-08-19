import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class BusinessAddress extends StatefulWidget {
  @override
  _BusinessAddressState createState() => _BusinessAddressState();
}

class _BusinessAddressState extends State<BusinessAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: (){
                //Navigator.pop(context);
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
                    child:Text("What's the address?",style: TextStyle(fontSize: 25.0),),
                  ),

                  SizedBox(
                    height: 40.0,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.18,right: MediaQuery.of(context).size.width*0.12),
                  child:Column(
                    children: <Widget>[
                        TextFormField(
                          style: TextStyle(
                            fontSize: 16.0
                        ),
                          decoration: InputDecoration(
                            hintText: "Street address",
                          ),
                       ),

                        SizedBox(
                          height: 50.0,
                        ),

                        TextFormField(
                          style: TextStyle(
                              fontSize: 16.0
                          ),
                          decoration: InputDecoration(
                            hintText: "City",
                          ),
                        ),


                        SizedBox(
                          height: 50.0,
                        ),

                        TextFormField(
                          style: TextStyle(
                              fontSize: 16.0
                          ),
                          decoration: InputDecoration(
                            hintText: "State",
                          ),
                        ),

                        SizedBox(
                          height: 50.0,
                        ),

                        TextFormField(
                          style: TextStyle(
                              fontSize: 16.0
                          ),
                          decoration: InputDecoration(
                            hintText: "Zip code",
                          ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[

                              GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child:Row(
                                    children: <Widget>[
                                      Icon(Icons.keyboard_arrow_left,size: 22.0,color: Colors.black54,),
                                      Text("Back",style: TextStyle(color: Colors.black54,fontSize: 15.5,fontWeight: FontWeight.w600),),
                                    ],
                                  )),

                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width:28.0,
                                    child:Icon(Icons.remove,size: 42.0,color: Colors.blue),
                                  ),
                                  SizedBox(
                                    width:28.0,
                                    child:Icon(Icons.remove,size: 42.0,color: Colors.blue),
                                  ),
                                  SizedBox(
                                    width:28.0,
                                    child:Icon(Icons.remove,size: 42.0,color: Colors.blue),
                                  ),
                                  SizedBox(
                                    width:28.0,
                                    child:Icon(Icons.remove,size: 42.0,color: Colors.grey[300]),
                                  ),
                                  SizedBox(
                                    width:35.0,
                                    child:Icon(Icons.remove,size: 42.0,color: Colors.grey[300]),
                                  ),
                                ],
                              ),



                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, 'BusinessOutsideLocations');
                                },
                                child: Row(
                                  children: <Widget>[
                                    Text("Next",style: TextStyle(color: Colors.blue,fontSize: 15.5,fontWeight: FontWeight.w600),),
                                    Icon(Icons.keyboard_arrow_right,size: 22.0,color: Colors.blue,),
                                  ],
                                ),
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
