import 'package:surrealdb/surrealdb.dart';

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

}
