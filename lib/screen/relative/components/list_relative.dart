import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/data/list_dear.dart';
import 'package:flutter_app_vinhhang/data/models/listdear.model.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/relative_detail.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

final Listmodel = AssetListDear();

class ListRelative extends StatelessWidget {
  const ListRelative({
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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: getProportionateScreenWidth(280),
            ),
            itemCount: dears.length + 1,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: const EdgeInsets.all(10),
                  color: kColorCate,
                  child: index < dears.length
                      ? GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(
                            //   context,
                            //   '/relativeDetail',
                            // );
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    RelativeDetail(dear: dears[index])));
                          },
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
                                child: Text(
                                  dears[index].relationship,
                                  style: PrimaryFont.medium(15)
                                      .copyWith(color: kColorBlack),
                                ),
                              ),
                              Text(
                                dears[index].name,
                                style: PrimaryFont.regular(15)
                                    .copyWith(color: kColorBlack),
                              ),
                            ],
                          ),
                        )
                      : IconButton(
                          icon: const Icon(
                            Icons.add_box,
                            size: 50,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/addRelative',
                            );
                            // print("object");
                          },
                        ));
            },
          );
        },
      ),
    );
  }
}
// gotoDetailpage(BuildContext context, )