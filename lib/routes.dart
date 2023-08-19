import 'package:foodapp/MyProfile.dart';
import 'package:foodapp/main.dart';
import 'package:foodapp/Makanan.dart';
import 'package:foodapp/Minuman.dart';

final routesList = {
  'home': (_) => const MyHomePage(),
  'makanan': (_) => const Makanan(),
  'minuman': (_) => const Minuman(),
  'profil': (_) => const MyProfile(),
};