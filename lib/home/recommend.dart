import 'follow.dart';
import 'package:flutter/material.dart';
class Recommend extends StatefulWidget {
  const Recommend({ Key? key }) : super(key: key);

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return const Follow();
  }
}