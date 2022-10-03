#ifndef FLUTTER_PLUGIN_FLUTTER_TEST_R_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_TEST_R_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_test_r {

class FlutterTest_rPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterTest_rPlugin();

  virtual ~FlutterTest_rPlugin();

  // Disallow copy and assign.
  FlutterTest_rPlugin(const FlutterTest_rPlugin&) = delete;
  FlutterTest_rPlugin& operator=(const FlutterTest_rPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_test_r

#endif  // FLUTTER_PLUGIN_FLUTTER_TEST_R_PLUGIN_H_
