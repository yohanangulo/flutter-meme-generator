part of 'meme_cubit.dart';

@freezed
class MemeState with _$MemeState {
  const factory MemeState({
    required bool isLoading,
  }) = _Initial;

  factory MemeState.initial() {
    return const MemeState(isLoading: false);
  }
}
