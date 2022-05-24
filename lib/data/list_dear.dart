import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_vinhhang/data/models/listdear.model.dart';

abstract class ListDear {
  Future<List<Dear>> load();
}

class AssetListDear extends ListDear {
  @override
  Future<List<Dear>> load() async {
    if (kDebugMode) {
      await Future.delayed(Duration(seconds: 2));
    }
    final jsonContent = await rootBundle.loadString("mock/dears/listdear.json");
    final List<dynamic> jsonData = jsonDecode(jsonContent);
    return jsonData.map((e) => Dear.fromJson(e)).toList();
  }
}
