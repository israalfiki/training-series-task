import 'dart:convert';

import 'package:flutter/services.dart';

import '../../models/series.dart';

class SeriesProvider {

// get list of series
  Future<List<Series>> fetchSeries() async {
    final response = await rootBundle.loadString('assets/json/series.json');
    final result = json.decode(response);
    List<Series> series = [];
    for (final item in result) {
      series.add(Series.fromJson(item));
    }

    return series;
  }
}
