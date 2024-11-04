import 'package:cloud_firestore/cloud_firestore.dart';

class Authentication {
  final CollectionReference users = FirebaseFirestore.instance.collection("Users");

  Future<bool> addUser(String username, String password) async {
    try {
      await users.add({
        'Username': username,
        'Userpass': password,
      });
      return true;
    } catch (e) {
      print(e);
      return false;  // Return false if the operation fails
    }
  }

  Future<bool> getUser(String username, String userpass) async {
  final querySnapshot = await FirebaseFirestore.instance
    .collection('Users')
    .where('Username', isEqualTo: username)
    .get();

  if (querySnapshot.docs.isEmpty) {
    print('Username not found');
    return false;
  }

  final user = querySnapshot.docs.first;

  if (user['Userpass'] == userpass) {
    print('Authentication successful');
    return true;
  } else {
    print('Incorrect password');
    return false;
  }
}
}

 
