import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_solid_software/bloc/generate_numbers_bloc.dart';
import 'package:test_solid_software/view/widgets/background_color_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomColorBloc, RandomColorState>(
      builder: ((context, state) {
        if (state is GenerateColorState) {
          return BackgroundColorWidget(
            a: state.a,
            r: state.r,
            g: state.g,
            b: state.b,
          );
        } else {
          return const BackgroundColorWidget(
            a: 255,
            r: 255,
            g: 255,
            b: 255,
          );
        }
      }),
    );
  }
}
