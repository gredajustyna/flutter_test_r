#include "include/flutter_test_r/flutter_test_r_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_test_r_plugin.h"

void FlutterTest_rPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_test_r::FlutterTest_rPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
