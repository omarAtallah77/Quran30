class ReciterModel {
  final String Arabicname;
  final String Englishname;

  final String relativepath;

  const ReciterModel({
    required this.Arabicname,
    required this.relativepath,
    required this.Englishname,
  });

  factory ReciterModel.fromJson(json) {
    return ReciterModel(
      Arabicname: json['arabic_name'] ?? "",
      relativepath: json['relative_path'] ?? "",
      Englishname: json['name'] ?? "",
    );
  }
}
