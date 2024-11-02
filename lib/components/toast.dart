import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastInfo({
  required String msg,
  Color backGroundColor = Colors.black,
  Color textColor = Colors.white,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    backgroundColor: backGroundColor,
    textColor: textColor,
    gravity: ToastGravity.TOP,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 16,
  );
}
