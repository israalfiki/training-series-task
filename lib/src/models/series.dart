import 'coach.dart';
import 'series_class.dart';

class Series {
  final String id;
  final String name;
  final String description;
  final String coverPhoto;
  final List<Coach> coaches;
  final List<SeriesClass> classes;
  final int totalTime;
  final String difficulty;
  final int intensity;

  Series(
      {required this.id,
      required this.name,
      required this.description,
      required this.coverPhoto,
      required this.coaches,
      required this.classes,
      required this.totalTime,
      required this.difficulty,
      required this.intensity});

  factory Series.fromJson(Map<String, dynamic>? map) {
    final coachesItr =
        (map?[SeriesFields.coaches] as Iterable?) ?? const Iterable.empty();
    final classesItr =
        (map?[SeriesFields.classes] as Iterable?) ?? const Iterable.empty();
    return Series(
      id: map?[SeriesFields.id],
      name: map?[SeriesFields.name],
      description: map?[SeriesFields.description],
      coverPhoto: map?[SeriesFields.coverPhoto],
      coaches: coachesItr.map((coach) => Coach.fromJson(coach)).toList(),
      classes: classesItr.map((c) => SeriesClass.fromJson(c)).toList(),
      totalTime: map?[SeriesFields.totalTime],
      difficulty: map?[SeriesFields.difficulty],
      intensity: map?[SeriesFields.intensity],
    );
  }
}

class SeriesFields {
  static const id = "id";
  static const name = "name";
  static const description = "description";
  static const coverPhoto = "coverPhoto";
  static const coaches = "coaches";
  static const classes = "classes";
  static const totalTime = "totalTime";
  static const difficulty = "difficulty";
  static const intensity = "intensity";
}
