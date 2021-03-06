import 'package:flutter/material.dart';

class BusinessOutsideLocation extends StatefulWidget {
  @override
  _BusinessOutsideLocationState createState() => _BusinessOutsideLocationState();
}

class _BusinessOutsideLocationState extends State<BusinessOutsideLocation> {
  int groupValue = 0;
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
                    child:Text("Do you also serve customers outside this location?",style: TextStyle(fontSize: 25.0,wordSpacing: 1.0),),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left:25.0,top: 18.0,right: 14.0),
                          child:Text("For example, if you visit or deliver to your customers,you can let them know where you are willing to go",style: TextStyle(color: Colors.black54,wordSpacing: 1.2,fontSize: 16.0),)
                      ),

                      SizedBox(
                        height: 10.0,
                      ),

                      Padding(
                            padding: EdgeInsets.only(left: 10.0,right: 10.0),
                            child:Row(
                                children: <Widget>[
                                  new Radio(
                                    value: 1,
                                    groupValue: groupValue,
                                    onChanged: (value){
                                      print("$value");
                                      setState(() {
                                        groupValue = 1;
                                      });
                                    },
                                  ),
                                  Expanded(
                                    child:Text(
                                      'Yes, I also serve them outside my location',
                                      style: new TextStyle(fontSize: 16.0,color: Colors.black54),
                                    ),
                                  ),
                                ]
                            )),


                      Padding(
                          padding: EdgeInsets.only(left: 10.0,right: 10.0),
                          child:Row(
                              children: <Widget>[
                                new Radio(
                                  value: 2,
                                  groupValue: groupValue,
                                  onChanged: (value){
                                    print("$value");
                                    setState(() {
                                      groupValue = 2;
                                    });
                                  },
                                ),
                                Text(
                                  "No, I don't",
                                  style: new TextStyle(fontSize: 16.0,color: Colors.black54),
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
                                  //Navigator.pushNamed(context, 'BusinessAddFinishs');
                                  Navigator.pushNamed(context, 'BusinessOptionalAddresses');
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
