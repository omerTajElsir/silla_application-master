
import 'package:flutter/material.dart';


class CustomSpeedDial extends StatefulWidget {
   Widget primaryFAB;
   List<FloatingActionButton> minimisedFABOptions;
   bool opened;

  CustomSpeedDial({@required this.primaryFAB, @required this.minimisedFABOptions, this.opened=false});

  @override
  State<StatefulWidget> createState() {
    return _CustomSpeedDialState(opened: opened);
  }
}

class _CustomSpeedDialState extends State<CustomSpeedDial> {
  FloatingActionButton closeCustomSpeedDialFAB;
  bool opened;

  _CustomSpeedDialState({this.opened});

  @override
  void initState() {
    closeCustomSpeedDialFAB = FloatingActionButton(
      child: Icon(Icons.close),
      onPressed: () {
        setState(() {
          opened = false;
        });
      },
    );
    widget.minimisedFABOptions.insert(0, closeCustomSpeedDialFAB);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      fit: StackFit.passthrough,
      overflow: Overflow.visible,
      children: getFABs(),
    );
  }

  List<Widget> getFABs() {
    if (opened) {

      return <Widget>[
        Column(
          verticalDirection: VerticalDirection.up,
          children: widget.minimisedFABOptions,
        ),
      ];
    } else {
      return <Widget>[
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              opened = true;
            });
          },
        ),
      ];
    }
  }
}