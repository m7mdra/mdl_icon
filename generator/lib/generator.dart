import 'dart:io';

import 'package:basic_utils/basic_utils.dart';
import 'package:generator/icon_model.dart';

void generate() {
  final file = File('./lib/data.json');
  final data = file.readAsStringSync();
  var iconFromJson2 = iconFromJson(data);

  iconFromJson2.i
      .map((e) =>
          '''static const ${StringUtils.toPascalCase(e.n.replaceAll("-", "_")).capitalizeNot()} = IconData(0x${e.cp}, fontFamily: _font, fontPackage: _package);''')
      .toList()
      .forEach((element) {
    print(element);
  });
}

extension StringExtension on String {
  String capitalizeNot() {
    return "${this[0].toLowerCase()}${this.substring(1)}";
  }
}
