import 'package:flutter/material.dart';
import 'package:flutter_demo_ctrip/pages/home_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  
  final _defaultColor = Color(0xff8a8a8a);
  final _activeColor = Color(0xff50b4ed);
  
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0,
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
        ],
//        physics: Na,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
          },
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("images/xiecheng.png", width: 22, height: 22,),
            activeIcon: Image.asset('images/xiecheng_active.png',width: 22, height: 22,),
            title: Text("首页", style: TextStyle(
                  color: _currentIndex != 0 ? _defaultColor: _activeColor),
            )
            )
          ]),
    );
  }
}
