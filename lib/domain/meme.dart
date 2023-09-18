import 'package:freezed_annotation/freezed_annotation.dart';
part 'meme.freezed.dart';

@freezed
class Meme with _$Meme {
  const factory Meme({
    int? id,
    String? image,
    String? caption,
    String? category,
  }) = _Meme;

  const Meme._();
}
