import 'package:flutter/material.dart';

class BusinessConnection extends StatefulWidget {
  @override
  _BusinessConnectionState createState() => _BusinessConnectionState();
}

class _BusinessConnectionState extends State<BusinessConnection> {
  String _selected="+91";
  TextEditingController _phoneNo = TextEditingController(text:"+91");
  List<Map<String,dynamic>> phoneNoList = [
    {
      "image":"images/pakflag.jpg",
      "name":"Pakistan",
      "phoneno":"+91",
    },
    {
      "image":"images/saudiflag.jpg",
      "name":"Saudi Arabia",
      "phoneno":"+966",
    },
    {
      "image":"images/turkeyflag.png",
      "name":"Turkey",
      "phoneno":"+90",
    },
    {
      "image":"images/albaniaflag.png",
      "name":"Albania",
      "phoneno":"+355",
    },
    {
      "image":"images/argentinaflag.png",
      "name":"Argentina",
      "phoneno":"+54",
    },
    {
      "image":"images/australiaflag.png",
      "name":"Australia",
      "phoneno":"+61",
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
                    child:Text("Make Connections (Optional)",style: TextStyle(fontSize: 27.0),),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left:25.0,top: 18.0,right: 12.0),
                          child:Text("Providing current info will help customers get in touch and learn more about your business.",style: TextStyle(color: Colors.black54,wordSpacing: 1.2,fontSize: 16),)
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width*0.75,
                        margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.4,top: 40.0),
                        child: Text("Phone number",style: TextStyle(color: Colors.black54,fontSize: 13.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:EdgeInsets.only(top:23.0),
                            child:Icon(Icons.phone,color: Colors.black54,),
                            ),

                           //Drop down here
                            Padding(
                              padding:EdgeInsets.only(top:23.0),
                              child:DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    //hint: new Text("Select Bank"),
                                    value: _selected,
                                    onChanged: (String newValue) {
                                      print(newValue);
                                      setState(() {
                                        _selected = newValue;
                                        _phoneNo.text = newValue;
                                      });

                                      print(_selected);
                                    },
                                    items: phoneNoList.map((Map map) {
                                      return new DropdownMenuItem<String>(
                                        value: map["phoneno"].toString(),

                                        // value: _mySelection,
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset(
                                              map["image"],
                                              width: 25,
                                            ),
                                            Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Text(map["phoneno"])
                                            ),
                                          ],
                                        ),

                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),



                            Expanded(
                              //width: MediaQuery.of(context).size.width*0.4,
                              //margin: EdgeInsets.only(left:15.0,right:15.0),
                              child: TextFormField(
                                controller: _phoneNo,
                                style: TextStyle(
                                    fontSize: 15.0
                                ),
                                decoration: InputDecoration(
                                  //hintText: "Manhattan, New York",
                                  contentPadding: EdgeInsets.only(top:20.0),
                                ),
                              ),
                            ),

                            SizedBox(
                              width:30.0,
                            ),
                          ],
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.only(left: 28.0,top:50.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:EdgeInsets.only(top:23.0),
                              child:Icon(Icons.language,color: Colors.black54,),
                            ),
                            SizedBox(
                              width:15.0,
                            ),
                            Expanded(
                              //width: MediaQuery.of(context).size.width*0.4,
                              //margin: EdgeInsets.only(left:15.0,right:15.0),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 15.0
                                ),
                                decoration: InputDecoration(
                                  //hintText: "Manhattan, New York",
                                  contentPadding: EdgeInsets.only(top:20.0),
                                  hintText: "Website",
                                ),
                              ),
                            ),

                            SizedBox(
                              width:30.0,
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
                                  Navigator.pushNamed(context, 'BusinessAddFinishs');
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
