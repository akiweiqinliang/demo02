import 'package:demo02/global_config.dart';
import 'package:demo02/home/question_page.dart';
import 'package:flutter/material.dart';
class Hot extends StatefulWidget {
  const Hot({ Key? key }) : super(key: key);

  @override
  State<Hot> createState() => _HotState();
}

class _HotState extends State<Hot> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var question in qustionList) 
          HotCard(context: context, question: question)
      ],
    );
  }
}

class HotCard extends StatelessWidget {
  const HotCard({
    Key? key,
    required this.context,
    required this.question,
  }) : super(key: key);

  final BuildContext context;
  final Question question;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        backgroundColor: GlobalConfig.cardBackgroundColor,
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const QuestionPage();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          border: BorderDirectional(bottom: BorderSide(color: GlobalConfig.dark ? Colors.white12 : Colors.black12, width: 1.0))
        ),
        padding: const EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0, bottom: 10.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(question.order, style: TextStyle(
                      color: question.order.compareTo("03") <= 0 ? Colors.red : Colors.yellow,
                      fontSize: 18.0,
                    ),),
                  ),
                  question.rise != null ? Row(
                    children: [
                      const Icon(Icons.add, size: 12.0, color: Colors.red,),
                      Text(question.rise?? '', style: const TextStyle(color: Colors.red),)
                    ],
                  ) : Container()
                ],
              )
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(question.title, style: const TextStyle(color: Colors.white70)),
                    Text(question.mark ?? '', style: TextStyle(color: GlobalConfig.fontColor),),
                    Text(question.hotNum, style: TextStyle(color: GlobalConfig.fontColor)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: AspectRatio(
                aspectRatio: 3.0 / 2.0,
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                    image: DecorationImage(
                      image: NetworkImage(question.imgUrl),
                      centerSlice: const Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)
                    )
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Question {
  String order;
  String? rise;
  String title;
  String? mark;
  String hotNum;
  String imgUrl;

  Question(this.order, this.title, this.hotNum, this.imgUrl, {this.mark, this.rise});
}

List<Question> qustionList = [
  Question("01", "了不起的新时代，世界竞争中的中国制造", "4427 万热度", "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"),
  Question("02", "一个女生怎样才算见过世面？", "4157 万热度", "https://pic3.zhimg.com/50/v2-56dca99cd8718f9303d43b3015342ba7_hd.jpg", rise: "3", mark: "所谓世面，就是世界的每一面"),
  Question("03", "如果朱标没死，削藩的话，朱棣会造反吗？", "4009 万热度", "https://pic4.zhimg.com/v2-095d2b48970889b108247e6d2dd0fa6b_b.jpg"),
  Question("04", "如何编译 Linux 内核？", "3110 万热度", "https://pic3.zhimg.com/80/v2-1ea1b0cf80c85b88893b2b97a94d7e71_hd.jpg", mark: "内核？呵呵"),
  Question("05", "如何看待将神话故事拍成电影这件事？", "2119 万热度", "https://pic4.zhimg.com/50/v2-267b1dda62f770bd2bd13cb545117b78_hd.jpg",rise: "3",)
];