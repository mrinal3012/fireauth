import 'package:fireauth/data/custom_widget_page.dart';
import 'package:flutter/material.dart';
import '../data/model_page.dart';


class CardDonePage extends StatefulWidget {
  // const CardDonePage({Key? key}) : super(key: key);

  List<StationModel> cardList;
  CardDonePage({required this.cardList});

  @override
  State<CardDonePage> createState() => _CardDonePageState();
}

class _CardDonePageState extends State<CardDonePage> {
  TextEditingController bankAccountController = TextEditingController();

  bool isObscure = true;
  int value = 0;
  late int textValue;

  // CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.blue.withOpacity(.5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Text(
                  "Book Train \nTicket",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
              ),
              Spacer(),
              Container(
                height: 500,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) => value == 0
                        ? Container(
                            height: 500,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50))),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.blue)),
                                      child: TextFormField(
                                        onChanged: (value) {
                                        },
                                        controller: bankAccountController,
                                        obscureText: isObscure,
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                            hintText: "Input Bank Account Number",
                                            labelText: "Input Bank Account Number",
                                            suffixIcon: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    isObscure = !isObscure;
                                                  });
                                                },
                                                icon: Icon(Icons.visibility)),
                                            prefixIcon:
                                                Icon(Icons.password_outlined),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                      )),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    "${widget.cardList[index].firstStationName}",
                                                    style: mystyleroboto(
                                                        18,
                                                        Colors.black,
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Center(
                                                      child: Text(
                                                    "To",
                                                    style: mystyleroboto(
                                                        18,
                                                        Colors.black,
                                                        FontWeight.w500),
                                                  )),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    "${widget.cardList[index].secondStationName}",
                                                    style: mystyleroboto(
                                                        18,
                                                        Colors.black,
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                // ElevatedButton(
                                //     onPressed: () async {
                                //       await users.add({
                                //         'account': 12358,
                                //         'token': 566852555,
                                //       }).then((value) => print("users add"));
                                //
                                //       setState(() {
                                //         value = 1;
                                //       });
                                //     },
                                //     child: Text("Checkout"))
                                ElevatedButton(onPressed: () {
                                  setState(() {
                                    value=1;
                                  });
                                }, child: Text("checkout"))
                              ],
                            ),
                          )
                        :
                    Container(
                            height: 500,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50))),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.blue)),
                                      child: TextFormField(
                                        controller: bankAccountController,
                                        obscureText: isObscure,
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                            hintText: "Input Account Number",
                                            labelText: "Input Account Number",
                                            suffixIcon: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    isObscure = !isObscure;
                                                  });
                                                },
                                                icon: Icon(Icons.visibility)),
                                            prefixIcon:
                                                Icon(Icons.password_outlined),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                      )),
                                ),
                                Container(
                                    height: 200,
                                    width: double.infinity,
                                    child: Image.asset("images/qrcode.png")),
                                Text(
                                    "Tocken No : ${widget.cardList[index].ticket}",
                                    style: mystyleroboto(
                                        18, Colors.black, FontWeight.w500)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Ticket Conform",
                                  style: mystyleroboto(
                                      18, Colors.black, FontWeight.w500),
                                )
                              ],
                            ),
                          )),
              )
            ],
          )),
    );
  }
}
