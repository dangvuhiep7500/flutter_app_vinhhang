import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/data/list_dear.dart';
import 'package:flutter_app_vinhhang/data/models/listdear.model.dart';
import 'package:flutter_app_vinhhang/screen/homie/components/homie_header.dart';
import 'package:flutter_app_vinhhang/screen/homie/components/search_field.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

import '../../../utils/size_config.dart';

final Listmodel = AssetListDear();

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
            child: HomieHeader(),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Flexible(
            flex: 3,
            child: ListHomie(),
          ),
        ],
      ),
    );
  }
}

class ListHomie extends StatelessWidget {
  const ListHomie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Dear>>(
        future: Listmodel.load(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final dears = snapshot.data!;
          return GridView.builder(
            primary: false,
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 270,
            ),
            itemCount: dears.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(10),
                color: kColorCate,
                child: Column(
                  children: [
                    Container(
                      height: SizeConfig.screenWidth * 0.5,
                      width: SizeConfig.screenWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(dears[index].image),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(dears[index].relationship),
                    ),
                    Text(dears[index].name),
                  ],
                ),
              );
            },
          );
        },
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
