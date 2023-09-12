part of '../akwap.dart';

class Village extends Equatable {
  final int id;
  final String name;

  const Village({
    required this.id,
    required this.name,
  });

  factory Village.fromJson(Map<String, dynamic> json) {
    return Village(id: json['id'], name: json['name']);
  }

  @override
  List<Object?> get props => [id, name];
}
