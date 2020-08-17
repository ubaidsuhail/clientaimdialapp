import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ServicesName extends StatefulWidget {
  @override
  _ServicesNameState createState() => _ServicesNameState();
}

class _ServicesNameState extends State<ServicesName> {

  List<String> serviceImage = ["images/itlogo.jpg","images/taxImage.png","images/itlogo.jpg","images/taxImage.png","images/itlogo.jpg","images/taxImage.png","images/itlogo.jpg","images/itlogo.jpg"];
  List<String> serviceText = ["IT","TAX","IT","TAX","IT","TAX","IT","TAX"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 28.0,),
        GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'BusinessLists');
            },
            child:Container(
              width: MediaQuery.of(context).size.width*0.88,
              height: MediaQuery.of(context).size.height*0.1,
              //color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        margin: EdgeInsets.only(top: 10.0),
                        //color: Colors.green,
                        child:AutoSizeText(
                          'Med - EX Private Limited',
                          style: TextStyle(fontSize: 22.0),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 22.0,
                        ),
                      ),

                      Padding(
                          padding: EdgeInsets.only(top:10.0),
                          child:Icon(Icons.keyboard_arrow_down,size: 20.0,)
                      )
                    ],
                  ),
                  Text("Office 203 Crown Plaza"),
                ],
              ),
            )
        ),

        //Container
       SingleChildScrollView(
         child: Column(
           children: <Widget>[
             Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height*0.4,
                 margin: EdgeInsets.only(left: 5.0,right: 5.0),

                 child:  Card(
                   elevation: 2.0,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0),
                   ),
                   child:GridView.count(
                     crossAxisCount: 4,
                     //childAspectRatio:0.8 ,
                     children: List.generate(serviceImage.length, (index) {
                       return GestureDetector(
                           onTap: (){
                             print("ok");
                           },
                           child:Column(

                             children: <Widget>[
                               Container(
                                   width:50.0,
                                   height:50.0,
                                   decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                         color: Colors.grey[200],
                                       )
                                   ),
                                   child:ClipOval(
                                     child: Image(image: AssetImage(serviceImage[index]),fit: BoxFit.fill,),
                                   )
                               ),

                               SizedBox(
                                 height: 8.0,
                               ),
                               Text(serviceText[index]),
                             ],
                           )

                       );
                     }),
                   ),
                 )
             ),

             SizedBox(
               height: 10.0,
             ),

             Container(
                 margin: EdgeInsets.only(left: 5.0,right: 5.0),
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height*0.09,

             child:GestureDetector(
               onTap: (){
               Navigator.pushNamed(context, 'OtherServices');
               },
               child: Card(
                 elevation: 2.0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),

                 child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     SizedBox(width: 15.0,),
                     Icon(Icons.phonelink_ring,color: Colors.orange,size: 30.0,),

                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text("  Other Services"),
                         SizedBox(height:4.0),
                         LinearPercentIndicator(
                           width: MediaQuery.of(context).size.width*0.75,
                           lineHeight: 5.0,
                           percent: 1.0,
                           progressColor: Colors.orange,
                         ),

                       ],
                     ),

                     Padding(
                       padding: EdgeInsets.only(top:10.0),
                     child:Icon(Icons.keyboard_arrow_right,color: Colors.grey[500],),
                     )

                   ],
                 ),
               ),
             )
             ),

           ],
         ),
       ),






      ],
    );
  }
}
