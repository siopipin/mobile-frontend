import 'package:flutter/material.dart';

class LoginTextFieldDavid extends StatelessWidget {
  final TextEditingController ctrl;
  final bool? status;
  final String label;
  const LoginTextFieldDavid({
    Key? key,
    required this.ctrl,
    required this.status,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: ctrl,
      decoration: InputDecoration(
          label: Text(label),
          errorText: status == true ? 'username harus diisi' : null),
    );
  }
}
