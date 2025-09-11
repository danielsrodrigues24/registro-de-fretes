class Customer {
  final String name;
  final String phone;
  final String description;

  const Customer({
    required this.name,
    required this.phone,
    required this.description,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      name: json['name'],
      phone: json['phone'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone': phone,
      'description': description,
    };
  }
}
