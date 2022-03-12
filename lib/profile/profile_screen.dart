import 'package:flutter/material.dart';
import 'package:flutter_application/profile/profile_detail_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileDetailScreen()));
          },
          child: const Text('Profile Detail'),
        ),
      ),
    );
  }
}
