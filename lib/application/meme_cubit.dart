import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:learn_freezed/domain/meme.dart';
import 'package:learn_freezed/infrastructure/meme_repository.dart';

import '../domain/meme_failure.dart';

part 'meme_state.dart';
part 'meme_cubit.freezed.dart';

@injectable
class MemeCubit extends Cubit<MemeState> {
  MemeCubit(this._memeRepository) : super(MemeState.initial());

  final MemeRepository _memeRepository;

  Future<void> getMeme() async {
    emit(state.copyWith(
      isLoading: true,
      failure: null,
    ));

    final failureOrMeme = await _memeRepository.getMeme();

    failureOrMeme.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (meme) => emit(state.copyWith(isLoading: false, meme: meme)),
    );
  }
}
