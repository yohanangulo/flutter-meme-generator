import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:learn_freezed/core/config/config.dart';
import 'package:learn_freezed/domain/meme.dart';
import 'package:retrofit/retrofit.dart';

part 'meme_service.g.dart';

@injectable
@RestApi()
abstract class MemeService {
  @factoryMethod
  factory MemeService(Dio dio) {
    return _MemeService(
      dio,
      baseUrl: config.baseUrl,
    );
  }

  @GET('meme')
  Future<Meme> getMeme();
}
