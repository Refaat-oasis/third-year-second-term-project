class Order {
  final DateTime creationDate;
  final String orderStatus;
  final String dlelivaryMethod;
  final String orderPrice;
  final String sourceCity;
  final String sourceStreet;
  final String sourceHouse;
  final String sourceFlat;
  final String sourceContactName;
  final String sourceContactPhone;
  final String sourceContactAddress;
  final String destinationCity;
  final String destinationStreet;
  final String destinationHouse;
  final String destinationFlat;
  final String destinationContactName;
  final String destinationContactPhone;
  final String destinationContactAddress;
  final String userID;
  final String driverID;

  Order({
    required this.creationDate,
    required this.orderStatus,
    required this.dlelivaryMethod,
    required this.orderPrice,
    required this.sourceCity,
    required this.sourceStreet,
    required this.sourceHouse,
    required this.sourceFlat,
    required this.sourceContactName,
    required this.sourceContactPhone,
    required this.sourceContactAddress,
    required this.destinationCity,
    required this.destinationStreet,
    required this.destinationHouse,
    required this.destinationFlat,
    required this.destinationContactName,
    required this.destinationContactPhone,
    required this.destinationContactAddress,
    required this.userID,
    required this.driverID,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        creationDate: json['creationDate'],
        orderStatus: json['orderStatus'],
        dlelivaryMethod: json['dlelivaryMethod'],
        orderPrice: json['orderPrice'],
        sourceCity: json['sourceCity'],
        sourceStreet: json['sourceStreet'],
        sourceHouse: json['sourceHouse'],
        sourceFlat: json['sourceFlat'],
        sourceContactName: json['sourceContactName'],
        sourceContactPhone: json['sourceContactPhone'],
        sourceContactAddress: json['sourceContactAddress'],
        destinationCity: json['destinationCity'],
        destinationStreet: json['destinationStreet'],
        destinationHouse: json['destinationHouse'],
        destinationFlat: json['destinationFlat'],
        destinationContactName: json['destinationContactName'],
        destinationContactPhone: json['destinationContactPhone'],
        destinationContactAddress: json['destinationContactAddress'],
        userID: json['userID'],
        driverID: json['driverID'],
      );

  Map<String, dynamic> toJson() => {
        'creationDate': creationDate,
        'orderStatus': orderStatus,
        'dlelivaryMethod': dlelivaryMethod,
        'orderPrice': orderPrice,
        'sourceCity': sourceCity,
        'sourceStreet': sourceStreet,
        'sourceHouse': sourceHouse,
        'sourceFlat': sourceFlat,
        'sourceContactName': sourceContactName,
        'sourceContactPhone': sourceContactPhone,
        'sourceContactAddress': sourceContactAddress,
        'destinationCity': destinationCity,
        'destinationStreet': destinationStreet,
        'destinationHouse': destinationHouse,
        'destinationFlat': destinationFlat,
        'destinationContactName': destinationContactName,
        'destinationContactPhone': destinationContactPhone,
        'destinationContactAddress': destinationContactAddress,
        'userID': userID,
        'driverID': driverID,
      };
}
