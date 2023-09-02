class Coach {
  final String id;
  final String name;
  final String photo;
  final String info;

  Coach(
      {required this.id,
      required this.name,
      required this.photo,
      required this.info});

  factory Coach.fromJson(Map<String, dynamic>? map) {
    return Coach(
        id: map?[CoachFields.id],
        name: map?[CoachFields.name],
        photo: map?[CoachFields.name],
        info: map?[CoachFields.name]
    );
  }
}

class CoachFields {
  static const id = "id";
  static const name = "name";
  static const photo = "photo";
  static const info = "info";
}
