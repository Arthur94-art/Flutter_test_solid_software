import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_solid_software/data/generated_color_repo.dart';

part 'generate_numbers_event.dart';
part 'generate_numbers_state.dart';

class RandomColorBloc extends Bloc<RandomColorEvent, RandomColorState> {
  final GeneratedColorRepo _generatedColorRepo = GeneratedColorRepo();
  RandomColorBloc() : super(InitialState()) {
    on<RandomColorEvent>(
      ((event, emit) async {
        if (event is GenerateColorEvent) {
          await _generatedColorRepo.getGeneratedNumber();
          emit(
            GenerateColorState(
              r: _generatedColorRepo.r,
              g: _generatedColorRepo.g,
              b: _generatedColorRepo.b,
              a: _generatedColorRepo.a,
            ),
          );
        }
      }),
    );
  }
}
