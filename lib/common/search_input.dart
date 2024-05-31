// import 'package:demo02/index/index.dart';
import 'package:demo02/index/index.dart';
import 'package:flutter/material.dart';

import '../global_config.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({ Key? key }) : super(key: key);

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
      height: 36.0,
      child: Row(
        children: [
          TextButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context); 
                }else{
                  print('No pages to pop');
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const Index();
                }));
                }
                
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
    );
  }
}