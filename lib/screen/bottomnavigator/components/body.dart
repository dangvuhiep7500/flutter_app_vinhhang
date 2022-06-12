import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/relative/relative_screen.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final PageController _myPage = PageController(initialPage: 0);
  int index = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig2().init(context);
    return Scaffold(
      body: PageView(
        controller: _myPage,
        children: const [
          Center(child: Text("Nguoi than")),
          Scaffold(body: RelativeScreen()),
          Center(child: Text("Nghĩa trang")),
          Center(child: Text("Liên hệ")),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: kColorWhite,
        child: SizedBox(
          height: SizeConfig2.screenHeight * 0.0925,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig2.safeBlockHorizontal * 5),
                    icon: Image.asset(
                      'assets/icons/iconhome.png',
                    ),
                    iconSize: SizeConfig2.screenHeight * 0.05,
                    splashRadius: 30,
                    tooltip: 'Trang chủ',
                    splashColor: kColorAmber,
                    onPressed: () {
                      setState(
                        () {
                          index = 0;
                          _myPage.jumpToPage(0);
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: SizeConfig2.screenHeight * 0.0062,
                  ),
                  Text(
                    "Trang chủ",
                    style: TextStyle(
                      color: index == 0 ? Colors.red : Colors.grey,
                    ),
                  ),
                ]),
              ),
              Material(
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig2.safeBlockHorizontal * 5),
                      icon: Image.asset('assets/icons/iconnguoithan.png'),
                      iconSize: SizeConfig2.screenHeight * 0.05,
                      color: Colors.green,
                      tooltip: "Người thân",
                      splashRadius: 30,
                      splashColor: kColorAmber,
                      onPressed: () {
                        setState(
                          () {
                            index = 1;
                            _myPage.jumpToPage(index);
                          },
                        );
                      }),
                  SizedBox(
                    height: SizeConfig2.screenHeight * 0.0062,
                  ),
                  Text(
                    "Người thân",
                    style: TextStyle(
                      color: index == 1 ? Colors.red : Colors.grey,
                    ),
                  ),
                ]),
              ),
              Material(
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig2.safeBlockHorizontal * 5),
                      icon: Image.asset('assets/icons/iconnghiatrang.png'),
                      iconSize: SizeConfig2.screenHeight * 0.05,
                      tooltip: "Nghĩa trang",
                      splashRadius: 30,
                      splashColor: kColorAmber,
                      onPressed: () {
                        setState(
                          () {
                            index = 2;
                            _myPage.jumpToPage(index);
                          },
                        );
                      }),
                  SizedBox(
                    height: SizeConfig2.screenHeight * 0.0062,
                  ),
                  Text(
                    "Nghĩa trang",
                    style: TextStyle(
                      color: index == 2 ? Colors.red : Colors.grey,
                    ),
                  ),
                ]),
              ),
              Material(
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig2.safeBlockHorizontal * 5),
                      icon: Image.asset('assets/icons/iconlienhe.png'),
                      iconSize: SizeConfig2.screenHeight * 0.05,
                      tooltip: "Liên hệ",
                      splashRadius: 30,
                      splashColor: kColorAmber,
                      onPressed: () {
                        setState(
                          () {
                            index = 3;
                            _myPage.jumpToPage(index);
                          },
                        );
                      }),
                  SizedBox(
                    height: SizeConfig2.screenHeight * 0.0062,
                  ),
                  Text(
                    "Liên hệ",
                    style: TextStyle(
                      color: index == 3 ? Colors.red : Colors.grey,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
