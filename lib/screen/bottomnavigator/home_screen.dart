import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/cemetery/cemetery_screen.dart';
import 'package:flutter_app_vinhhang/screen/contact/contact.dart';
import 'package:flutter_app_vinhhang/screen/home/components/calendar.dart';
import 'package:flutter_app_vinhhang/screen/home/home_page.dart';
import 'package:flutter_app_vinhhang/screen/navigation_drawer/navigation_drawer_widget.dart';
import 'package:flutter_app_vinhhang/screen/relative/relative_screen.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
      key: _scaffoldKey,
      drawer: const NavigationDrawerWidget(),
      body: PageView(
        controller: _myPage,
        children: [
          HomePage(
            onpress: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          RelativeScreen(
            onpress: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          CemeteryScreen(
            onpress: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          ContactScreen(
            onpress: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          )
          // const Scaffold(body: HomePage()),
          // Scaffold(body: RelativeScreen()),
          // const Scaffold(body: CemeteryScreen()),
          // const Scaffold(body: ContactScreen()),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: kColorWhite,
        child: SizedBox(
          height: getProportionateScreenWidth(75),
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
                    tooltip: 'Trang ch???',
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
                    "Trang ch???",
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
                      tooltip: "Ng?????i th??n",
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
                    "Ng?????i th??n",
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
                      tooltip: "Ngh??a trang",
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
                    "Ngh??a trang",
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
                      tooltip: "Li??n h???",
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
                    "Li??n h???",
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
