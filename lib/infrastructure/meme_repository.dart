import 'package:injectable/injectable.dart';
import 'package:learn_freezed/domain/meme.dart';
import 'package:learn_freezed/domain/meme_failure.dart';
import 'package:learn_freezed/infrastructure/meme_service.dart';
import 'package:dartz/dartz.dart';

@lazySingleton
class MemeRepository {
  const MemeRepository(this._memeService);

  final MemeService _memeService;

  Future<Either<MemeFailure, Meme>> getMeme() async {
    try {
      final res = await _memeService.getMeme();
      final meme = res.toDomain();

      return right(meme);
    } catch (e) {
      return left(const MemeFailure.unexpected());
    }
  }
}
