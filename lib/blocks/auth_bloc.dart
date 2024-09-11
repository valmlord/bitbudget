import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Cubit<User?> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthBloc() : super(null) {
    _auth.authStateChanges().listen((user) {
      emit(user);
    });
  }

  Future<void> signIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
