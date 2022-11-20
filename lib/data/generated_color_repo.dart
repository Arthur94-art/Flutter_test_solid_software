import 'dart:math';

class GeneratedColorRepo {
  Random random = Random();
  late int r;
  late int g;
  late int b;
  late int a;
  Future<void> getGeneratedNumber() async {
    r = random.nextInt(256);
    g = random.nextInt(256);
    b = random.nextInt(256);
    a = random.nextInt(256);
  }
}
