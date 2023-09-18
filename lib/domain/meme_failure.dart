import 'package:freezed_annotation/freezed_annotation.dart';

part 'meme_failure.freezed.dart';

@freezed
class MemeFailure with _$MemeFailure {
  const factory MemeFailure.unexpected() = _Unexpected;
}
