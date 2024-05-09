class UserModel {
  late String? id;
  late String name;
  late String email;
  late String mobilePhone;
  late String password;

  UserModel(
      {this.id,
      required this.email,
      required this.name,
      required this.password,
      required this.mobilePhone});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['_id'],
      email: json['email'],
      name: json['name'],
      password: json['password'],
      mobilePhone: json['mobilePhone']);

  Map<String, dynamic> toJson() => {
        "name": name,
        'email': email,
        'mobilePhone': mobilePhone,
        "password": password,
      };
}
