import 'package:demo02/common/search_input.dart';
import 'package:demo02/global_config.dart';
import 'package:demo02/home/reply_page.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({ Key? key }) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  Widget answerCard() {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const ReplyPage();
        }));
      },
      style: TextButton.styleFrom(padding: const EdgeInsets.all(0.0)),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black26,
            border: BorderDirectional(
                bottom: BorderSide(
                    color:
                        GlobalConfig.dark ? Colors.white12 : Colors.black12))),
        padding: const EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0, bottom: 10.0 ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: const CircleAvatar(
                    radius: 11.0,
                    backgroundImage: NetworkImage(
                        'https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg'),
                  ),
                ),
                Text('游牧虫', style: TextStyle(color: GlobalConfig.fontColor),)
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                    '第一，几年前我跟一个985211级别大学的物理类学科教授聊过这个问题。他很严肃的表示，使用强互作用力为工具在原子角度加工出这种水平的材料，对人类目前的物理...',
                    style: TextStyle(color: GlobalConfig.fontColor))),
            Row(
              children: [
                Text('1K赞同 · 262评论 · 十天前', style: TextStyle(color: GlobalConfig.fontColor)),
              ],
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const SearchInput(),
      ),
      body: Container(
        color: GlobalConfig.cardBackgroundColor,
        child: Column(
          children: [
            // 顶部标签
            Container(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 12.0, bottom: 8.0, right: 16.0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: TextButton(
                      onPressed: () {}, 
                      child: const Text('物理学'),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        primary: Colors.white,
                      ),
                    ), 
                    color: GlobalConfig.searchBackgroundColor,
                    height: 30.0,
                    ),
                    Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: TextButton(
                      onPressed: () {}, 
                      child: const Text('三体（书籍）'),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        primary: Colors.white,
                      ),
                    ), 
                    color: GlobalConfig.searchBackgroundColor,
                    height: 30.0,
                    ),
                    Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: TextButton(
                      onPressed: () {}, 
                      child: const Text('脑洞（网络用语）'),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        primary: Colors.white,
                      ),
                    ), 
                    color: GlobalConfig.searchBackgroundColor,
                    height: 30.0,
                    ),
                ],
              ),
            ),
            // 问题标题 介绍
            Container(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 6.0, bottom: 6.0, right: 16.0),
                alignment: Alignment.topLeft,
                child: Text(
                  '《三体》里的水滴有可能被制造出来吗?',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: GlobalConfig.dark ? Colors.white70 : Colors.black),
                )),
            Container(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 6.0, bottom: 10.0, right: 16.0),
                alignment: Alignment.topLeft,
                child: Text(
                  '如果，仅考虑其延长强相互作用力的特性，而不考虑其直角转弯的特性，那么水滴能被制造出来吗？换句话说，强相互作用力能够以影响微观物理量的方式延长吗？',
                  style:
                      TextStyle(color: GlobalConfig.fontColor, fontSize: 14.0),
                )),
              // 俩回答按钮
            Container(
              decoration: BoxDecoration(
                        border: BorderDirectional(top: BorderSide(color: GlobalConfig.dark ? Colors.white12 : Colors.black12))
                      ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: BorderDirectional(end: BorderSide(color: GlobalConfig.dark ? Colors.white12 : Colors.black12))
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.group_add),
                        label: const Text('邀请回答'),
                        style: TextButton.styleFrom(
                            primary:
                                Theme.of(context).colorScheme.secondary // 获取当前主题色
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.brush),
                      label: const Text('写回答'),
                      style: TextButton.styleFrom(
                          primary:
                              Theme.of(context).colorScheme.secondary // 获取当前主题色
                          ),
                    ),
                  ),
                ],
              ),
            ),
            // 答案汇总 筛选顺序
            Container(
              color: GlobalConfig.searchBackgroundColor,
              padding: const EdgeInsets.only(
                  top: 10.0, left: 16.0, right: 16.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('173个回答',
                      style: TextStyle(color: GlobalConfig.fontColor)),
                  PopupMenuButton(
                    itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(value: ' 质量', child: Text('按质量排序')),
                      const PopupMenuItem(value: '时间', child: Text('按时间排序')),
                    ],
                    child: Row(
                      children: [
                        Text(
                          '按质量排序',
                          style: TextStyle(color: GlobalConfig.fontColor),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: GlobalConfig.fontColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //  答案列表
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    answerCard(),
                    answerCard(),
                    answerCard(),
                    answerCard(),
                    answerCard(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
