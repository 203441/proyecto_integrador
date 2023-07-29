import '../entities/contact.dart';
import '../repositories/contact_repository.dart';

class GetContactsUseCase {
  final ContactRepository contactRepository;

  GetContactsUseCase({required this.contactRepository});

  Future<List<ContactEntity>> call() => contactRepository.getAllContacts();
}
