import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const Jobs());
}

class Jobs extends StatefulWidget {
  const Jobs({ Key? key }) : super(key: key);

  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    );
  }
}
