import 'package:flutter/material.dart';

tampilBanner(BuildContext context) {
  return MaterialBanner(
      content: Text('Perlu login, silahkan masuk!'),
      actions: [
        TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
            },
            child: Text('Dismiss'))
      ]);
}

tampilSnackBar(BuildContext context, String msg) {
  return SnackBar(
    content: Text(msg),
    duration: Duration(seconds: 3),
    action: SnackBarAction(
        label: 'Dismiss',
        onPressed: () {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
        }),
  );
}
