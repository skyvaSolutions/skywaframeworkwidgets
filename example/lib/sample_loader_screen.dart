import 'package:flutter/material.dart';
import 'package:skywaframeworkwidgets/skywa_appbar.dart';
import 'package:skywaframeworkwidgets/skywa_loader.dart';

class SampleLoaderScreen extends StatelessWidget {
  const SampleLoaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: SkywaAppBar(appbarText: 'Sample Loader'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SkywaLoader(),
      ),
    );
  }
}
