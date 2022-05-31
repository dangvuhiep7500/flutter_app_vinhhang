import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/data/list_dear.dart';
import 'package:flutter_app_vinhhang/data/models/listdear.model.dart';

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
