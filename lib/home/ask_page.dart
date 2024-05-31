import 'package:demo02/global_config.dart';
import 'package:demo02/index/index.dart';
import 'package:flutter/material.dart';

class AskPage extends StatefulWidget {
  const AskPage({ Key? key }) : super(key: key);

  @override
  State<AskPage> createState() => _AskPageState();
}

class _AskPageState extends State<AskPage> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        ElevatedButton(
            child: const Text('back'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Index();
              }));
            },
          ),
      ],
    );
  }
}