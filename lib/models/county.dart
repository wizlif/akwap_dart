part of '../akwap.dart';

class County extends Equatable {
  final int id;
  final String name;
  final List<Subcounty> subcounties;

  const County({
    required this.id,
    required this.name,
    required this.subcounties,
  });

  factory County.fromJson(Map<String, dynamic> json) {
    return County(
      id: json['id'],
      name: json['name'],
      subcounties: (json['sub_counties'] as List<dynamic>)
          .map((e) => Subcounty.fromJson(e))
          .toList(),
    );
  }

  @override
  List<Object?> get props => [id, name, subcounties];
}
