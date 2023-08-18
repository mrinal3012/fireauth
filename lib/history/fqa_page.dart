import 'package:flutter/material.dart';

class FQAPage extends StatefulWidget {
  const FQAPage({Key? key}) : super(key: key);

  @override
  State<FQAPage> createState() => _FQAPageState();
}

class _FQAPageState extends State<FQAPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FQA Page"),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightBlue,
      ),

    );
  }
}
