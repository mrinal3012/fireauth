import 'package:fireauth/data/firebase_helper.dart';
import 'package:fireauth/screen/login_page.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  bool isObscure = true;
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Container(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(child: Image.asset("images/logo.png"))),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "email coun't be empty";
                                  }
                                  if (value.length < 3) {
                                    return "Invalid email";
                                  }
                                  if (!value.contains("@")) {
                                    return "Invalid user email";
                                  }
                                },
                                textInputAction: TextInputAction.next,
                                controller: emailController,
                                decoration: InputDecoration(
                                    hintText: "Input your email",
                                    labelText: "Input your email",
                                    prefixIcon: Icon(Icons.email),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "password coun't be empty";
                                  }
                                  if (value.length < 6) {
                                    return "Password must be more than 6 digits";
                                  }
                                },
                                onEditingComplete: () {
                                  if (_formkey.currentState!.validate()) {
                                    print("successful");
                                  } else {
                                    print("unsuccessful");
                                  }
                                },
                                controller: passwordController,
                                obscureText: isObscure,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    hintText: "Input your Password",
                                    labelText: "Input your password",
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isObscure = !isObscure;
                                          });
                                        },
                                        icon: Icon(Icons.visibility)),
                                    prefixIcon: Icon(Icons.password_outlined),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ))),
                        ],
                      )),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: GestureDetector(
                                  onTap: () {
                                    if (_formkey.currentState!.validate()) {
                                      print("succesful");
                                    } else {}

                                    var e = emailController.text;
                                    var p = passwordController.text;
                                    var obj =
                                        FirebaseHelper().singup(e, p, context);
                                  },
                                  child: Container(
                                    child: Image.asset("images/button.png"),
                                  ))),
                          Expanded(
                              flex: 1,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 80),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        child:
                                            Image.asset("images/facebook.png"),
                                      )),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Expanded(
                                          child: Container(
                                        child:
                                            Image.asset("images/google.webp"),
                                      )),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Expanded(
                                          child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child:
                                              Image.asset("images/phone.png"),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
