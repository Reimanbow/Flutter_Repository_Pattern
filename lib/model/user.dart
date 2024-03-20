import "package:freezed_annotation/freezed_annotation.dart";

part "user.freezed.dart";
part "user.g.dart";

@freezed
// Qiitaユーザ情報
class User with _$User {
  const factory User({
    required String name,
    @JsonKey(name: "profile_image_url") required String profileImageUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
