import 'package:flutter/material.dart';


class BusinessOptionalAddress extends StatefulWidget {
  @override
  _BusinessOptionalAddressState createState() => _BusinessOptionalAddressState();
}

class _BusinessOptionalAddressState extends State<BusinessOptionalAddress> {
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
                    child:Text("Add the areas you serve (optional)",style: TextStyle(fontSize: 27.0),),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left:25.0,top: 18.0,right: 12.0),
                          child:Text("You can list your service areas below. They will show up on your listing and help bring relevant customers.",style: TextStyle(color: Colors.black54,wordSpacing: 1.2,fontSize: 16),)
                      ),




                      Container(
                        width: MediaQuery.of(context).size.width*0.75,
                        margin: EdgeInsets.only(left:68.0,top: 40.0),
                        child: Text("Search and select areas",style: TextStyle(color: Colors.black54,fontSize: 13.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.0),
                        child:Row(
                          children: <Widget>[
                            Icon(Icons.search,color: Colors.black54,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              margin: EdgeInsets.only(left:15.0),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 18.0
                                ),
                                decoration: InputDecoration(
                                  hintText: "Manhattan, New York",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left:68.0,top: 8.0),
                        child: Text("You can change and add more later",style: TextStyle(color: Colors.black54,fontSize: 13.0),),
                      ),
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
                                    width:35.0,
                                    child:Icon(Icons.remove,size: 42.0,color: Colors.grey[300]),
                                  ),
                                ],
                              ),



                              GestureDetector(
                                onTap: (){
                                  //Navigator.pushNamed(context, 'BusinessConnections');
                                  Navigator.pushNamed(context, 'BusinessRegions');
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
