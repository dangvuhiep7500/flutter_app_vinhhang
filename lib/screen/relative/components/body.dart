import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/list_relative.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/relative_header.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

import '../../../utils/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenWidth(15),
          ),
          const Flexible(
            flex: 0,
            fit: FlexFit.tight,
            child: RelativeHeader(),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          const Flexible(
            flex: 3,
            child: ListRelative(),
          ),
        ],
      ),
    );
  }
}


  //   return ListView(
  //     children: <Widget>[
  //       Padding(
  //         padding:
  //             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
  //         child: Container(
  //           width: 20,
  //           height: 50,
  //           child: GridView.count(
  //             crossAxisCount: 2,
  //             primary: false,
  //             crossAxisSpacing: 10.0,
  //             mainAxisSpacing: 20.0,
  //             childAspectRatio: 1,
  //             children: <Widget>[
  //               Container(
  //                 padding: EdgeInsets.all(getProportionateScreenWidth(10)),
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(15.0),
  //                     boxShadow: [
  //                       BoxShadow(
  //                           color: Colors.grey.withOpacity(0.2),
  //                           spreadRadius: getProportionateScreenWidth(4),
  //                           blurRadius: 5.0),
  //                     ],
  //                     color: Colors.white),
  //                 child: Column(
  //                   children: [
  //                     Hero(
  //                       tag: "assets/images/facebook.png",
  //                       child: Container(
  //                         height: 75.0,
  //                         width: 75.0,
  //                         decoration: const BoxDecoration(
  //                           image: DecorationImage(
  //                               image: AssetImage("assets/images/facebook.png"),
  //                               fit: BoxFit.contain),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
// }
