import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_integration/models/firebase_users.dart';

// Firestore.instance.collection('books').document()
//   .setData({ 'title': 'title', 'author': 'author' });

Stream<List<Users>> fetchFromFirestore() {
  var snaps = Firestore.instance.collection('users').snapshots();
  var response = snaps.map((item) => item.documents
      .map((e) => Users.fromFirestore(e.data, e.documentID))
      .toList());
  return response;
}
// pagination()async {
  // Firestore.instance.collection('users').orderBy('name').startAfterDocument(documentSnapshot).snapshots();
// }
createUser(String name) async {
  await Firestore.instance.collection('users').add(Users(name: name).toJson());
}

updateUser(String id, String name) async {
  await Firestore.instance.collection('users').document(id).updateData(
        Users(name: name).toJson(),
      );
}

deleteUser(String id) async {
  await Firestore.instance.collection('users').document(id).delete();
}
