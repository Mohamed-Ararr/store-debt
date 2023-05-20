import 'package:hive_flutter/hive_flutter.dart';

part 'ClientModel.g.dart';

@HiveType(typeId: 1)
class ClientModel extends HiveObject {
  @HiveField(0)
  String clientFN;
  @HiveField(1)
  String clientLN;
  @HiveField(2)
  String price;
  @HiveField(3)
  bool isPaid;
  @HiveField(4)
  String date;

  ClientModel({
    required this.clientFN,
    required this.clientLN,
    required this.price,
    required this.isPaid,
    required this.date,
  });
}
