import 'package:freezed_annotation/freezed_annotation.dart';

part 'listdear.model.freezed.dart';
part 'listdear.model.g.dart';

@freezed
class Dear with _$Dear {
  const factory Dear({
    required String relationship,
    required String name,
    required String image,
  }) = _Dear;
  factory Dear.fromJson(Map<String, Object?> json) => _$DearFromJson(json);
}
