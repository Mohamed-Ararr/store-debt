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
