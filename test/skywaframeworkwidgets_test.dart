import 'package:flutter_test/flutter_test.dart';
import 'package:skywaframeworkwidgets/skywaframeworkwidgets.dart';
import 'package:skywaframeworkwidgets/skywaframeworkwidgets_platform_interface.dart';
import 'package:skywaframeworkwidgets/skywaframeworkwidgets_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSkywaframeworkwidgetsPlatform
    with MockPlatformInterfaceMixin
    implements SkywaframeworkwidgetsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SkywaframeworkwidgetsPlatform initialPlatform = SkywaframeworkwidgetsPlatform.instance;

  test('$MethodChannelSkywaframeworkwidgets is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSkywaframeworkwidgets>());
  });

  test('getPlatformVersion', () async {
    Skywaframeworkwidgets skywaframeworkwidgetsPlugin = Skywaframeworkwidgets();
    MockSkywaframeworkwidgetsPlatform fakePlatform = MockSkywaframeworkwidgetsPlatform();
    SkywaframeworkwidgetsPlatform.instance = fakePlatform;

    expect(await skywaframeworkwidgetsPlugin.getPlatformVersion(), '42');
  });
}
