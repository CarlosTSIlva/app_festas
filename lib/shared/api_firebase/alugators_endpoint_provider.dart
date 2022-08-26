import 'package:api_example/shared/api_firebase/alugators_endpoint.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final alugatorsEndpointProvider = Provider((ref) {
  final firebase = FirebaseFirestore.instance;
  return AlugatorsEndpoint(firebase);
});
