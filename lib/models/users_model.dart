import 'package:provider_ogrenme/models/data_model.dart';

class UsersModel {
  int page;
  int per_page;
  int total;
  int total_pages;
  List<DataModel> data;
  Map support;
  UsersModel({
    required this.page,
    required this.per_page,
    required this.total,
    required this.total_pages,
    required this.data,
    required this.support,
  });

  factory UsersModel.fromJson(Map<dynamic, dynamic> json) => UsersModel(
      page: json['page'],
      per_page: json['per_page'],
      total: json['total'],
      total_pages: json['total_pages'],
      data: (json['data'] as List).map((e) => DataModel.fromJson(e)).toList(),
      support: json['support']);
}
