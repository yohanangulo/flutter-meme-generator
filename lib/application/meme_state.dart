part of 'meme_cubit.dart';

@freezed
class MemeState with _$MemeState {
  const factory MemeState({
    required Option<Either<MemeFailure, Meme>> memeOrFailureOption,
    required bool isLoading,
  }) = _Initial;

  factory MemeState.initial() {
    return MemeState(
      isLoading: false,
      memeOrFailureOption: none(),
    );
  }
}
