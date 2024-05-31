import 'package:demo02/global_config.dart';
import 'package:flutter/material.dart';

class ReplyPage extends StatefulWidget {
  const ReplyPage({ Key? key }) : super(key: key);

  @override
  State<ReplyPage> createState() => _ReplyPageState();
}

class _ReplyPageState extends State<ReplyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
      height: 36.0,
      child: Row(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pop(context); 
              },
          child: Icon(Icons.arrow_back, color: GlobalConfig.fontColor,)
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "搜索比乎内容",
                hintStyle: TextStyle(color: GlobalConfig.fontColor)
                ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.share, size: 16.0, color: GlobalConfig.fontColor,),),
          IconButton(onPressed: () {}, icon: Icon(Icons.list, color: GlobalConfig.fontColor,),)
        ],
      ),
    )),
        body: Column(
            children: [
            Container(
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.white10))),
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 16.0),
                child: const Text(
                  '你认为《三体》中最牛的发明是什么？',
                  style: TextStyle(fontSize: 16.0),
                )),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: BorderDirectional(end: BorderSide(color: Colors.white10))
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.brush),
                        label: const Text('写回答'),
                        style: TextButton.styleFrom(
                          primary: Colors.tealAccent,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('查看全部10000个回答 >'),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                color: GlobalConfig.cardBackgroundColor,
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: const CircleAvatar(
                        backgroundImage: NetworkImage("https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg"),
                      ),
                        title: const Text('Flutter'),
                        subtitle: const Text('生活就像海洋，只有意志坚定的人才能到达彼岸', style: TextStyle(height: 1.5),),
                        trailing:  ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('关注')),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  '回归运动\n\n三体定义的黑暗森林的宇宙格局，就是文明相互攻击和毁灭，越高级的，越明白藏好自己做好清理，绝不做探测对方文明的愚蠢行为。\n\n然而归还运动跳出了这个黑暗森林法则，不玩黑暗森林打击，不但探测别的宇宙文明，而且还深入了解对方文明，而且是全宇宙的所有文明。\n\n这是一种多么自信的科技实力呀，才能跳出黑暗森林的生存法则呀',
                  style: TextStyle(
                    color: Colors.white70,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
              ))
            ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: GlobalConfig.cardBackgroundColor,
          child: SizedBox(
            height: 50.0,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(0.0),
                  height: 30.0,
                  margin: const EdgeInsets.only(left: 16.0),
                  child: TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(top: 0.0, left: 8.0, right: 12.0, bottom: 0.0),
                        alignment: Alignment.center,
                        backgroundColor: GlobalConfig.searchBackgroundColor,
                      ),
                      icon: const Icon(Icons.arrow_drop_up_outlined, color: Colors.white,),
                      label: const Text('赞同 10 K', style: TextStyle(color: Colors.white),)),
                ),
                Container(
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(2.0)),
                      color: GlobalConfig.searchBackgroundColor,
                    ),
                    margin: const EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      onPressed: () {},
                      padding: const EdgeInsets.all(0.0),
                      icon: const Icon(Icons.arrow_drop_down),
                    )),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: GlobalConfig.fontColor,
                              size: 18.0,
                            ),
                            Text(
                              '感谢',
                              style: TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: GlobalConfig.fontColor,
                              size: 18.0,
                            ),
                            Text(
                              '收藏',
                              style: TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Column(
                          children: [
                            Icon(
                              Icons.mode_comment,
                              color: GlobalConfig.fontColor,
                              size: 18.0,
                            ),
                            Text(
                              '评论',
                              style: TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

