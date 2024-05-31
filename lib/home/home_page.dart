import 'hot.dart';
import 'recommend.dart';

import 'ask_page.dart';
import 'follow.dart';

import '../global_config.dart';
import 'package:flutter/material.dart';

import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget barSearch() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
      child: Row(
      children: <Widget>[
        Expanded(
          child: TextButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const SearchPage();
                }));
              },
              icon: Icon(
                Icons.search,
                color: GlobalConfig.fontColor,
                size: 16.0,
              ),
              label: Text(
                '苹果摄像头损坏',
                style: TextStyle(
                  color: GlobalConfig.fontColor,
                ),
              )),
        ),
        Container(
          height: 14.0,
          width: 1.0,
          decoration: BoxDecoration(
            border: BorderDirectional(start: BorderSide(color: GlobalConfig.fontColor, width: 1.0))
          ),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const AskPage();
            }));
          }, 
          icon: Icon(Icons.border_color, color: GlobalConfig.fontColor, size: 14.0,), 
          label: Text('提问', style: TextStyle(color: GlobalConfig.fontColor),),
          )
      ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
          title: barSearch(),
          bottom: TabBar(
            labelColor: GlobalConfig.dark ? const Color(0xFF63FDD9) : Colors.blue,
            unselectedLabelColor: GlobalConfig.dark ? Colors.white : Colors.black,
            tabs: [
              const Tab(text: '关注',),
              const Tab(text: '推荐',),
              const Tab(text: '热榜',),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Follow(),
            Recommend(),
            Hot(),
          ],
        ),
      ),
      );
  }
}