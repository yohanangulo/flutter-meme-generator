import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_freezed/application/meme_cubit.dart';
import 'package:learn_freezed/core/routes/routes.dart';
import 'package:learn_freezed/domain/meme.dart';
import 'package:learn_freezed/presentation/widgets/meme_card.dart';

class GenerateMemeScreen extends StatefulWidget {
  const GenerateMemeScreen({super.key});

  @override
  State<GenerateMemeScreen> createState() => _GenerateMemeScreenState();
}

class _GenerateMemeScreenState extends State<GenerateMemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meme generator'),
        actions: [
          IconButton(
            onPressed: () {
              context.go(Routes.home);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<MemeCubit, MemeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const CircularProgressIndicator();
            }

            return state.memeOrFailureOption.fold(
              () => MemeCard(Meme.empty()),
              (memeOrFailure) => memeOrFailure.fold(
                (failure) => const Text("An error occured fetching the meme"),
                (meme) => MemeCard(meme),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.skip_next),
        onPressed: () => context.read<MemeCubit>().getMeme(),
      ),
    );
  }
}
