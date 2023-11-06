#include "include/boxy/boxy_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "boxy_plugin.h"

void BoxyPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  boxy::BoxyPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
