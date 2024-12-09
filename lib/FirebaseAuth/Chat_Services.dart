import 'package:cloud_firestore/cloud_firestore.dart';

class ChatServices {
  //get Firebase Instance

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //get Stream
  getStream() {
    return _firestore.collection('Users').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        //go through each individual user
        final user = doc.data();
        return user;
      }).toList();
    });
  }
}
