import 'package:freezed_annotation/freezed_annotation.dart';
part 'meme.freezed.dart';

@freezed
class Meme with _$Meme {
  const factory Meme({
    required int id,
    required String image,
    required String caption,
    required String category,
  }) = _Meme;

  const Meme._();

  factory Meme.empty() {
    return const Meme(
      id: 0,
      image: '',
      caption: '',
      category: '',
    );
  }
}
