part of 'generate_numbers_bloc.dart';

abstract class RandomColorState {}

class InitialState extends RandomColorState {}

class GenerateColorState extends RandomColorState {
  final int r;
  final int g;
  final int b;
  final int a;
  GenerateColorState({
    required this.r,
    required this.g,
    required this.b,
    required this.a,
  });
}
