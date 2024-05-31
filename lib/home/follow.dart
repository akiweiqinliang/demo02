import 'package:demo02/home/reply_page.dart';

import '../global_config.dart';
import 'package:flutter/material.dart';

import 'article.dart';

class Follow extends StatefulWidget {
  const Follow({ Key? key }) : super(key: key);

  @override
  State<Follow> createState() => _FollowState();
}

class _FollowState extends State<Follow> {

  Widget billboard() {
    return Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 0.0, bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0, bottom: 12.0),
        child: Column(
          children: [
            Text(
              '还在羡慕别人的好工作？免费领取价值1980元的注册会计师课程，为自己充电！',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16.0,
                // fontWeight: FontWeight.bold,
                height: 1.5,
                color: GlobalConfig.dark ? Colors.white70 : Colors.black,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage("https://pic1.zhimg.com/50/v2-0c9de2012cc4c5e8b01657d96da35534_s.jpg"),
                    radius: 10.0,
                  ),
                  const SizedBox(width: 6.0,),
                  Text('壹点灵', style: TextStyle(color: GlobalConfig.fontColor),),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 10.0),
              child: AspectRatio(
                aspectRatio: 3.0 / 1.5,
                child: Container(
                  foregroundDecoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    image: DecorationImage(
                      image: NetworkImage('https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg'),
                      centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                    ),
                  ),
                ),
                ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 10.0),
              child: Text(
                '苦苦挽留？死缠烂打？你的方法真的对吗？下载壹点灵，测一测复合几率，教你一步步处理好你的感情问题。',
                style: TextStyle(
                  color: GlobalConfig.dark ? Colors.white70 : Colors.black,
                  height: 1.5,
                ),
                ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(child: Text('广告 · AppStore 评分：4.7 · 立即下载', style: TextStyle(color: GlobalConfig.fontColor),)),
                  Icon(Icons.close, color: GlobalConfig.fontColor,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WordCard(context: context, article: articleList[0]),
          WordCard(context: context, article: articleList[1]),
          WordCard(context: context, article: articleList[2]),
          billboard(),
          WordCard(context: context, article: articleList[3])
        ],
      ),
    );
  }
}

class WordCard extends StatelessWidget {
  const WordCard({
    Key? key,
    required this.context,
    required this.article,
  }) : super(key: key);

  final BuildContext context;
  final Article article;

  @override
  Widget build(BuildContext context) {
    Widget markWidget;
    if (article.imgUrl == null) {
      markWidget = Text(
        article.mark,
        style: TextStyle(height: 1.5, color: GlobalConfig.fontColor),
      );
    } else {
      markWidget = Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(
                article.mark,
                style: TextStyle(height: 1.5, color: GlobalConfig.fontColor),
              )),
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 3.0 / 2.0,
              child: Container(
                margin: const EdgeInsets.only(left: 8.0),
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(article.imgUrl ?? ''),
                    centerSlice: const Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                  ), 
                  borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                ),
              ),
              ),
          )
        ],
      );
    }
    return Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 0.0, bottom: 10.0),
      padding:const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const ReplyPage();
          }));
        },
        child: Column(
          children: [
            // 头像那行
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 10.0, bottom: 6.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(article.headUrl),
                    radius: 11.0,
                  ),
                  const SizedBox(width: 10.0,),
                  Text(
                    '${article.user}  ${article.action} · ${article.time}',
                    style: TextStyle(
                      color: GlobalConfig.fontColor
                    ),
                    ),
                ],
              ),
            ),
            // 标题
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 6.0, bottom: 2.0),
              child: Text(article.title, style: TextStyle(
                fontSize: 16.0,
                color: GlobalConfig.dark ? Colors.white70 : Colors.black,
              ),),
            ),
            // 详情
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 6.0),
              child: markWidget
            ),
          
            Container(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('${article.agreeNum}赞同 · ${article.commentNum}评论', style: TextStyle(color: GlobalConfig.fontColor),)),
                  PopupMenuButton(
                    icon: Icon(Icons.more_horiz, color: GlobalConfig.fontColor,),
                      itemBuilder: (BuildContext context) => [
                            const PopupMenuItem(
                                value: '选项1的值', child: Text('屏蔽这个问题')),
                            const PopupMenuItem(
                                value: '选项2的值', child: Text('取消关注 learner')),
                            const PopupMenuItem(
                                value: '选项3的值', child: Text('举报')),
                          ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
