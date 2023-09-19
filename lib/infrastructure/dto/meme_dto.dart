import 'package:freezed_annotation/freezed_annotation.dart';

part 'meme_dto.freezed.dart';
part 'meme_dto.g.dart';

@freezed
class Meme with _$Meme {
  const factory Meme({
    required int id,
    required String image,
    required String caption,
    required String category,
  }) = _Meme;

  factory Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);

  const Meme._();
}
