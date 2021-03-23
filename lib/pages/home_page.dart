import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/dashboard.dart';
import 'package:flutter_app2/pages/register.dart';
import 'package:flutter_app2/pages/total_users.dart';

class HomePage extends StatelessWidget {
  final TextStyle style = TextStyle(fontSize: 32);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register())),
                  child: Text('PAGE 1', style: style)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard())),
                    child: Text('PAGE 2', style: style)),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TotalUsers())),
                  child: Text('PAGE 3', style: style)),
            ],
          ),
        ),
      ),
    );
  }
}
