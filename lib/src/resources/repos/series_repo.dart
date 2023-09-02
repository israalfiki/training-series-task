import '/src/resources/providers/series_provider.dart';

import '../../models/series.dart';

class SeriesRepo {
  final _seriesProvider = SeriesProvider(); // should use dependency injection

  /// Get list of series
  Future<List<Series>> fetchSeries() async {
    return await _seriesProvider.fetchSeries();
  }
}
