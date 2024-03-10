import 'package:flutter/cupertino.dart';
import 'package:surrealdb/surrealdb.dart';
import 'package:bcrypt/bcrypt.dart';
import '../../../../../../../core/model/student_model.dart';

class SurrealDBClient {
  static final SurrealDBClient _instance = SurrealDBClient._internal();
  factory SurrealDBClient() => _instance;
  SurrealDBClient._internal();

  final options = const SurrealDBOptions();
  late final SurrealDB client;

  void init() {
    client = SurrealDB('ws://localhost:8000/rpc', options: options)
      ..connect();
  }

  Future<void> signIn() async {
    await client.wait();
    await client.use('test', 'test');
    await client.signin(user: 'root', pass: 'root');
  }

  Future<bool> loginWithEmail(String email, String password) async {
    final result = await SurrealDBClient().client.select(
        'student',
    //     where: {
    //   'email': email,
    //   // Assume you store hashed passwords and compare hashes
    //   'password': hashPassword(password),
    // }
    );

    if (result.isNotEmpty) {
      // Login successful
      return true;
    } else {
      // Login failed
      return false;
    }
  }

  String hashPassword(String password) {
    // Hash a password using bcrypt with a cost of 10
    final hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
    return hashedPassword;
  }

  bool verifyPassword(String password, String hashedPassword) {
    // Verify the password against the hashed version
    return BCrypt.checkpw(password, hashedPassword);
  }



  Future<void> signUp() async {
    await client.wait();
    await client.use('test', 'test');
    await client.signup(
        user: 'root',
        pass: 'root',

    );
  }

  Future<void> registerStudent(/*StudentModel student*/) async {
    final createdStudent = await SurrealDBClient().client.create('student', student);
    debugPrint("Student created: $createdStudent");
  }


}
