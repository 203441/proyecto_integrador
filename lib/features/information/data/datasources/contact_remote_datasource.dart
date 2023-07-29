import 'package:app_auth/features/information/data/models/contact_model.dart';
import 'package:dio/dio.dart';

abstract class ContactRemoteDataSource {
  Future<List<ContactModel>> getAllContacts();
}

class ContactRemoteDataSourceImpl implements ContactRemoteDataSource {
  final Dio dio;

  ContactRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<ContactModel>> getAllContacts() async {
    final response = await dio.get('http://10.0.2.2:3000/hotlines');

    return (response.data as List)
        .map((contact) => ContactModel.fromJson(contact))
        .toList();
  }
}
