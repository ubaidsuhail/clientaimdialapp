import 'package:flutter/material.dart';


class OtherService extends StatefulWidget {
  @override
  _OtherServiceState createState() => _OtherServiceState();
}

class _OtherServiceState extends State<OtherService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
    appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.orange),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Center(child:Text("Services",style: TextStyle(color:Colors.orange,fontSize: 25.0),)),
      actions: <Widget>[
        Icon(Icons.search,color: Colors.orange,size: 25.0,),
        Text("    ")
      ],


    ),

    body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child:Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width*0.84,
            height: MediaQuery.of(context).size.height*0.065,
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08,right: MediaQuery.of(context).size.width*0.08),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color.fromARGB(0XFF, 0XE6, 0XEE, 0XF1),
            ),

            child: Row(
              children: [
                SizedBox(width:10.0),

                Icon(Icons.search,color: Color.fromARGB(0XFF, 0XBD, 0XBD, 0XBD),),


                Expanded(
                  child:TextField(
                    style: TextStyle(fontSize: 16.0,color: Color.fromARGB(0XFF, 0X33, 0X33, 0X33)),
                    decoration:InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(0XFF, 0XE6, 0XEE, 0XF1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(0XFF, 0XE6, 0XEE, 0XF1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      border: InputBorder.none,
                      fillColor: Color.fromARGB(0XFF, 0XE6, 0XEE, 0XF1),
                      filled: true,
                      hintText: "Search by city name",
                      hintStyle: TextStyle(color: Color.fromARGB(0XFF, 0XBD, 0XBD, 0XBD),fontSize: 16.0),
                      contentPadding: EdgeInsets.only(top: 1.0,left: 15.0),

                    ) ,

                  ),


                ),

                SizedBox(width:4.0),
              ],

            ),

          ),
          SizedBox(
            height: 5.0,
          ),

          Expanded(
              child:ListView.builder(
                  itemCount: 15,
                  padding: EdgeInsets.only(top: 0.0),
                  itemBuilder: (BuildContext context , int index){
                    return GestureDetector(
                      onTap: (){
                        print("Consulting service");
                      },
                        child:Container(
                          color: Colors.white,
                            child:Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Image(image: AssetImage("images/itlogo.jpg"),width: 50.0,height: 50.0,),
                                      SizedBox(width: 10.0,),
                                      Text("CONSULTING SERVICE",style: TextStyle(fontSize: 15.0),),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                  height: 1.0,
                                  color: Colors.grey[300],
                                ),
                              ],
                            ),
                        ),
                    );
                  }

              ),
          ),


        ],
      ),
    )

    );
  }
}
