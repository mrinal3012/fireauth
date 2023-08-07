
import 'package:fireauth/screen/login_page.dart';
import 'package:fireauth/screen/registration_page.dart';
import 'package:fireauth/ticketbook/book_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseHelper{
  Future singup(email,password,context)async{
    try{
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      if(credential.user!.uid.isNotEmpty){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegistrationPage(),));
      }else{
        print("not valid");
      }
    }on FirebaseAuthException catch(e){
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    }

  }

  Future singin(email,password,context)async{
    try{
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      if(credential.user!.uid.isNotEmpty){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookPage(),));
      }else{
        print("not valid");
      }
    }on FirebaseAuthException catch(e){

      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }


    }

  }

}