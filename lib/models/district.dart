part of '../akwap.dart';

class District extends Equatable {
  final int id;
  final String name;
  final List<County> counties;

  const District({
    required this.id,
    required this.name,
    required this.counties,
  });

  factory District.fromJson(Map<String, dynamic> json) {
    return District(
      id: json['id'],
      name: json['name'],
      counties: (json['counties'] as List<dynamic>)
          .map((e) => County.fromJson(e))
          .toList(),
    );
  }

  @override
  List<Object?> get props => [id, name, counties];
}
