// ignore_for_file: public_member_api_docs, sort_constructors_first
class ClientModel {
  String clientFN;
  String clientLN;
  String price;
  bool isPaid;
  String date;

  ClientModel({
    required this.clientFN,
    required this.clientLN,
    required this.price,
    required this.isPaid,
    required this.date,
  });
}
