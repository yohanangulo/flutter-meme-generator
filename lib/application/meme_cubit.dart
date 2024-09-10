import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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

  final List<Meme> memesCache = [];

  void getMeme() async {
    if (state.memeOrFailureOption.isSome()) {
      emit(state.copyWith(memeOrFailureOption: some(right(memesCache[Random().nextInt(memesCache.length)]))));
    } else {
      emit(state.copyWith(isLoading: true));

      final memeOrFailure = await _memeRepository.getMeme();

      memeOrFailure.fold(
        (failure) => emit(state.copyWith(isLoading: false, memeOrFailureOption: some(left(failure)))),
        (memes) {
          memesCache.addAll(memes);

          emit(state.copyWith(
            isLoading: false,
            memeOrFailureOption: some(right(memes[Random().nextInt(memes.length)])),
          ));
        },
      );
    }
  }
}
