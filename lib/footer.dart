import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  int _selectedIndex = 1; //一番初めに選択されているもの
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];
  //アイコン
  final Map _footerIcons = {
    'Me': Icons.person,
    'Home': Icons.home,
    'Settings': Icons.settings,
  };

  //アイコンの名前
  final List _footerItemOrder = [
    'Me',
    'Home',
    'Settings',
  ];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _footerItemOrder.length; i++) {
      _bottomNavigationBarItems.add(createIcon(_footerItemOrder[i]));
    }
  }

  // アイコンを作成する
  BottomNavigationBarItem createIcon(String key) {
    return BottomNavigationBarItem(
      icon: Icon(_footerIcons[key]),
      label: key,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, //幅固定
      items: _bottomNavigationBarItems, //アイコンの名前
      currentIndex: _selectedIndex, //一番初めに選択されているもの
      onTap: _onItemTapped, //タップしたら実行される
      selectedItemColor: Colors.pinkAccent, //選択したときの色
      unselectedItemColor: Colors.black45, //選択してないときの色
    );
  }
}
