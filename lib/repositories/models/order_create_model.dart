class OrderCreateModel {
  int rentalTime;
  String? promotionId;
  bool isPaid;
  double unitPrice;
  double deliveryFee;
  double deliveryDistance;
  double deposit;
  double amount;
  String? description;
  List<OrderDetails> orderDetails;

  OrderCreateModel({
    required this.rentalTime,
    this.promotionId,
    required this.isPaid,
    required this.unitPrice,
    required this.deliveryFee,
    required this.deliveryDistance,
    required this.deposit,
    required this.amount,
    this.description,
    required this.orderDetails,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rentalTime'] = rentalTime;
    data['promotionId'] = promotionId;
    data['isPaid'] = isPaid;
    data['unitPrice'] = unitPrice;
    data['deliveryFee'] = deliveryFee;
    data['deliveryDistance'] = deliveryDistance;
    data['deposit'] = deposit;
    data['amount'] = amount;
    data['description'] = description;
    data['orderDetails'] = orderDetails!.map((v) => v.toJson()).toList();
    return data;
  }
}

class OrderDetails {
  String carId;
  bool hasDriver;
  DeliveryLocation? deliveryLocation;
  DeliveryLocation? pickUpLocation;
  DateTime deliveryTime;
  DateTime pickUpTime;
  DateTime startTime;
  DateTime endTime;

  OrderDetails({
    required this.carId,
    required this.hasDriver,
    this.deliveryLocation,
    this.pickUpLocation,
    required this.deliveryTime,
    required this.pickUpTime,
    required this.startTime,
    required this.endTime,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['carId'] = carId;
    data['hasDriver'] = hasDriver;
    if (deliveryLocation != null) {
      data['deliveryLocation'] = deliveryLocation!.toJson();
    }
    if (pickUpLocation != null) {
      data['pickUpLocation'] = pickUpLocation!.toJson();
    }
    data['deliveryTime'] = deliveryTime;
    data['pickUpTime'] = pickUpTime;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    return data;
  }
}

class DeliveryLocation {
  double longitude;
  double latitude;

  DeliveryLocation({
    required this.longitude,
    required this.latitude,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    return data;
  }
}
