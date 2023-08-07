import 'package:fireauth/data/custom_widget_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white.withOpacity(.8)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        child: Container(
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [

            Expanded(flex: 1,child: Text("Name          : my name",style: mystyleroboto(18,Colors.black,FontWeight.w700),),),
            Expanded(flex: 1,child: Text("Father Name   : father name",style: mystyleroboto(18,Colors.black,FontWeight.w700),),),
            Expanded(flex: 1,child: Text("Mother Name   : mother name",style: mystyleroboto(18,Colors.black,FontWeight.w700),),),
            Expanded(flex: 1,child: Text("Email address : myemail@gmail.com",style: mystyleroboto(18,Colors.black,FontWeight.w700),),),
            Expanded(flex: 1,child: Text("Address       : my address",style: mystyleroboto(18,Colors.black,FontWeight.w700),),),
            Expanded(flex: 1,child: Text("Nationality   : my nationality",style: mystyleroboto(18,Colors.black,FontWeight.w700),),),
            Expanded(flex: 8,child: Container(width: double.infinity,height: double.infinity, 
              child:Image.asset("images/trainpic.png") ,))

          ]),
        ),
      ),
    );
  }
}
