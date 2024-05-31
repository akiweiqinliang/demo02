import 'package:demo02/global_config.dart';
import 'package:demo02/home/search_page.dart';
import 'package:demo02/notice/notice_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                color: _isScrolled ? (GlobalConfig.dark ? Colors.grey.shade900 : Colors.white) : Colors.transparent,
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
                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                          return const SearchPage();
                                        })
                                        );
                                      },
                                      icon: const Icon(Icons.search_rounded)),
                                  IconButton(
                                    padding: const EdgeInsets.all(4.0),
                                      onPressed: () {
                                        Provider.of<GlobalConfig>(context, listen: false).toggleTheme();
                                      },
                                      icon: const Icon(Icons.light_mode_outlined)),
                                  IconButton(
                                    padding: const EdgeInsets.all(4.0),
                                      onPressed: () {},
                                      icon: const Icon(Icons.settings)),
                                  IconButton(
                                    padding: const EdgeInsets.all(4.0),
                                      onPressed: () {
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                          return const NoticePage();
                                        })
                                        ); 
                                      },
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
                      primary: GlobalConfig.fontColor2,
                      side: BorderSide(color: GlobalConfig.borderColor),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                    onPressed: () {}, child: const Padding(
                      padding: EdgeInsets.only(left: 6.0, right: 6.0),
                      child: Text('创作中心'),
                    )
                    )
                ],
              ),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        minimumSize: const Size(100, 28),
                        // backgroundColor: GlobalConfig.fontColor.withOpacity(0.1),
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),
                          primary: GlobalConfig.fontColor2,
                          side: BorderSide(color: GlobalConfig.borderColor),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                        ),
                      icon: Icon(
                        Icons.add_circle_rounded,
                        size: 14.0,
                        color: GlobalConfig.fontColor,
                      ),
                      label: Text(
                        '添加认证信息',
                        style: TextStyle(color: GlobalConfig.fontColor2, fontSize: 14.0),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){}, 
                    child: Row(
                    children: [
                      Text('1 ', style: TextStyle(color: GlobalConfig.fontColor1),),Text('关注', style: TextStyle(color: GlobalConfig.fontColor2,),),
                    ],
                  )),
                  TextButton(
                    onPressed: (){}, 
                    child: Row(
                    children: [
                      Text('0 ', style: TextStyle(color: GlobalConfig.fontColor1),),Text('被关注', style: TextStyle(color: GlobalConfig.fontColor2),),
                    ],
                  )),
                  TextButton(
                    onPressed: (){}, 
                    child: Row(
                    children: [
                      Text('2 ', style: TextStyle(color: GlobalConfig.fontColor1),),Text('收藏', style: TextStyle(color: GlobalConfig.fontColor2),),
                    ],
                  )),
                  TextButton(
                    onPressed: (){}, 
                    child: Row(
                    children: [
                      Text('1 ', style: TextStyle(color: GlobalConfig.fontColor1),),Text('最近浏览', style: TextStyle(color: GlobalConfig.fontColor2),),
                    ],
                  )),
                ],
              ),
              Container(
                 decoration: const BoxDecoration(
                color: Color.fromRGBO(251, 233, 208, 1),
                  borderRadius: BorderRadiusDirectional.all( Radius.circular(20)),
                     ),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('开通盐选会员', style: TextStyle(color: Color.fromRGBO(97, 77, 44, 1), fontWeight: FontWeight.bold),),
                      subtitle: const Text('畅享 10W+ 优质内容', style: TextStyle(color: Color.fromRGBO(97, 77, 44, 0.8),),),
                      trailing: ElevatedButton(
                          onPressed: () {}, child: Text('最低 0.3元 / 天'),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(240, 202, 159, 1),
                              onPrimary: Color.fromRGBO(97, 77, 44, 1),
                              elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))
                    ),),
                    SizedBox(height: 20,)
                  ],
                )
              )
            ],
          ),
        ),
      
        
      ),
    );
  }
}