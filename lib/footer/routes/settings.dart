import 'package:flutter/material.dart';
import '../../header.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Text('設定'),
      ),
    );
  }
}