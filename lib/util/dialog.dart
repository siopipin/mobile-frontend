import 'package:flutter/material.dart';

class CustomDialog {
  //banner
  banner(
      {required BuildContext context, String title = "Selesaikan masalah!"}) {
    return MaterialBanner(content: Text(title), actions: [
      TextButton(onPressed: () {}, child: Text("Fix me")),
      TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
          },
          child: Text("Dismiss"))
    ]);
  }

  //dialog
  dialogCustomWidget(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("Enable Location?"),
            children: [
              Text("deskrips....."),
            ],
          );
        });
  }

  //snackbar
}
