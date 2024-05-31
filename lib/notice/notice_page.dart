import 'package:flutter/material.dart';
import '../global_config.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({ Key? key }) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalConfig.cardBackgroundColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {
                // Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios, color: GlobalConfig.dark ? Colors.white : Colors.black,)),
        title: const Center(child: Text('消息')),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cleaning_services_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.maps_ugc_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10.0, right: 16.0, left: 16.0),
              color: GlobalConfig.cardBackgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextBtn(
                    icon: Icons.mode_comment_outlined,
                    buttonText: '评论转发',
                    onPressed: () {},
                    ),
                  CustomTextBtn(
                    icon: Icons.favorite_border_rounded,
                    buttonText: '赞同喜欢',
                    onPressed: () {},
                  ),
                  CustomTextBtn(
                    icon: Icons.star_border_rounded,
                    buttonText: '收藏了我',
                    onPressed: () {},
                    ),
                  CustomTextBtn(
                    icon: Icons.face_retouching_natural,
                    buttonText: '新增关注',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: CustomIconCard(
            onPressed:() {},
            title: '邀请回答',
            detail: '点击查收新增邀请回答',
            time: '2022-09-19',
            showBubble: true,
            bubbleCount: 35,
            icon: Icons.post_add,
            iconBgColor: Colors.blue.shade600,
          ),
        ),
        
        CustomIconCard(
          onPressed:() {},
          title: '系统消息',
          detail: '系统通知',
          time: '2022-09-19',
          showBubble: false,
          // bubbleCount: 35,
          icon: Icons.notifications,
          iconBgColor: Colors.blue.shade200,
        ),
        CustomIconCard(
          onPressed:() {},
          title: '创作者小助手',
          detail: '亲爱的 哄哄：「创作打卡挑战赛」第二期已开始，快来参与挑战赢得奖励吧！',
          time: '2022-01-11',
          showBubble: false,
          // bubbleCount: 35,
          icon: Icons.person_sharp,
          iconBgColor: Colors.deepPurple.shade200,
        ),
        CustomIconCard(
          onPressed:() {},
          title: '官方账号消息',
          detail: '准备留学，雅思怎样才能一次就考到理想的成绩呢？',
          time: '2021-12-19',
          showBubble: false,
          // bubbleCount: 35,
          icon: Icons.article_rounded,
          iconBgColor: Colors.blue.shade200,
        ),
        CustomIconCard(
          onPressed:() {},
          title: '知乎活动助手',
          detail: '「书中放映厅」正在营业中 >>',
          time: '2022-12-09',
          showBubble: false,
          // bubbleCount: 35,
          icon: Icons.lightbulb_sharp,
          iconBgColor: Colors.orange.shade800,
        ),

         CustomIconCard(
          onPressed:() {},
          title: '创作者小助手',
          detail: '亲爱的 哄哄：「创作打卡挑战赛」第二期已开始，快来参与挑战赢得奖励吧！',
          time: '2022-01-11',
          showBubble: false,
          // bubbleCount: 35,
          icon: Icons.person_sharp,
          iconBgColor: Colors.deepPurple.shade200,
        ),
        CustomIconCard(
          onPressed:() {},
          title: '官方账号消息',
          detail: '准备留学，雅思怎样才能一次就考到理想的成绩呢？',
          time: '2021-12-19',
          showBubble: false,
          // bubbleCount: 35,
          icon: Icons.article_rounded,
          iconBgColor: Colors.blue.shade200,
        ),
        CustomIconCard(
          onPressed:() {},
          title: '知乎活动助手',
          detail: '「书中放映厅」正在营业中 >>',
          time: '2022-12-09',
          showBubble: false,
          // bubbleCount: 35,
          icon: Icons.lightbulb_sharp,
          iconBgColor: Colors.orange.shade800,
        ),
          ],
        ),
      ),
    );
  }

}

class CustomIconCard extends StatelessWidget {
  final String title;
  final String detail;
  final bool showBubble;
  final int bubbleCount;
  final VoidCallback onPressed;
  final String time;
  final IconData icon;
  final Color iconBgColor;
  const CustomIconCard({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.title,
    required this.detail,
    required this.time,
    required this.showBubble,
    this.iconBgColor = Colors.blue, 
    this.bubbleCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalConfig.cardBackgroundColor,
      child: ListTile(
        onTap: onPressed,
        contentPadding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        title: Container(child: Text(title), margin: const EdgeInsets.only(bottom: 6.0),),
        subtitle: Text(detail, overflow: TextOverflow.ellipsis, maxLines: 1,),
        trailing: showBubble
            ? Container(
              constraints: const BoxConstraints(
                minWidth: 24.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              padding: const EdgeInsets.only(left:8.0, right: 8.0, top: 2.0, bottom: 2.0),
              child: Text(bubbleCount <= 99 ? '$bubbleCount' : '99+', style: const TextStyle(fontSize: 12.0),)
              )
            : Text(time, style: const TextStyle(fontSize: 10.0, color: Colors.white54), overflow: TextOverflow.ellipsis, maxLines: 1,),
        leading: CircleAvatar(
          radius: 24.0,
          backgroundColor: iconBgColor,
          child: Icon(icon, color: Colors.white,),),
      ),
    );
  }
}

class CustomTextBtn extends StatelessWidget {
  final String buttonText;
  final IconData icon;
  final VoidCallback onPressed;
  const CustomTextBtn({
    Key? key,
    required this.buttonText,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white
      ),
      onPressed: onPressed,
      child: SizedBox(
        child: Column(
          children: [
            Icon(icon, size: 32.0,),
            const SizedBox(height: 8.0,),
            Text(buttonText)
          ],
        ),
      )
      );
  }
}
