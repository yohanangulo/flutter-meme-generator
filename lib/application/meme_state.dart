part of 'meme_cubit.dart';

@freezed
class MemeState with _$MemeState {
  const factory MemeState({
    required Meme meme,
    required bool isLoading,
    MemeFailure? failure,
  }) = _Initial;

  factory MemeState.initial() {
    return MemeState(
      isLoading: false,
      meme: Meme.empty(),
    );
  }
}
