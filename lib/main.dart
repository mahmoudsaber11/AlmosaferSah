import 'package:almosafer_sah/almosafer_app.dart';
import 'package:almosafer_sah/service_locator.dart';
import 'package:flutter/material.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServiceLocator().setupServiceLocator();

  runApp(const AlmosaferApp());
}
