class User {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String role;
  final String? profilePicture;
  final DateTime? createdAt;
  final String? gender;
  final String? age;
  final String? mrNumber; // Auto-generated Medical Record Number (patients only)
  final String? cnic;
  final String? address;
  final String? bloodGroup;
  final String? height;
  final String? weight;
  final String? existingConditions;
  final String? healthGoals;
  final List<dynamic>? emergencyContacts;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.role,
    this.profilePicture,
    this.createdAt,
    this.gender,
    this.age,
    this.mrNumber,
    this.cnic,
    this.address,
    this.bloodGroup,
    this.height,
    this.weight,
    this.existingConditions,
    this.healthGoals,
    this.emergencyContacts,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: (json['_id'] ?? json['id'] ?? '').toString(),
      name: (json['name'] ?? json['username'] ?? '').toString(),
      email: (json['email'] ?? '').toString(),
      phoneNumber: (json['phoneNumber'] ?? json['phone'] ?? '').toString(),
      role: (json['role'] ?? '').toString(),
      profilePicture: (json['profilePicture'] ?? json['profile_picture'] ?? json['image'] ?? json['avatar'] ?? json['photo'])?.toString(),
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'].toString())
          : null,
      gender: json['gender']?.toString(),
      age: json['age']?.toString(),
      mrNumber: json['mrNumber']?.toString(),
      cnic: (json['cnic'] ?? json['idCard'] ?? json['id_card'])?.toString(),
      address: json['address']?.toString(),
      bloodGroup: json['bloodGroup']?.toString(),
      height: json['height']?.toString(),
      weight: json['weight']?.toString(),
      existingConditions: json['existingConditions']?.toString(),
      healthGoals: json['healthGoals']?.toString(),
      emergencyContacts: json['emergencyContacts'] is List ? json['emergencyContacts'] as List<dynamic> : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'role': role,
      'profilePicture': profilePicture,
      'createdAt': createdAt?.toIso8601String(),
      if (gender != null) 'gender': gender,
      if (age != null) 'age': age,
      if (mrNumber != null) 'mrNumber': mrNumber,
      if (cnic != null) 'cnic': cnic,
      if (address != null) 'address': address,
      if (bloodGroup != null) 'bloodGroup': bloodGroup,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (existingConditions != null) 'existingConditions': existingConditions,
      if (healthGoals != null) 'healthGoals': healthGoals,
      if (emergencyContacts != null) 'emergencyContacts': emergencyContacts,
    };
  }

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phoneNumber,
    String? role,
    String? profilePicture,
    DateTime? createdAt,
    String? gender,
    String? age,
    String? mrNumber,
    String? cnic,
    String? address,
    String? bloodGroup,
    String? height,
    String? weight,
    String? existingConditions,
    String? healthGoals,
    List<dynamic>? emergencyContacts,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      role: role ?? this.role,
      profilePicture: profilePicture ?? this.profilePicture,
      createdAt: createdAt ?? this.createdAt,
      gender: gender ?? this.gender,
      age: age ?? this.age,
      mrNumber: mrNumber ?? this.mrNumber,
      cnic: cnic ?? this.cnic,
      address: address ?? this.address,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      existingConditions: existingConditions ?? this.existingConditions,
      healthGoals: healthGoals ?? this.healthGoals,
      emergencyContacts: emergencyContacts ?? this.emergencyContacts,
    );
  }
}
