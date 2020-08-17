import 'package:flutter/material.dart';


class BusinessAddFinish extends StatefulWidget {
  @override
  _BusinessAddFinishState createState() => _BusinessAddFinishState();
}

class _BusinessAddFinishState extends State<BusinessAddFinish> {
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
                    child:Text("Finish and manage this listing",style: TextStyle(fontSize: 23.0,wordSpacing: 1.0),),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left:25.0,top: 18.0,right: 14.0),
                          child:RichText(
                            text: TextSpan(
                              text: 'You\'ll be able to manage ',
                              style: TextStyle(color: Colors.black54,wordSpacing: 1.2,fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Fgt',
                                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' on Google.',
                                ),



                              ],
                            ),
                          )
                      ),

                      SizedBox(
                        height: 30.0,
                      ),

                      Padding(
                          padding: EdgeInsets.only(left: 30.0,right: 10.0),
                          child:Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.done,color: Colors.green,),
                               SizedBox(width: 20.0,),
                                Expanded(
                                  child:Text(
                                    'Promote your business with photos and posts',
                                    style: new TextStyle(fontSize: 16.0,color: Colors.black54),
                                  ),
                                ),
                              ]
                          )),


                      SizedBox(
                        height: 30.0,
                      ),

                      Padding(
                          padding: EdgeInsets.only(left: 30.0,right: 10.0),
                          child:Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.done,color: Colors.green,),
                                SizedBox(width: 20.0,),
                                Expanded(
                                  child:Text(
                                    'Track business analytics to understand your customers',
                                    style: new TextStyle(fontSize: 16.0,color: Colors.black54),
                                  ),
                                ),
                              ]
                          )),


                      SizedBox(
                        height: 30.0,
                      ),

                      Padding(
                          padding: EdgeInsets.only(left: 30.0,right: 10.0),
                          child:Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.done,color: Colors.green,),
                                SizedBox(width: 20.0,),
                                Expanded(
                                  child:Text(
                                    'Respond to customer reviews',
                                    style: new TextStyle(fontSize: 16.0,color: Colors.black54),
                                  ),
                                ),
                              ]
                          )),





                    ],
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
                                    child:Icon(Icons.remove,size: 42.0,color: Colors.blue),
                                  ),
                                  SizedBox(
                                    width:28.0,
                                    child:Icon(Icons.remove,size: 42.0,color: Colors.blue),
                                  ),
                                ],
                              ),

                              GestureDetector(
                                onTap: (){
                                  //Navigator.pushNamed(context, 'BusinessAddFinishs');
                                },
                                child: Row(
                                  children: <Widget>[
                                    Text("Finish",style: TextStyle(color: Colors.blue,fontSize: 15.5,fontWeight: FontWeight.w600),),

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

