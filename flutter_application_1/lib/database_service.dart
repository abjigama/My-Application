import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseService {
  final FirebaseDatabase _firebaseDatabase = FirebaseDatabase.instanceFor(
    app: Firebase.app(),
    databaseURL: 'https://profinder-50344-default-rtdb.firebaseio.com/',
  );

  // Create (update)
  Future<void> create({
    required String path,
    required dynamic data,
  }) async{
     final DatabaseReference ref = _firebaseDatabase.ref().child(path);
     await ref.set(data);
    }

  //Read
  Future<DataSnapshot?> read({required String path}) async {
    final DatabaseReference ref = _firebaseDatabase.ref().child(path);
    final DataSnapshot snapshot = await ref.get();
    return snapshot.exists ? snapshot : null;
  }
  /// Update
  Future<void> update({
    required String path,
    required Map<String, dynamic> data,
  }) async{
     final DatabaseReference ref = _firebaseDatabase.ref().child(path);
     await ref.update(data);
    }
  ///Delete
  Future<void> delete({required String path}) async {
    final DatabaseReference ref = _firebaseDatabase.ref().child(path);
    await ref.remove();
  }
     
    

}
