import 'package:demo02/global_config.dart';
import 'package:flutter/material.dart';
import 'index/index.dart';

void main() {
  runApp(const ZhiHu());
}

class ZhiHu extends StatelessWidget {
  const ZhiHu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '知乎-高仿学习版',
      theme: GlobalConfig.themeData,
      home: const Index(),
    );
  }
}
