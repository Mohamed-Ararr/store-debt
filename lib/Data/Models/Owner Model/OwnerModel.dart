import 'package:hive_flutter/hive_flutter.dart';

part 'OwnerModel.g.dart';

@HiveType(typeId: 0)
class OwnerModel extends HiveObject {
  @HiveField(0)
  String ownerFN;
  @HiveField(1)
  String ownerLN;

  OwnerModel({
    required this.ownerFN,
    required this.ownerLN,
  });
}
