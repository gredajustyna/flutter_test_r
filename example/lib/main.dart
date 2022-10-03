import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_test_r/flutter_test_r.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test_r/flutter_test_r.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  TextEditingController nameTec = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              TextFormField(
                controller: nameTec,
              ),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              Text(_platformVersion),
              RawMaterialButton(
                onPressed: () async{
                  var hello = FlutterTest_r.print_name(nameTec.text);
                  setState((){
                    _platformVersion = hello;
                  });
                }
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            await FlutterTest_r.make_many_requests(600);
          },
        ),
      ),
    );
  }
}
