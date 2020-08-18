import 'package:flutter/material.dart';


class BusinessRegion extends StatefulWidget {
  @override
  _BusinessRegionState createState() => _BusinessRegionState();
}

class _BusinessRegionState extends State<BusinessRegion> {
  String _selected="Pakistan";
  List<Map<String,dynamic>> countryList = [
    {
      "country":"Pakistan",
    },
    {
      "country":"Saudi Arabia",
    },
    {
      "country":"turkey",
    },
    {
      "country":"Albania",
    },
    {
      "country":"Argentina",
    },
    {
      "country":"Australia",
    },

  ];
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
                    child:Text("What region is your business based in?",style: TextStyle(fontSize: 27.0),),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width*0.75,
                        margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.16,top: 40.0),
                        child: Text("Phone number",style: TextStyle(color: Colors.black54,fontSize: 13.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:EdgeInsets.only(top:23.0),
                              child:Icon(Icons.location_on,color: Colors.black54,),
                            ),

                            SizedBox(
                              width:15.0,
                            ),

                            //Drop down here
                            Padding(
                              padding:EdgeInsets.only(top:23.0),
                                child: DropdownButton<String>(
                                    isDense: true,
                                    //hint: new Text("Select Bank"),
                                    value: _selected,
                                    onChanged: (String newValue) {
                                      print(newValue);
                                      setState(() {
                                        _selected = newValue;

                                      });

                                      print(_selected);
                                    },
                                    items: countryList.map((Map map) {
                                      return new DropdownMenuItem<String>(
                                        value: map["country"].toString(),

                                        // value: _mySelection,
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.68,
                                          child:Text(map["country"]),
                                        )

                                      );
                                    }).toList(),

                                ),

                            ),





                          ],
                        ),
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
                                  Navigator.pushNamed(context, 'BusinessConnections');
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
