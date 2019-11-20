import 'package:flutter/material.dart';

//customDropDownMenu
class customDropDownMenu extends StatefulWidget {
  final Function onItemChange;
  String selectedMenuItem;
  String hint;
  double width;

  var dataList = [];

  customDropDownMenu(
      {@required this.onItemChange,
      @required this.dataList,
      @required this.selectedMenuItem,
      @required this.width,
      @required this.hint});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _customDropDownMenuState(
        onItemChange: onItemChange,
        dataList: dataList,
        hint: hint,
        selectedMenuItem: selectedMenuItem);
  }
}

class _customDropDownMenuState
    extends State<customDropDownMenu> {
  String selectedMenuItem = "";
  final Function onItemChange;
  var dataList = [];
  String hint;

  _customDropDownMenuState(
      {@required this.onItemChange,
      @required this.dataList,
      @required this.selectedMenuItem,
      @required this.hint});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Container(
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.withOpacity(0.5)),
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5))]),
        child: Column(
          children: <Widget>[
            Container(
              width: widget.width == null
                  ? MediaQuery.of(context).size.width
                  : widget.width,
              child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: DropdownButtonHideUnderline(
                    child: new DropdownButton<String>(
                      hint: Text(this.hint),
                      items: dataList.map((listItem) {
                        return new DropdownMenuItem<String>(
                            value: listItem, child: Text(listItem));
                      }).toList(),
                      onChanged: (String text) {
                        setState(() {
                          selectedMenuItem = text;
                          onItemChange(text);
                        });
                      },
                      value: selectedMenuItem,
                      style: TextStyle(
                          fontFamily: 'AbrilFatface', color: Colors.black),
                    ),
                  )),
            )
          ],
        ));
  }
}
