library akwap;

import 'dart:convert';
import 'dart:isolate';

import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';

part 'extensions.dart';
part 'models/county.dart';
part 'models/district.dart';
part 'models/parish.dart';
part 'models/subcounty.dart';
part 'models/village.dart';

final districts = () async {
  final data = await rootBundle.loadString(
    'packages/akwap/assets/districts.json',
  );

  return Isolate.run(() async {
    final ds = jsonDecode(data) as List<dynamic>;
    return ds.map((e) => District.fromJson(e)).toList();
  });
}();
