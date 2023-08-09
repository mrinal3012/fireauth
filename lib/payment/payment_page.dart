import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/data/model_page.dart';
import 'package:fireauth/payment/card_done_page.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  // const PaymentPage({Key? key}) : super(key: key);

  List<StationModel> modelList;
  PaymentPage({required this.modelList});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  List<StationModel> addCardList=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Center(child: Text("Card")),
      //     backgroundColor: Colors.white.withOpacity(.1)),


      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: GestureDetector(
              onTap: () {
                addCardList.add(widget.modelList[index]);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardDonePage(cardList: addCardList)));

              },
              child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(.1),borderRadius: BorderRadius.circular(12)),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text("${paymentList[index].name}",style:mystyleroboto(18,Colors.black,FontWeight.w500)),
                      // Text("${widget.modelList[index].firstStationName}"),
                      // Text("${widget.modelList[index].secondStationName}"),
                      Spacer(),
                      Container(height: 80,width: 80,
                        child: Image.asset("${paymentList[index].image}"),)
                    ],
                  ),
                ),
              ),
            ),
          ),),
      ),
    );
  }
}
