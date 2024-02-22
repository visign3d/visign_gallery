// import 'package:firebase_core/firebase_core.dart';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:visign_gallery/feateres/firebase/firebase_service.dart';
//
// main()async {
//
//
//   FirebaseApp app =await FirebaseApp.app();
//
//
//   final FirebaseOptions app = FirebaseOptions(
//     //googleAppID: '1:79601577497:ios:5f2bcc6ba8cecddd',
//     //gcmSenderID: '79601577497',
//     apiKey: 'AIzaSyArgmRGfB5kiQT6CunAOmKRVKEsxKmy6YI-G72PVU',
//      appId: '1:79601577497:ios:5f2bcc6ba8cecddd', messagingSenderId: '', projectId: 'flutter-firestore',
//   );
//
//
//
//
//
//   test('firestore', () async {
//     WidgetsFlutterBinding.ensureInitialized();
//     final Firestore firestore = Firestore(app: app);
//     var s = FirebaseService();
//
//     var g = await s.getImageURL('dome-8.jpg');
//     print(g);
//
//   });
//
//
//
// }