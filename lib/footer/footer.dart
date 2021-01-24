import 'package:flutter/material.dart';
import 'routes/profile.dart';
import 'routes/home.dart';
import 'routes/settings.dart';

class RootWidget extends StatefulWidget {
  @override
  _RootWidget createState() => _RootWidget();
}

class _RootWidget extends State {
  int _selectedIndex = 1; //一番初めに選択されているもの
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  // ignore: non_constant_identifier_names
  final Map _RootWidgetIcons = {
    'プロフィール': {'icon': Icons.person, 'route': Profile()},
    'ホーム': {'icon': Icons.home, 'route': Home()},
    '設定': {'icon': Icons.settings, 'route': Settings()}
  };

  //アイコンの名前
  // ignore: non_constant_identifier_names
  final List _RootWidgetItemOrder = [
    'プロフィール',
    'ホーム',
    '設定',
  ];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _RootWidgetItemOrder.length; i++) {
      _bottomNavigationBarItems.add(createIcon(_RootWidgetItemOrder[i]));
    }
  }

  // アイコンを作成する
  BottomNavigationBarItem createIcon(String key) {
    return BottomNavigationBarItem(
      icon: Icon(_RootWidgetIcons[key]['icon']),
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
    return Scaffold(
      body: _RootWidgetIcons[_RootWidgetItemOrder.asMap()[_selectedIndex]]
          ['route'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //幅固定
        items: _bottomNavigationBarItems, //アイコンの名前
        currentIndex: _selectedIndex, //一番初めに選択されているもの
        onTap: _onItemTapped, //タップしたら実行される
        selectedItemColor: Colors.pinkAccent, //選択したときの色
        unselectedItemColor: Colors.black45, //選択してないときの色
      ),
    );
  }
}
