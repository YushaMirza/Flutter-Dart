import 'package:flutter/material.dart';

void displayMessageToUser(String result, BuildContext context) {
  showDialog(context: context, builder: (context) => AlertDialog(
    title: Text(result),
  ));
}
