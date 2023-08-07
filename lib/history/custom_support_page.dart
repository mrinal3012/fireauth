import 'package:fireauth/data/custom_widget_page.dart';
import 'package:flutter/material.dart';

class CustomSupportPage extends StatefulWidget {
  const CustomSupportPage({Key? key}) : super(key: key);

  @override
  State<CustomSupportPage> createState() => _CustomSupportPageState();
}

class _CustomSupportPageState extends State<CustomSupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Center(child: Text("CustomSupport",style: mystyleroboto(22,Colors.white,FontWeight.w700))),),
      backgroundColor: Colors.blue,
      body:Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/trainpic.png"))),
        child: Column(children: [
          Container(height: 200,),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:40),
            child: Container(height: 150,
              width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Email: metro@gmail.com",style: mystyleroboto(18,Colors.black,FontWeight.w700),),
              SizedBox(height: 10,),
              Text("Phone: 123456789",style: mystyleroboto(18,Colors.black,FontWeight.w700),),
              SizedBox(height: 10,),
              Text("Fax: +1-907-555-1234",style: mystyleroboto(18,Colors.black,FontWeight.w700),),
              SizedBox(height: 10,),
              Text("Office: Q9FJ+QCV, Begum Rokeya Avenue, Dhaka",style: mystyleroboto(18,Colors.black,FontWeight.w700),),
            ],),),
          )
        ],)
      ),
    );
  }
}
