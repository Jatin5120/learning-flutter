import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/res/res.dart';

class CollectionInterface {
  const CollectionInterface._();

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static final user = _firestore.collection(CollectionConstants.users).withConverter<UserModel>(
        fromFirestore: (snapshot, _) => UserModel.fromMap(snapshot.data()!),
        toFirestore: (data, _) => data.toMap(),
      );
}
