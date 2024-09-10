import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:learn_freezed/domain/meme.dart';
import 'package:learn_freezed/domain/meme_failure.dart';
import 'package:learn_freezed/infrastructure/meme_service.dart';
import 'package:dartz/dartz.dart';

@lazySingleton
class MemeRepository {
  const MemeRepository(this._memeService);

  final MemeService _memeService;

  Future<Either<MemeFailure, List<Meme>>> getMeme() async {
    try {
      final res = await _memeService.getMemes();

      final memes = res.data.memes.map((e) => e.toDomain()).toList();

      log(memes.toString());

      return right(memes);
    } catch (e, s) {
      log(e.toString());
      log(s.toString());

      return left(const MemeFailure.unexpected());
    }
  }
}
