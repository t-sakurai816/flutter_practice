import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  final String headerTitle;
  Header({this.headerTitle}); //ヘッダータイトルを変更できるようにする
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(headerTitle),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              //押したときの処理
            },
          ),
        )
      ],
    );
  }
}
