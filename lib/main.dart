// import 'package:demo02/common/theme_notifier.dart';
import 'package:demo02/global_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'index/index.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => GlobalConfig(),
      child: const ZhiHu(),
      ),
    );
}

class ZhiHu extends StatefulWidget {
  const ZhiHu({Key? key}) : super(key: key);

  @override
  State<ZhiHu> createState() => _ZhiHuState();
}

class _ZhiHuState extends State<ZhiHu> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalConfig>(
        builder: (context, globalConfig, child) {
          return MaterialApp(
            title: '知乎-高仿学习版',
            theme: GlobalConfig.currentTheme,
            home: const Index(),
          );
        }
    );
  }
}
