import 'package:freezed_annotation/freezed_annotation.dart';
part 'meme.freezed.dart';

@freezed
class Meme with _$Meme {
  const factory Meme({
    required String id,
    required String image,
    required String caption,
    required String name,
  }) = _Meme;

  const Meme._();

  factory Meme.empty() {
    return const Meme(
      id: '',
      image: '',
      caption: '',
      name: '',
    );
  }
}
