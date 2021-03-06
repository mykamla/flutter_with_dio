import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'data.freezed.dart';

// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'data.g.dart';

@freezed
abstract class Data with _$Data {
  const factory Data({
    int? id,
    String? title
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
 // Map<String, dynamic> toJson() => toJson();
}
