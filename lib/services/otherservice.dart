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
      automaticallyImplyLeading: false,
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
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10.0,right: 10.0),
            height: 1.0,
            color: Colors.grey[300],
          ),
          SizedBox(
            height: 5.0,
          ),

          Expanded(
              child:ListView.builder(
                  itemCount: 15,
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
