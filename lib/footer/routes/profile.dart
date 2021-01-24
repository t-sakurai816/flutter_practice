import 'package:flutter/material.dart';
import '../../header.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Text('プロフィール'),
      ),
    );
  }
}
