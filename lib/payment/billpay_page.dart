import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/payment/payment_page.dart';
import 'package:flutter/material.dart';

import '../data/model_page.dart';


class BillPayPage extends StatefulWidget {
  // const BillPayPage({Key? key}) : super(key: key);

  List<StationModel> modelList;
  BillPayPage({required this.modelList});

  @override
  State<BillPayPage> createState() => _BillPayPageState();
}

class _BillPayPageState extends State<BillPayPage> {
  
  List<StationModel> addticket=[];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            color: Colors.transparent,
            height: double.infinity,
            width: double.infinity,
            child:
            Column(children: [
              Expanded(child: Container(
                height: 300,
                width: double.infinity,
                child:ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),
                              color: Colors.white, borderRadius: BorderRadius.circular(5)),
                          height: 280,
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text("Ticket Number : ${widget.modelList[index].ticket}",
                                  style:mystyleroboto(18,Colors.black,FontWeight.w500)),
                              Row(children: [
                                Expanded( flex: 4, child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${widget.modelList[index].firstStationName} \n To",style:mystyleroboto(18,Colors.black,FontWeight.w500)),
                                      Text("${widget.modelList[index].secondStationName}",style:mystyleroboto(18,Colors.black,FontWeight.w500)),

                                      Row(children: [

                                        TextButton(
                                            onPressed: () {

                                              widget.modelList[index].count>0? widget.modelList[index].count--:
                                              widget.modelList[index].count==0;
                                              setState(() {});

                                            },
                                            child: Icon(
                                              Icons.remove,
                                              size: 25,
                                            )),

                                        Text("${widget.modelList[index].count}",style:mystyleroboto(18,Colors.black,FontWeight.w500)),

                                        TextButton(
                                            onPressed: () {
                                              widget.modelList[index].count++;
                                              setState(() {

                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              size: 25,
                                            )),
                                      ],),

                                      Text("Total Amount\n ${widget.modelList[index].amount! * widget.modelList[index].count} .00 Rs|-",
                                          style:mystyleroboto(18,Colors.black,FontWeight.w500)
                                      )
                                    ],
                                  ),
                                ),),
                                Expanded( flex: 3, child: Image.asset("images/qrcode.png"))
                              ],),
                              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xff015281)),onPressed: () {
                                
                                addticket.add(widget.modelList[index]);
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>PaymentPage(modelList: addticket),));
                                
                              }, child: Text("Payment",style: mystyleroboto(18,Colors.black,FontWeight.w500)))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),),
              )),

              Expanded(child: Container(
                height: 300,
                width: double.infinity,
                child: Image.asset("images/trainpic.png"),
              ))
            ],)
        ),
      ),
    );
  }
}
