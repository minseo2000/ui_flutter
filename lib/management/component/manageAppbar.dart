import 'package:flutter/material.dart';

AppBar manageAppbar({
  required String manageTitle
}){
  return AppBar(
    title: Text(manageTitle),
  );
}