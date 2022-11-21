part of 'generate_numbers_bloc.dart';

abstract class RandomColorState {}

class InitialState extends RandomColorState {}

class GenerateColorState extends RandomColorState {
  final Color color;
  GenerateColorState(this.color);
}
