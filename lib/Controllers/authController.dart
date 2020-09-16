import 'package:firebase_auth/firebase_auth.dart';
import 'package:for_students/Controllers/userController.dart';
import 'package:for_students/Screens/Home.dart';
import 'package:for_students/Services/database.dart';
import 'package:for_students/models/user.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _firebaseUser = Rx<User>();

  User get user => _firebaseUser.value;


  @override
  onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser(String name, String email, String password, String uid) async {
    try {
      UserCredential _authResult = await _auth.createUserWithEmailAndPassword(
        email: email.trim(), password: password);

        //create user in database.dart
      UserModel _user = UserModel(
        id: _authResult.user.uid,
        name: name,
        email: _authResult.user.email,
      );
      if (await Database().createNewUser(_user)) {
        Get.find<UserController>().user = _user;
        Get.to(Home());
      }
    } catch (e) {
      Get.snackbar('Error Creating Account', 
      e.message,
      snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void login(String email, String password) async {
    try {
      UserCredential _authResult = 
      await _auth.signInWithEmailAndPassword(email: email.trim(), password: password);
      Get.to(Home());
      Get.find<UserController>().user = await Database().getUser(_authResult.user.uid);
    } catch (e) {
      Get.snackbar('Error Signing In',
      e.message,
      snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
      Get.back();
      Get.find<UserController>().clear();
    } catch (e) {
      Get.snackbar('Error Signing Out',
      e.message,
      snackPosition: SnackPosition.BOTTOM);
    }
  }



}