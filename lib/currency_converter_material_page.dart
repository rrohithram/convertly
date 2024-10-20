// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  _CurrencyConverterMaterialPageState createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text(
            "Convertly.",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'BebasNeue'),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 23, 23),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 75),
                const Icon(Icons.currency_exchange_outlined, color: Colors.white, size: 120),
                const SizedBox(height: 50),
                const Text(
                  "Convert INR to USD",
                  style: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255), fontFamily: 'BebasNeue',
                  ),
                ),
                const SizedBox(height: 60),
                Text(
                  "\$ ${result.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 35, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255), fontFamily: 'BebasNeue',
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(color: Color.fromARGB(255, 23, 23, 23)),
                    decoration: const InputDecoration(
                      label: Text(
                        "Enter INR",
                        style: TextStyle(color: Color.fromARGB(255, 23, 23, 23)),
                      ),
                      prefixIcon: Icon(Icons.currency_rupee_outlined),
                      prefixIconColor: Color.fromARGB(255, 23, 23, 23),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          result = double.parse(textEditingController.text) / 83.89;
                        });
                      },
                      style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),
                      child: const Text(
                        "  Convert  ",
                        style: TextStyle(fontFamily: 'BebasNeue', fontSize: 25, color: Color.fromARGB(255, 23, 23, 23)),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.clear();
                          result = 0; // Reset the result to 0
                        });
                      },
                      style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),
                      child: const Text(
                        "  Reset  ",
                        style: TextStyle(fontFamily: 'BebasNeue', fontSize: 25, color: Color.fromARGB(255, 23, 23, 23)),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(onPressed: () {
                      showDialog(context: context, builder: (context) => AlertDialog(
                        title: const Text("Thanks for trying out my app!"),
                        content: const Text("This is my best ever (?) flutter app, and I made it in less than 3 hours :) This is the second iteration of the app (v0.2a). This app converts INR to USD. Made with ❤️ by Rohith!"),
                        actions: [TextButton(child: const Text("OK"), onPressed: () => Navigator.pop(context), )],
                      ));
                    }, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)), child: const Text(
                        "  About  ",
                        style: TextStyle(fontFamily: 'BebasNeue', fontSize: 25, color: Color.fromARGB(255, 23, 23, 23)),))
                  ],
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
