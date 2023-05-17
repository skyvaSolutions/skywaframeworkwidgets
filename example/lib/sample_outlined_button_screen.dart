import 'package:flutter/material.dart';
import 'package:skywaframeworkwidgets/skywa_appbar.dart';
import 'package:skywaframeworkwidgets/skywa_outlined_button.dart';

class SampleOutlinedButtonScreen extends StatefulWidget {
  const SampleOutlinedButtonScreen({Key? key}) : super(key: key);

  @override
  _SampleOutlinedButtonScreenState createState() =>
      _SampleOutlinedButtonScreenState();
}

class _SampleOutlinedButtonScreenState
    extends State<SampleOutlinedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: SkywaAppBar(appbarText: 'Sample Outlined Buttons'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 20.0),
            SkywaOutlinedButton(
              text: 'Save',
              onTap: () {
                print('Save');
              },
            ),
          ],
        ),
      ),
    );
  }
}
