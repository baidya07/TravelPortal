import 'package:flutter/material.dart';
class BlankPage extends StatelessWidget {
  const BlankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: Text(
            'Hello World!!!'
          ),
        ),
      ),
    );
  }
}
