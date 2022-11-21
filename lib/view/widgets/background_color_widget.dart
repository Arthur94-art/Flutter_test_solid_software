import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_solid_software/bloc/generate_numbers_bloc.dart';
import 'package:test_solid_software/view/widgets/text_widget.dart';

class BackgroundColorWidget extends StatelessWidget {
  static const keyName = 'bcColorWidgetKey';
  final Color color;

  const BackgroundColorWidget({
    this.color = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key(keyName),
      onTap: () {
        context.read<RandomColorBloc>().add(GenerateColorEvent());
      },
      child: Scaffold(
        backgroundColor: color,
        body: const TextWidget(),
      ),
    );
  }
}
