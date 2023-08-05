import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  TextEditingController nameController=TextEditingController();
  TextEditingController fathernameController=TextEditingController();
  TextEditingController mothernameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  TextEditingController nationalityController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.white.withOpacity(.6),title:
      Center(child: Text("Registration Form",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),)),),
      body: Padding(
        padding: const EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 20),
        child: Container(
          height: double.infinity,
          child: Column(children: [
            Expanded(
                flex: 1,
                child: Container(
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ))),
            Expanded(
                flex: 1,
                child: Container(
                    child: TextFormField(
                      controller: fathernameController,
                      decoration: InputDecoration(
                          hintText: "Father Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ))),
            Expanded(
                flex: 1,
                child: Container(
                    child: TextFormField(
                      controller: mothernameController,
                      decoration: InputDecoration(
                          hintText: "Mother Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ))),
            Expanded(
                flex: 1,
                child: Container(
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ))),
            Expanded(
                flex: 1,
                child: Container(
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: "Address",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ))),
            Expanded(
                flex: 1,
                child: Container(
                    child: TextFormField(
                      controller: nationalityController,
                      decoration: InputDecoration(
                          hintText: "nationality",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ))),

            Expanded(flex: 1, child: Container(width: double.infinity,height: double.infinity,
            child:Row(children: [
              ElevatedButton(onPressed: () {

              }, child: Text("Submit")),
              Spacer(),
              ElevatedButton(onPressed: () {

              }, child: Text("Skip")),
            ],),
            )
            )
          ]),
        ),
      ),
    );
  }
}
