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
      theme: GlobalConfig.currentTheme.copyWith(
        scaffoldBackgroundColor: GlobalConfig.dark ? Colors.black : Colors.white, 
      ),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back_ios)),
                      Row(
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.person_add_alt, size: 20.0,),
                            label: const Text('邀请回答'),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.mode_edit_outline_outlined, size: 20.0,),
                            label: const Text('写回答'),
                          ),
                        ],
                      )
                    ],
                  )),
        body: Column(
            children: [
            Container(
              padding:
                EdgeInsets.only(top: 10.0, bottom: 8.0, left: GlobalConfig.padding1, right: GlobalConfig.padding1),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        '你认为《三体》中最牛的发明是什么？',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0,),
                  Row(
                    children: [
                      Text(
                        '知乎 · 5个回答 · 12个关注 >',
                        style: TextStyle(color: GlobalConfig.fontColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg"),
                    ),
                    title: const Text('Flutter'),
                    subtitle: const Text(
                      '生活就像海洋，只有意志坚定的人才能到达彼岸',
                      style: TextStyle(height: 1.5),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    trailing: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text('关注'),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.blue.shade700),
                        backgroundColor: MaterialStateProperty.all(
                            GlobalConfig.btnBgColor), // 设置背景颜色
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), // 设置圆角
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ios_share_outlined))
              ],
            ),
            Container(
                padding: EdgeInsets.only(
                  left: GlobalConfig.padding1,
                  right: GlobalConfig.padding1),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '25 人赞同了该回答',
                        style: TextStyle(color: GlobalConfig.fontColor),
                      )
                    ],
                  ),
                 const SizedBox(height: 10.0,),
              Text(
                '回归运动\n\n三体定义的黑暗森林的宇宙格局，就是文明相互攻击和毁灭，越高级的，越明白藏好自己做好清理，绝不做探测对方文明的愚蠢行为。\n\n然而归还运动跳出了这个黑暗森林法则，不玩黑暗森林打击，不但探测别的宇宙文明，而且还深入了解对方文明，而且是全宇宙的所有文明。\n\n这是一种多么自信的科技实力呀，才能跳出黑暗森林的生存法则呀',
                style: TextStyle(
                  color: GlobalConfig.fontColor2,
                  height: 1.5,
                  fontSize: 16.0,
                ),
              ) 
                ],
              ),
            ),
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
                      icon: Icon(Icons.arrow_drop_up_outlined, color: GlobalConfig.dark ? Colors.white : Colors.black,),
                      label: Text('赞同 10 K', style: TextStyle(color: GlobalConfig.dark ? Colors.white : Colors.black,),)),
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

