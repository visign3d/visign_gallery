import 'package:flutter/material.dart';
import 'package:visign_gallery/abstract/abstract_lib.dart';

abstract class AApp extends StatelessWidget{
  const AApp({super.key, required this.app, required this.homePage});

  final Widget app;

  final Scaffold homePage;



  @override
  build(BuildContext context)=>app;



}