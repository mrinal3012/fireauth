import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/data/firebase_helper.dart';
import 'package:fireauth/screen/singup_page.dart';
import 'package:fireauth/ticketbook/book_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Container(
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
                              controller: emailController,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  labelText: "Input your email",
                                  hintText: "Input your email",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ))),
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: TextFormField(
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
                                      borderRadius: BorderRadius.circular(5))),
                            ))

                        ),
                      ],
                    )),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      var e = emailController.text;
                                      var p = passwordController.text;
                                      var obj = FirebaseHelper()
                                          .singin(e, p, context);
                                    },
                                    child: Container(
                                      child: Image.asset("images/login.png"),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: Text("Forgot Password",
                                        style: mystyleroboto(
                                            13,
                                            Colors.black.withOpacity(.8),
                                            FontWeight.w700)))
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 80),
                                child: Row(
                                  children: [
                                    Text("I dont have a account?",
                                        style: mystyleroboto(
                                            15,
                                            Colors.black.withOpacity(.8),
                                            FontWeight.w800)),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) => SingUpPage(),
                                          ));
                                        },
                                        child: Text("Register",
                                            style: mystyleroboto(15,
                                                Colors.cyan, FontWeight.w800)))
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
    );
  }
}
