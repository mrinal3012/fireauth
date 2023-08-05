import 'package:fireauth/data/firebase_helper.dart';
import 'package:fireauth/screen/home_page.dart';
import 'package:fireauth/screen/registration_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Padding(
//         padding: const EdgeInsets.only(bottom: 50),
//         child: Container(
//           child: Column(
//             children: [
//               Expanded(
//                   flex: 3,
//                   child: Container(child: Image.asset("images/logo.png"))),
//               Expanded(
//                   flex: 2,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Container(
//                         child: Column(
//                           children: [
//                             Expanded(
//                                 flex: 1,
//                                 child: Container(
//                                     child: TextFormField(
//                                       controller: emailController,
//                                       decoration: InputDecoration(
//                                           hintText: "email",
//                                           border: OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular(5))),
//                                     ))),
//                             Expanded(
//                                 flex: 1,
//                                 child: Container(
//                                     child: TextFormField(
//                                       controller: passwordController,
//                                       decoration: InputDecoration(
//                                           hintText: "Password",
//                                           border: OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular(5))),
//                                     ))),
//                           ],
//                         )),
//                   )),
//               Expanded(
//                   flex: 2,
//                   child: Container(
//                     child: Column(
//                       children: [
//                         Expanded(
//                             flex: 2,
//                             child: GestureDetector(
//                                 onTap: () {
//                                   var e = emailController.text;
//                                   var p = passwordController.text;
//                                   var obj = FirebaseHelper().singup(e, p, context);
//                                   // Navigator.of(context).push(MaterialPageRoute(
//                                   //   builder: (context) => LoginPage(),
//                                   // ));
//                                 },
//                                 child: Container(
//                                   child: Image.asset("images/button.png"),
//                                 ))),
//                         Expanded(
//                             flex: 1,
//                             child: Center(
//                               child: Padding(
//                                 padding:
//                                 const EdgeInsets.symmetric(horizontal: 80),
//                                 child: Row(
//                                   children: [
//                                     Expanded(
//                                         child: Container(
//                                           child: Image.asset("images/facebook.png"),
//                                         )),
//                                     SizedBox(
//                                       width: 30,
//                                     ),
//                                     Expanded(
//                                         child: Container(
//                                           child: Image.asset("images/google.webp"),
//                                         )),
//                                     SizedBox(
//                                       width: 30,
//                                     ),
//                                     Expanded(
//                                         child: GestureDetector(
//                                           onTap: () {},
//                                           child: Container(
//                                             child: Image.asset("images/phone.png"),
//                                           ),
//                                         )),
//                                   ],
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                   )),
//             ],
//           ),
//         ),
//       ),
//
//       // Center(
//       //   child: ElevatedButton(onPressed: () {
//       //     FirebaseAuth.instance.createUserWithEmailAndPassword(
//       //         email: "mrinalpalit.cse@gmail.com",
//       //         password: "mr1234");
//       //   }, child: Text("Test Firebase")),
//       // ),
//     );
//   }
// }
