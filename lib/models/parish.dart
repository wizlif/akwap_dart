part of '../akwap.dart';

class Parish extends Equatable {
  final int id;
  final String name;
  final List<Village> villages;

  const Parish({
    required this.id,
    required this.name,
    required this.villages,
  });

  factory Parish.fromJson(Map<String, dynamic> json) {
    return Parish(
      id: json['id'],
      name: json['name'],
      villages: (json['villages'] as List<dynamic>)
          .map((e) => Village.fromJson(e))
          .toList(),
    );
  }

  @override
  List<Object?> get props => [id, name, villages];
}
