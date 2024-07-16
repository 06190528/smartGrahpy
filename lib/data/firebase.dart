import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFunction {
  static Future<void> fetchData(void Function(Map<String, dynamic>?) receiver,
      String collectionPath, String documentId) async {
    try {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection(collectionPath);

      QuerySnapshot querySnapshot = await collectionReference.get();

      List<Map<String, dynamic>> fetchedData = querySnapshot.docs.map((doc) {
        return {
          'id': doc.id,
          ...doc.data() as Map<String, dynamic>,
        };
      }).toList();

      final dataMap = fetchedData.firstWhere(
        (data) => data['id'] == documentId,
        orElse: () => {},
      );
      receiver(dataMap.isEmpty ? null : dataMap);
    } catch (e) {
      print('Error fetching data: $e');
      receiver(null);
    }
  }

  static Future<void> addData(
      Map<String, dynamic> data, String path, String id) async {
    try {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection(path);

      await collectionReference.doc(id).set(data);
    } catch (e) {
      print('Error adding data: $e');
    }
  }
}
