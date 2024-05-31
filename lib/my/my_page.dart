import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  // ignore: unused_field
  late ScrollController _scrollController;
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset > 50 && !_isScrolled) {
        setState(() {
          _isScrolled = true;
        });
      }else if (_scrollController.offset <= 50 && _isScrolled) {
        setState(() {
          _isScrolled = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder:(context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            expandedHeight: 50.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                color: _isScrolled ? Colors.grey.shade900 : Colors.transparent,
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                          _isScrolled
                              ? const SizedBox(
                                  height: 24.0,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage('https://bts-image.xyzcdn.net/aHR0cHM6Ly9pbWFnZS54eXpjZG4ubmV0L0Zwang0aF82OG1KTGxLcG1qRGQzMU1DSlZSalEuanBn.jpg@small'),
                                  ))
                              : const SizedBox(
                                  height: 24.0,
                                ), 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    padding: const EdgeInsets.all(0.0),
                                      onPressed: () {},
                                      icon:
                                          const Icon(Icons.qr_code_scanner_rounded)),
                                  IconButton(
                                    padding: const EdgeInsets.all(0.0),
                                      onPressed: () {},
                                      icon: const Icon(Icons.search_rounded)),
                                  IconButton(
                                    padding: const EdgeInsets.all(4.0),
                                      onPressed: () {},
                                      icon: const Icon(Icons.light_mode_outlined)),
                                  IconButton(
                                    padding: const EdgeInsets.all(4.0),
                                      onPressed: () {},
                                      icon: const Icon(Icons.settings)),
                                  IconButton(
                                    padding: const EdgeInsets.all(4.0),
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.notifications_none_rounded)),
                                ],
                              ),
                            ],
                  ),
                ) 
              ),
              // background: Container(),
            ),
          ),
        ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      onTap: () {},
                      leading: const CircleAvatar(
                        radius: 28.0,
                        backgroundImage: NetworkImage(
                            'https://bts-image.xyzcdn.net/aHR0cHM6Ly9pbWFnZS54eXpjZG4ubmV0L0Zwang0aF82OG1KTGxLcG1qRGQzMU1DSlZSalEuanBn.jpg@small',
                            ),
                      ),
                    title: Row(
                      children: [
                        const Text('哄哄', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                        const SizedBox(width: 8.0,),
                        Icon(Icons.arrow_circle_up_rounded, size: 18.0, color: Colors.blue.shade400,)
                      ],
                    ),
                    subtitle: const Text('点击查看个人主页 >'),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white60,
                      side: const BorderSide(color: Colors.white10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                    onPressed: () {}, child: const Padding(
                      padding: EdgeInsets.only(left: 6.0, right: 6.0),
                      child: Text('创作中心'),
                    )
                    )
                ],
              ),
              TextButton.icon(onPressed: () {}, icon: const Icon(Icons.add_circle_rounded), label: Text('添加认证信息'))
            ],
          ),
        ),
      
        
      ),
    );
  }
}