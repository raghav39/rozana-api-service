import 'package:flutter/material.dart';
import 'package:rozana_api_service/utils/jwt_util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final JWTUtil jwtUtil = JWTUtil(
      "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkZW1vIiwiYXV0aCI6IlJPTEVfT1JHQU5JWkFUSU9OX0FETUlOIiwiZXhwIjoxNTQ5MDk4ODgxfQ.SNBIPds-ISKQ9WQDyV06iv9wBTUDDReS90smpVmV7bqCYKO1y-u_jze8_jLVyedZXffmHZz8_K1vRzFARk3S9A");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example Rozana Service")),
    );
  }
}
