import 'package:flutter/material.dart';

class BestDealsModel extends StatefulWidget {
  // final String offer;
  // final String day;
  // final String image;
  const BestDealsModel({super.key, 
  //required this.offer, required this.day, required this.image
  });

  @override
  State<BestDealsModel> createState() => _BestDealsModelState();
}

class _BestDealsModelState extends State<BestDealsModel> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Padding(
                         padding: EdgeInsets.only(top: 20,left: 20),
                         child: Row(children: [
                          Text("GET 20%",style: TextStyle(
                            color: Colors.white,fontSize: 29
                          ),),
                          Text("OFF",
                                style:
                                    TextStyle(color: Colors.white, 
                                    fontSize: 24),
                              )
                         ],),
                       ),
                       SizedBox(
                        height: 10,
                       ),
                       Padding(
                         padding: EdgeInsets.only(left: 20),
                         child: Text("For Today",style: TextStyle(
                          color: Colors.white,fontSize: 20
                         ),),
                       ),
                      ],
                    ),
    );
    
  }
}