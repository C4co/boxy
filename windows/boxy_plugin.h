#ifndef FLUTTER_PLUGIN_BOXY_PLUGIN_H_
#define FLUTTER_PLUGIN_BOXY_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace boxy {

class BoxyPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BoxyPlugin();

  virtual ~BoxyPlugin();

  // Disallow copy and assign.
  BoxyPlugin(const BoxyPlugin&) = delete;
  BoxyPlugin& operator=(const BoxyPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace boxy

#endif  // FLUTTER_PLUGIN_BOXY_PLUGIN_H_
