class Customer {
  final int id;
  final String name;
  final String phone;
  final String description;

  const Customer({
    required this.id,
    required this.name,
    required this.phone,
    required this.description,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'description': description,
    };
  }
}
