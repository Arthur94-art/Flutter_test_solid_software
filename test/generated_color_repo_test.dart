import 'package:flutter_test/flutter_test.dart';
import 'package:test_solid_software/data/generated_color_repo.dart';
import 'package:test_solid_software/data/models/argb_model.dart';

void main() async {
  final GeneratedColorRepo generatedColorRepo = GeneratedColorRepo();
  final ARGBModel model = await generatedColorRepo.getGeneratedNumber();

  group('generate color repository', () {
    test('Value should be non nullable', () {
      expect(model, isNotNull);
    });
    test('Value should be ARGBModel', () {
      expect(model, isA<ARGBModel>());
    });

    test(
        'Value should be greater than or equal to 0 or less than or equal to 255',
        () {
      expect(true, model.a >= 0 && model.a <= 255);
      expect(true, model.r >= 0 && model.r <= 255);
      expect(true, model.g >= 0 && model.g <= 255);
      expect(true, model.b >= 0 && model.b <= 255);
    });
  });
}
