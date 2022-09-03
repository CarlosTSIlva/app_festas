import 'package:api_example/alugators/model/alugators_form_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlugatorsEndpoint {
  final FirebaseFirestore firebaseStore;

  AlugatorsEndpoint(this.firebaseStore);

  Future<QuerySnapshot<Map<String, dynamic>>> getAllAlugator() {
    return firebaseStore.collection("rents").get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getByAlugator(String id) {
    return firebaseStore.collection("rents").where("id", isEqualTo: id).get();
  }

  Future<void> deleteAlugator(String id) {
    return firebaseStore.doc("rents/$id").delete();
  }

  Future<void> putAlugator(String id, AlugatorsFomData alugator) {
    return firebaseStore.doc("rents/$id").update(alugator.toJson());
  }

  Future<DocumentReference<Map<String, dynamic>>> createAlugator(
      AlugatorsFomData alugator) {
    return firebaseStore.collection("rents").add(alugator.toJson());
  }
}
