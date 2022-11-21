import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_solid_software/data/generated_color_repo.dart';
import 'package:test_solid_software/data/models/argb_model.dart';

part 'generate_numbers_event.dart';
part 'generate_numbers_state.dart';

class RandomColorBloc extends Bloc<RandomColorEvent, RandomColorState> {
  final ColorRepo generatedColorRepo;

  RandomColorBloc(this.generatedColorRepo) : super(InitialState()) {
    on<RandomColorEvent>(
      ((event, emit) async {
        if (event is GenerateColorEvent) {
          final ARGBModel argbModel =
              await generatedColorRepo.getGeneratedNumber();

          emit(
            GenerateColorState(argbModel.color),
          );
        }
      }),
    );
  }
}
