class SeriesClass {
  final String id;
  final String title;
  final String videoUrl;
  final String description;
  final int duration;

  SeriesClass(
      {required this.id,
      required this.title,
      required this.videoUrl,
      required this.description,
      required this.duration}
      );


   factory SeriesClass.fromJson(Map<String, dynamic>? map) {
    return SeriesClass(
        id: map?[SeriesClassFields.id],
        title: map?[SeriesClassFields.title],
        videoUrl: map?[SeriesClassFields.videoUrl],
        description: map?[SeriesClassFields.description],
        duration: map?[SeriesClassFields.duration]
    );
  }     
}

class SeriesClassFields {
  static const id = "id";
  static const title = "title";
  static const videoUrl = "videoUrl";
  static const description = "description";
  static const duration = "duration";

}
