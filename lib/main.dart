import 'package:flutter/material.dart';
import 'package:fluttertest1/currency_converter_material_page.dart';


void main(){
  runApp(const ThisApp());
}

class ThisApp extends StatelessWidget {
  const ThisApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
