import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'skywaframeworkwidgets_platform_interface.dart';

/// An implementation of [SkywaframeworkwidgetsPlatform] that uses method channels.
class MethodChannelSkywaframeworkwidgets extends SkywaframeworkwidgetsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('skywaframeworkwidgets');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
