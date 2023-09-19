import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_freezed/domain/meme.dart';

part 'meme_dto.freezed.dart';
part 'meme_dto.g.dart';

@freezed
class MemeDTO with _$MemeDTO {
  const factory MemeDTO({
    required int id,
    required String image,
    required String caption,
    required String category,
  }) = _Meme;

  factory MemeDTO.fromJson(Map<String, dynamic> json) =>
      _$MemeDTOFromJson(json);

  Meme toDomain() {
    return Meme(
      id: id,
      image: image,
      caption: caption,
      category: category,
    );
  }

  const MemeDTO._();
}
