
import 'package:demo02/my/my_page.dart';
import 'package:demo02/notice/notice_page.dart';

import '../idea/idea_page.dart';
import '../home/home_page.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({ Key? key }) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {

  int _currentIndex = 0;
  
  final _navigationViews = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.assessment),
      label: '首页',
      ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.all_inclusive),
      label: '想法',
      ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add_shopping_cart),
      label: '市场',
      ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add_alert),
      label: '通知',
      ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.perm_identity),
      label: '我的',
      ),
  ]; 
  
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (_currentIndex) {
      case 0:
        page = const HomePage();
        break;
      case 1:
        page = const IdeaPage();
        break;
      case 3:
        page = const NoticePage();
        break;
      case 4:
        page = const MyPage();
        break;
      default:
      page = const HomePage();
        // throw UnimplementedError('no widget for $_currentIndex');
    }
    var mainArea = AnimatedSwitcher(duration: const Duration(milliseconds: 200), child: page,);
      return LayoutBuilder(
              builder: (context, covariant) {
                return Scaffold(
                  body: Center(
                    child: Column(
                      children: [
                        Expanded(child: mainArea),
                      ],
                    ),
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed, // Fixed 
                    // backgroundColor: Colors.black,
                    // selectedItemColor: Colors.tealAccent,
                    // unselectedItemColor: Colors.white60,
                    items: _navigationViews,
                    currentIndex: _currentIndex,
                    onTap:(value) {
                      setState(() {
                        _currentIndex = value;
                      });
                    },
                    ),
                );
              }
            );
        
  }
}