import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'meme_state.dart';
part 'meme_cubit.freezed.dart';

@injectable
class MemeCubit extends Cubit<MemeState> {
  MemeCubit() : super(MemeState.initial());
}
