class DataModel {
  int id;
  String email;
  String first_name;
  String last_name;
  String avatar;
  DataModel({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  factory DataModel.fromJson(Map<dynamic, dynamic> json) => DataModel(
      id: json['id'],
      email: json['email'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      avatar: json['avatar']);
}
