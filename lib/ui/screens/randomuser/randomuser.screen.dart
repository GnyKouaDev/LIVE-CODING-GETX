import 'package:flutter/material.dart';
import 'package:live_coding/ui/screens/randomuser/views/randomuser.view.dart';

class RandomuserScreen extends StatefulWidget {
  const RandomuserScreen({super.key});

  @override
  State<RandomuserScreen> createState() => _RandomuserScreenState();
}

class _RandomuserScreenState extends State<RandomuserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: RandomUserView(),
      ),
    );
  }
}
