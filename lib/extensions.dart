part of 'akwap.dart';

extension DistrictsExtension on List<District> {
  List<District> findByName(
    String name, {
    double accuracy = 80,
  }) {
    return where(
      (district) =>
          partialRatio(
            district.name.toLowerCase(),
            name.toLowerCase(),
          ) >=
          accuracy,
    ).toList();
  }
}

extension CountiesExtension on List<County> {
  List<County> findByName(
    String name, {
    double accuracy = 80,
  }) {
    return where(
      (county) =>
          partialRatio(
            county.name.toLowerCase(),
            name.toLowerCase(),
          ) >=
          accuracy,
    ).toList();
  }
}

extension SubcountiesExtension on List<Subcounty> {
  List<Subcounty> findByName(
    String name, {
    double accuracy = 80,
  }) {
    return where(
      (subcounty) =>
          partialRatio(
            subcounty.name.toLowerCase(),
            name.toLowerCase(),
          ) >=
          accuracy,
    ).toList();
  }
}

extension ParishesExtension on List<Parish> {
  List<Parish> findByName(
    String name, {
    double accuracy = 80,
  }) {
    return where(
      (parish) =>
          partialRatio(
            parish.name.toLowerCase(),
            name.toLowerCase(),
          ) >=
          accuracy,
    ).toList();
  }
}

extension VillagesExtension on List<Village> {
  List<Village> findByName(
    String name, {
    double accuracy = 80,
  }) {
    return where(
      (village) =>
          partialRatio(
            village.name.toLowerCase(),
            name.toLowerCase(),
          ) >=
          accuracy,
    ).toList();
  }
}
