import 'package:dialer/objectbox.g.dart';

class ContactsStore {
  static Store? _store;

  static Future<void> ensureConnected() async {
    if (_store != null) return;

    _store = openStore(
      directory: '/home/yogita/.config/mechanix_contacts/objectbox',
    );
  }

  static Store get store => _store!;
}
