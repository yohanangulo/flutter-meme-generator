import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_freezed/domain/meme.dart';

part 'meme_dto.freezed.dart';
part 'meme_dto.g.dart';

@freezed
class ResponseDTO with _$ResponseDTO {
  const factory ResponseDTO({
    required bool success,
    required Data data,
  }) = _ResponseDTO;

  const ResponseDTO._();

  factory ResponseDTO.fromJson(Map<String, Object?> json) => _$ResponseDTOFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<Memes> memes,
  }) = _Data;

  const Data._();

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

@freezed
class Memes with _$Memes {
  const factory Memes({
    required String id,
    required String name,
    required String url,
    required int width,
    required int height,
    @JsonKey(name: 'box_count') int? boxCount,
    required int captions,
  }) = _Memes;

  const Memes._();

  factory Memes.fromJson(Map<String, Object?> json) => _$MemesFromJson(json);

  Meme toDomain() {
    return Meme(
      id: id,
      image: url,
      caption: captions.toString(),
      name: name,
    );
  }
}
