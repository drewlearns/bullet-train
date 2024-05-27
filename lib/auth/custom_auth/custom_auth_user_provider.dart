import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class ThePurplePiggyBankAuthUser {
  ThePurplePiggyBankAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ThePurplePiggyBankAuthUser> thePurplePiggyBankAuthUserSubject =
    BehaviorSubject.seeded(ThePurplePiggyBankAuthUser(loggedIn: false));
Stream<ThePurplePiggyBankAuthUser> thePurplePiggyBankAuthUserStream() =>
    thePurplePiggyBankAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
