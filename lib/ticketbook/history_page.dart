import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/data/model_page.dart';
import 'package:fireauth/screen/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {


  // final FirebaseAuth _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [

            Container(height: 100,
                color: Colors.white,
                width: double.infinity,
                child: Column(children: [
                  Container(
                    height: 94,
                    color: Colors.white,
                    child: Row(
                      children: [

                        Expanded(flex: 2, child: Container(height: 50,
                          width: 50,
                          child: Image(image: AssetImage("images/profile.png")),
                        )),
                        // Spacer(),
                        Expanded(flex: 8, child: Container(

                          child:TextButton(onPressed: () {

                          }, child:Text("Profile",
                            style:mystyleroboto(18,Colors.black,FontWeight.w500),
                          ),
                          ),)),
                      ],),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 5),
                    child: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 5),
                    child: Container(
                      height: 2,
                      color: Colors.red,
                    ),
                  ),

                ],)),


            Container(height: 100,
                color: Colors.white,
                width: double.infinity,
                child: Column(children: [
                  Container(
                    height: 94,
                    color: Colors.white,
                    child: Row(
                      children: [

                        Expanded(flex: 2, child: Container(height: 50,
                          width: 50,
                          child: Image(image: AssetImage("images/history.png")),
                        )),
                        // Spacer(),
                        Expanded(flex: 8, child: Container(

                          child:TextButton(onPressed: () {

                          }, child:Text("Booking History",
                            style:mystyleroboto(18,Colors.black,FontWeight.w500),
                          ),
                          ),)),
                      ],),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 5),
                    child: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 5),
                    child: Container(
                      height: 2,
                      color: Colors.red,
                    ),
                  ),

                ],)),
            Container(height: 100,
                color: Colors.white,
                width: double.infinity,
                child: Column(children: [
                  Container(
                    height: 94,
                    color: Colors.white,
                    child: Row(
                      children: [

                        Expanded(flex: 2, child: Container(height: 50,
                          width: 50,
                          child: Image(image: AssetImage("images/cancle.png")),
                        )),
                        // Spacer(),
                        Expanded(flex: 8, child: Container(

                          child:TextButton(onPressed: () {

                          }, child:Text("Cancel Tickets",
                            style:mystyleroboto(18,Colors.black,FontWeight.w500),
                          ),
                          ),)),
                      ],),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 5),
                    child: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 5),
                    child: Container(
                      height: 2,
                      color: Colors.red,
                    ),
                  ),

                ],)),
            Container(height: 100,
                color: Colors.white,
                width: double.infinity,
                child: Column(children: [
                  Container(
                    height: 94,
                    color: Colors.white,
                    child: Row(
                      children: [

                        Expanded(flex: 2, child: Container(height: 50,
                          width: 50,
                          child: Image(image: AssetImage("images/booking.jpg")),
                        )),
                        // Spacer(),
                        Expanded(flex: 8, child: Container(

                          child:TextButton(onPressed: () {

                          }, child:Text("All Booked Tickets",
                            style:mystyleroboto(18,Colors.black,FontWeight.w500),
                          ),
                          ),)),
                      ],),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 5),
                    child: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 5),
                    child: Container(
                      height: 2,
                      color: Colors.red,
                    ),
                  ),

                ],)),Container(height: 100,
                color: Colors.white,
                width: double.infinity,
                child: Column(children: [
                  Container(
                    height: 94,
                    color: Colors.white,
                    child: Row(
                      children: [

                        Expanded(flex: 2, child: Container(height: 50,
                          width: 50,
                          child: Image(image: AssetImage("images/custom.png")),
                        )),
                        // Spacer(),
                        Expanded(flex: 8, child: Container(

                          child:TextButton(onPressed: () {

                          }, child:Text("Customer Support",
                            style:mystyleroboto(18,Colors.black,FontWeight.w500),
                          ),
                          ),)),
                      ],),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 5),
                    child: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 5),
                    child: Container(
                      height: 2,
                      color: Colors.red,
                    ),
                  ),

                ],)),Container(height: 100,
                color: Colors.white,
                width: double.infinity,
                child: Column(children: [
                  Container(
                    height: 94,
                    color: Colors.white,
                    child: Row(
                      children: [

                        Expanded(flex: 2, child: Container(height: 50,
                          width: 50,
                          child: Image(image: AssetImage("images/logout.png")),
                        )),
                        // Spacer(),
                        Expanded(flex: 8, child: Container(

                          child:TextButton(onPressed: () {
                            showDialog(context: context, builder: (context) => AlertDialog(
                                title: Text("Alert !!"),
                                content: Text("This will singout you form this software !"),
                              actions: [
                                TextButton(onPressed: () {
                                  Navigator.pop(context);
                                }, child: Text("CANCEL")),
                                TextButton(onPressed: () async {
                                  // await FirebaseAuth.instance.signOut();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
                                  // await _auth.instance.singOut();
                                }, child: Text("ACCEPT")),
                              ],

                            ),);
                          }, child:Text("Logout",
                            style:mystyleroboto(18,Colors.black,FontWeight.w500),
                          ),
                          ),)),
                      ],),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 5),
                    child: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 5),
                    child: Container(
                      height: 2,
                      color: Colors.red,
                    ),
                  ),

                ],)),

          ],
        ),
      ),

      // Container(width: double.infinity,
      //     height: double.infinity,
      //     child: ListView.builder(
      //       itemCount: historyList.length,
      //       itemBuilder: (context, index) =>
      //           Container(height: 100,
      //               color: Colors.white,
      //               width: double.infinity,
      //               child: Column(children: [
      //                 Container(
      //                   height: 94,
      //                   color: Colors.white,
      //                   child: Row(
      //                     children: [
      //
      //                     Expanded(flex: 2, child: Container(height: 50,
      //                       width: 50,
      //                       child: Image(image: AssetImage("${historyList[index].image}")),
      //                     )),
      //                     // Spacer(),
      //                     Expanded(flex: 8, child: Container(
      //
      //                       child:TextButton(onPressed: () {
      //
      //                       }, child:Text("${historyList[index].name}",
      //                         style:mystyleroboto(18,Colors.black,FontWeight.w500),
      //                       ),
      //                       ),)),
      //                   ],),
      //                 ),
      //
      //                 Padding(
      //                   padding: const EdgeInsets.only(right: 20,left: 5),
      //                   child: Container(
      //                     height: 2,
      //                     color: Colors.black,
      //                   ),
      //                 ),
      //                 SizedBox(height: 2,),
      //
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 20,right: 5),
      //                   child: Container(
      //                     height: 2,
      //                     color: Colors.red,
      //                   ),
      //                 ),
      //
      //               ],))
      //       ,)
      // ),
    );
  }
}
class Decoration{

  inmage(){
    Padding(
      padding: const EdgeInsets.only(right: 20,left: 5),
      child: Container(
        height: 2,
        color: Colors.black,
      ),
    );
    SizedBox(height: 2,);

    Padding(
    padding: const EdgeInsets.only(left: 20,right: 5),
    child: Container(
    height: 2,
    color: Colors.red,
    ),
    );
  }


}