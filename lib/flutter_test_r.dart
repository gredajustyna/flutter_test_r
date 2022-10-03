

import 'dart:ffi';
import 'dart:io';

import 'bridge_generated.dart';

class FlutterTest_r {
  static const base = 'rust_crate';
  static final path = Platform.isWindows? '$base.dll' : 'lib$base.so';
  static late final dylib = Platform.isIOS
      ? DynamicLibrary.process()
      : Platform.isMacOS
      ? DynamicLibrary.executable()
      : DynamicLibrary.open(path);
  static late final api = FlutterExampleImpl(dylib);


  static Future<void> make_many_requests(int n) async{
    List <String> k = await api.makeManyRequests(n: n);
    print(k);
  }

  static String print_name(String name){
    return "Hello, $name";
  }
}
