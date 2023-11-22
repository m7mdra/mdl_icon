import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test read font file', () async {
    WidgetsFlutterBinding.ensureInitialized();
    var font = await rootBundle.load("lib/font/materialdesigniconslight.ttf");
    assert(font.lengthInBytes != 0);
  });
}
