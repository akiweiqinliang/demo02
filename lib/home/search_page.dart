import 'package:demo02/global_config.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
           Expanded(
              flex: 1,
              child: TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Icon(Icons.arrow_back_ios, color: GlobalConfig.dark ? Colors.white : Colors.black,))),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.only(top: 6.0, left: 10.0, right: 10.0, bottom: 6.0),
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                color: GlobalConfig.searchBackgroundColor,
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: GlobalConfig.fontColor,),
                    const SizedBox(width: 6.0,),
                    const Expanded(
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration.collapsed(hintText: '搜索比乎内容'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(onPressed: () {}, child: const Text('搜索', style: TextStyle(fontSize: 16.0),)))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 历史搜索
            Container(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 6.0),
                            width: 4.0,
                            height: 14.0,
                            color: Theme.of(context).colorScheme.primary),
                        const Text(
                          '历史搜索',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(4.0),
                    iconSize: 20.0,
                      onPressed: () {}, icon: Icon(Icons.delete_outline, color: GlobalConfig.fontColor))
                ],
              ),
            ),
            Wrap(
                spacing: 12.0, // 列间距
                runSpacing: 0.0, // 行间距
                children: List.generate(2, (index) {
                  return Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width / 2 - 12,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(10.0)),
                        onPressed: () {},
                        child: Text(
                          '$index网传「歌手」补位歌手是谁aaaaaaaaaaaaaaaaaaaaa',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: GlobalConfig.secondFontColor),
                        )),
                  );
                })),
            // 猜你想搜
            Container(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 6.0),
                            width: 4.0,
                            height: 14.0,
                            color: Theme.of(context).colorScheme.primary),
                        const Text(
                          '猜你想搜',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(4.0),
                    iconSize: 20.0,
                      onPressed: () {}, icon: Icon(Icons.refresh, color: GlobalConfig.fontColor)),
                  IconButton(
                    padding: const EdgeInsets.all(4.0),
                    iconSize: 20.0,
                      onPressed: () {}, icon: Icon(Icons.visibility_off_outlined, color: GlobalConfig.fontColor))
                ],
              ),
            ),
            Wrap(
                spacing: 12.0, // 列间距
                runSpacing: 0.0, // 行间距
                children: List.generate(8, (index) {
                  return Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width / 2 - 12,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(10.0)),
                        onPressed: () {},
                        child: index % 3 == 0 ? Text(
                          '$index上海发布房产新政',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: GlobalConfig.secondFontColor),
                        ) : Row(
                          children: [
                            Expanded(
                              child: Text(
                                '$index安徽居民楼坍塌事故有新进展',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: GlobalConfig.secondFontColor),
                              ),
                            ),
                            const Text('热', style: TextStyle(color: Colors.red),)
                          ],
                        )
                        ),
                  );
                })),
                // 搜索发现
            Container(
              padding: const EdgeInsets.only(left: 16.0, top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 6.0),
                            width: 4.0,
                            height: 14.0,
                            color: Colors.red),
                        const Text(
                          '搜索发现',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            Column(
              children: [
                for (var hot in hotList) 
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0.0)
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 16.0),
                            width: 4.0,
                            height: 4.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: hot.rank == 1
                                  ? Colors.red
                                  : hot.rank == 2
                                      ? Colors.red[400]
                                      : hot.rank == 3
                                          ? Colors.red[300]
                                          : Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10.0),
                                  child: Text(hot.title, style: TextStyle(color: GlobalConfig.secondFontColor),)),
                                Text('${hot.hotNum}万', style: TextStyle(color: GlobalConfig.fontColor, fontSize: 12.0),),
                              ],
                            ),
                          ),
                         hot.rank == 1 ? const Text('热', style: TextStyle(color: Colors.red),) : Container() 
                        ],
                      ),
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HotSearch {
  int rank;
  String title;
  int hotNum;

  HotSearch(this.rank, this.title, this.hotNum);
}
List<HotSearch> hotList = [
  HotSearch(1, '小林制药已致5死280余人住院', 169),
  HotSearch(2, '李小冉 基因', 100),
  HotSearch(3, '多家银行暂停无卡存取款', 95),
  HotSearch(4, '人民日报评王妈背刺打工人', 94),
  HotSearch(5, '国台办回应台湾艺人转央视新闻海报', 88),
  HotSearch(6, '安徽通报滁河水体污染处置情况', 58),
  HotSearch(7, '生育越晚更年期也可能会越晚', 56),
  HotSearch(8, '安徽省全椒县委主要负责人已被免职', 42),
];