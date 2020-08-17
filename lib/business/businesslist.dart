import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BusinessList extends StatefulWidget {
  @override
  _BusinessListState createState() => _BusinessListState();
}

class _BusinessListState extends State<BusinessList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading:GestureDetector(
          onTap: (){
          Navigator.pop(context);
          },
          child:Icon(Icons.close,color: Colors.black,size: 25.0,),
        ),

        title: Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.18),
          child:Text("Locations",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),)
        ),

      ),


     body: SingleChildScrollView(
       child: Column(
         children: <Widget>[

           GestureDetector(
             onTap: (){
               print("consultancy");
             },
             child:Container(
               margin: EdgeInsets.only(top: 10.0),
               color: Colors.white,
               child:Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   SizedBox(width: 15.0,),
                   Icon(Icons.account_box,color: Colors.blue,size: 50.0,),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                      Container(
                        width:MediaQuery.of(context).size.width*0.7,
                        child:AutoSizeText(
                          'Aimdial Consultancy',
                          style: TextStyle(fontSize: 16.0),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 16.0,
                        ),
                      ),

                       SizedBox(
                         height: 1.0,
                       ),

                       Container(
                         width:MediaQuery.of(context).size.width*0.7,
                         child:AutoSizeText(
                         'Gulshan Iqbal,Block M , Near Millenium',
                         style: TextStyle(fontSize: 13.0,color: Colors.grey[600]),
                         maxLines: 1,
                         overflow: TextOverflow.ellipsis,
                         minFontSize: 13.0,
                       ),
                       ),
                     ],
                   ),

                   Icon(Icons.done,color: Colors.blue,),


                 ],
               ),
             )
           ),


           GestureDetector(
               onTap: (){
                 Navigator.pushNamed(context, 'BusinessNames');
               },
               child:Container(
                 margin: EdgeInsets.only(top: 35.0),
                color: Colors.white,

                 child:Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     SizedBox(width: 25.0,),
                     Icon(Icons.add,color: Colors.black,size: 28.0,),
                     SizedBox(width: 14.0,),
                     Container(
                       width:MediaQuery.of(context).size.width*0.7,
                       child:AutoSizeText(
                         'Add a new business',
                         style: TextStyle(fontSize: 15.0),
                         maxLines: 1,
                         overflow: TextOverflow.ellipsis,
                         minFontSize: 15.0,
                       ),
                     ),


                   ],
                 ),
               )
           ),



         ],
       ),
     ),
    );
  }
}
