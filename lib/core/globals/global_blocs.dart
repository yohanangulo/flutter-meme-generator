import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_freezed/application/meme_cubit.dart';
import 'package:learn_freezed/core/service_locator/service_locator.dart';

class GlobalBlocs extends StatelessWidget {
  const GlobalBlocs({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MemeCubit>(lazy: false, create: (_) => getIt<MemeCubit>()),
      ],
      child: Container(),
    );
  }
}
