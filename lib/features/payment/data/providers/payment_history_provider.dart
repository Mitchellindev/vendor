import 'package:broadcaadvendor/features/payment/data/models/payment_history_model.dart';

class PaymentHistoryProvider {
  static List<Map<String, dynamic>> items = [
    {
      "image": "assets/images/product.png",
      "label": "Channel Bag",
      "price": 6000,
      "date": "5 Nov, 2023 ",
      "status": "Completed"
    },
    {
      "image": "assets/images/product.png",
      "label": "Channel Bag",
      "price": 6000,
      "date": "5 Nov, 2023 ",
      "status": "Completed"
    },
    {
      "image": "assets/images/product.png",
      "label": "Channel Bag",
      "price": 6000,
      "date": "5 Nov, 2023 ",
      "status": "Completed"
    },
    {
      "image": "assets/images/product.png",
      "label": "Channel Bag",
      "price": 6000,
      "date": "5 Nov, 2023 ",
      "status": "Completed"
    },
  ];

  static List<PaymentHistoryModel> getHistory() {
    return List.generate(
        items.length, (index) => PaymentHistoryModel.fromMap(items[index]));
  }
}
