import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/header_default.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const name = 'Thanh Tran';
    const email = 'email@gmail.com';

    return Drawer(
      child: Material(
        color: kColorWhite,
        child: ListView(
          children: <Widget>[
            buildHeader(name: name, email: email, onClicked: () {}
                // onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => UserPage(
                //     name: 'Sarah Abs',
                //     urlImage: urlImage,
                //   ),
                // )),
                ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const Divider(
                    thickness: 1,
                    indent: 5,
                    color: Colors.black,
                  ),
                  buildMenuItem(
                    text: 'Thiết lập cá nhân',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 5,
                    color: Colors.black,
                  ),
                  buildMenuItem(
                    text: 'Thiết lập bảo mật',
                    icon: Icons.lock,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 5,
                    color: Colors.black,
                  ),
                  buildMenuItem(
                    text: 'Cài đặt',
                    icon: Icons.settings,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 5,
                    color: Colors.black,
                  ),
                  buildMenuItem(
                    text: 'Đăng xuất',
                    icon: Icons.logout,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  // Divider(color: Colors.white70),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(
              EdgeInsets.symmetric(vertical: getProportionateScreenWidth(40))),
          child: Row(
            children: [
              AvatarUser(
                onpress: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: PrimaryFont.regular(20)),
                  SizedBox(height: getProportionateScreenWidth(5)),
                  Text(email, style: PrimaryFont.regular(15)),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const Color color = Colors.black;
    const Color hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: PrimaryFont.regular(15)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => PeoplePage(),
        // ));
        break;
      case 1:
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => FavouritesPage(),
        // ));
        break;
      case 2:
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => FavouritesPage(),
        // ));
        break;
      case 3:
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/login',
          (route) => false,
        );
        break;
    }
  }
}
