import 'package:app_auth/features/information/domain/entities/contact.dart';

class ContactModel extends ContactEntity {
  ContactModel({
    required id,
    required name,
    required phone,
  }) : super(id: id, name: name, phone: phone);

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}
