import 'package:calculatur/screen/frist_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(HomeScreen());
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: FristScreen(),
    );
  }
}
