import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  final String email;

  const TestPage({Key key, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xffff3a5a), Color(0xfffe494d)]),
          ),
          child: Center(child: Text(email, style: TextStyle(color: Colors.white)))),
    );
  }
}
