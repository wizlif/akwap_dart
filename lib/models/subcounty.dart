part of '../akwap.dart';

class Subcounty extends Equatable {
  final int id;
  final String name;
  final List<Parish> parishes;

  const Subcounty({
    required this.id,
    required this.name,
    required this.parishes,
  });

  factory Subcounty.fromJson(Map<String, dynamic> json) {
    return Subcounty(
      id: json['id'],
      name: json['name'],
      parishes: (json['parishes'] as List<dynamic>)
          .map((e) => Parish.fromJson(e))
          .toList(),
    );
  }

  @override
  List<Object?> get props => [id, name, parishes];
}
