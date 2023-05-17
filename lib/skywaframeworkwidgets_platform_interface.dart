import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'skywaframeworkwidgets_method_channel.dart';

abstract class SkywaframeworkwidgetsPlatform extends PlatformInterface {
  /// Constructs a SkywaframeworkwidgetsPlatform.
  SkywaframeworkwidgetsPlatform() : super(token: _token);

  static final Object _token = Object();

  static SkywaframeworkwidgetsPlatform _instance = MethodChannelSkywaframeworkwidgets();

  /// The default instance of [SkywaframeworkwidgetsPlatform] to use.
  ///
  /// Defaults to [MethodChannelSkywaframeworkwidgets].
  static SkywaframeworkwidgetsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SkywaframeworkwidgetsPlatform] when
  /// they register themselves.
  static set instance(SkywaframeworkwidgetsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
