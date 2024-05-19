// ignore_for_file: public_member_api_docs, sort_constructors_first

class PaymentHistoryModel {
  final String image;
  final String label;
  final int price;
  final String date;
  final String status;

  const PaymentHistoryModel({
    required this.image,
    required this.label,
    required this.price,
    required this.date,
    required this.status,
  });

  factory PaymentHistoryModel.fromJson(Map<String, dynamic> json) {
    return PaymentHistoryModel(
      image: json['image'] as String,
      label: json['label'] as String,
      price: json['price'] as int,
      date: json['date'] as String,
      status: json['status'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'image': image,
        'label': label,
        'price': price,
        'date': date,
        'status': status,
      };

  PaymentHistoryModel copyWith({
    String? image,
    String? label,
    int? price,
    String? date,
    String? status,
  }) {
    return PaymentHistoryModel(
      image: image ?? this.image,
      label: label ?? this.label,
      price: price ?? this.price,
      date: date ?? this.date,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'label': label,
      'price': price,
      'date': date,
      'status': status,
    };
  }

  factory PaymentHistoryModel.fromMap(Map<String, dynamic> map) {
    return PaymentHistoryModel(
      image: map['image'] as String,
      label: map['label'] as String,
      price: map['price'] as int,
      date: map['date'] as String,
      status: map['status'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory PaymentHistoryModel.fromJson(String source) => PaymentHistoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentHistoryModel(image: $image, label: $label, price: $price, date: $date, status: $status)';
  }

  @override
  bool operator ==(covariant PaymentHistoryModel other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.label == label &&
        other.price == price &&
        other.date == date &&
        other.status == status;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        label.hashCode ^
        price.hashCode ^
        date.hashCode ^
        status.hashCode;
  }
}
