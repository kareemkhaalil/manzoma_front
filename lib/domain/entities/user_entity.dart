class UserEntity {
  final int? id;
  final String username;
  final String email;
  final String? name;
  final String? password;
  final String? role; // 'user' or 'admin'
  final String? clientId;
  final String? branchIds;
  final String? status;
  final DateTime? createdAt;

  UserEntity({
    this.id,
    required this.username,
    required this.email,
    required this.name,
    required this.password,
    required this.role,
    required this.clientId,
    required this.branchIds,
    required this.status,
    required this.createdAt,
  });
}


    // required super.id,
    // required super.username,
    // required super.email,
    // required String? name,
    // required String? password,
    // required String? role, // 'user' or 'admin'
    // required String? clientId,
    // required List<String?> branchIds,
    // required String? status,
    // required DateTime? createdAt,
