// required String id,
// required String name,
// required String email,
// required String phone,
// required String status,
// @JsonKey(name: 'created_at') required DateTime createdAt,

class ClientEntity {
  final int? id;
  final String email;
  final String? name;
  final String? phone;
  final String? status;
  final DateTime? createdAt;

  ClientEntity({
    this.id,
    required this.email,
    required this.name,
    required this.phone,
    required this.status,
    required this.createdAt,
  });
}
