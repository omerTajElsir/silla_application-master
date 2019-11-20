import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:silla_application/custom_widgets/buttons.dart';
import 'package:silla_application/custom_widgets/custom_card.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShareProfileScreen extends StatefulWidget {
  @override
  _ShareProfileScreenState createState() => _ShareProfileScreenState();
}

class _ShareProfileScreenState extends State<ShareProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children: <Widget>[
          CustomizedCard(
            screen_margin: 50,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: QrImage(
                    data: "https://github.com/bigship/barcode.flutter",
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Mohammed Elamin",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              appBtnWithChild(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "مشاركه",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(LineIcons.share, color: Colors.white)
                  ],
                ),
                width: MediaQuery.of(context).size.width / 2,
              ),
              appBtnWithChild(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "حفظ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      LineIcons.save,
                      color: Colors.white,
                    )
                  ],
                ),
                width: MediaQuery.of(context).size.width / 2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
