class Customer {
  final String id;
  final String name;
  final String phone;
  final String email;
  final String status; // e.g., New, Negotiating, Closed, Lost
  final String notes;

  Customer({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.status,
    required this.notes,
  });
}
