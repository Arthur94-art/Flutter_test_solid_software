import 'dart:math';

import 'package:test_solid_software/data/models/argb_model.dart';

abstract class ColorRepo {
  Future<ARGBModel> getGeneratedNumber();
}

class GeneratedColorRepo extends ColorRepo {
  @override
  Future<ARGBModel> getGeneratedNumber() async {
    Random random = Random();
    return ARGBModel(
      random.nextInt(256).toDouble(),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
}
