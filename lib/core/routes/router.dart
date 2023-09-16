import 'package:go_router/go_router.dart';
import 'package:learn_freezed/core/presentation/home_screen.dart';
import 'package:learn_freezed/presentation/generate_meme_screen.dart';
import 'package:learn_freezed/core/routes/routes.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: Routes.home,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: Routes.generateMeme,
    builder: (context, state) => const GenerateMemeScreen(),
  ),
]);
