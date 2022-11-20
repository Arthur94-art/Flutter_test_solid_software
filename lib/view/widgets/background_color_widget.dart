import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_solid_software/bloc/generate_numbers_bloc.dart';
import 'package:test_solid_software/view/widgets/text_widget.dart';

class BackgroundColorWidget extends StatelessWidget {
  final int a;
  final int r;
  final int g;
  final int b;

  const BackgroundColorWidget({
    required this.a,
    required this.r,
    required this.g,
    required this.b,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<RandomColorBloc>().add(GenerateColorEvent());
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(a, r, g, b),
        body: const TextWidget(),
      ),
    );
  }
}
