
import 'skywaframeworkwidgets_platform_interface.dart';

class Skywaframeworkwidgets {
  Future<String?> getPlatformVersion() {
    return SkywaframeworkwidgetsPlatform.instance.getPlatformVersion();
  }
}
