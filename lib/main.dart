import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:folish/app.dart';
import 'package:folish/data/repositories/authentication/authentication_repository.dart';
import 'package:folish/firebase_options.dart';
// import 'package:folish/utils/theme/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // 1. Add widets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // 2. Init local storage
  await GetStorage.init();

  // 3. Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // 4. Initialise Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  
  // 5. Initialise Authentication

  runApp(const App());
}
