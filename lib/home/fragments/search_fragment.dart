import 'package:flutter/material.dart';
import 'package:silla_application/utils/AppColors.dart';

class SearchFragment extends StatefulWidget {
  @override
  _SearchFragmentState createState() => _SearchFragmentState();
}

class _SearchFragmentState extends State<SearchFragment> {

  List filters  = ["الاشخاص","العوائل"];
  List<DropdownMenuItem<String>> _dropFilters;
  String _currentFilter;

  List<DropdownMenuItem<String>> getDropFilterSub(List _cats) {
    List<DropdownMenuItem<String>> items = new List();
    for (int i = 0;i<_cats.length;i++) {
      String a = _cats[i];

      items.add(new DropdownMenuItem(value: a, child:  new SizedBox(
          width: 200.0,
          child: new Text(a)
      ),));
    }
    return items;
  }

  @override
  void initState() {
    super.initState();
    _dropFilters = getDropFilterSub(filters);
    _currentFilter = _dropFilters[0].value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          margin: EdgeInsets.all(30),
          //color: AppColors.mainColor,
          child: Material(
            color: AppColors.mainColor,
            animationDuration: Duration(milliseconds: 500),
            elevation: 0.0,
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            child:Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Expanded(
                flex:2,
                child: Padding(
                    padding: EdgeInsets.all(0),
                    child: DropdownButton(
                      iconEnabledColor: Colors.white,
                      isExpanded: true,
                      value: _currentFilter,
                      items: _dropFilters,
                      onChanged: (value){
                        setState(() {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          _currentFilter = value;


                        }
                        );
                      },
                    )
                ),
              ),

              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 15,
                    onPressed: (){},
                    child: TextField(

                      //controller: _pass,
                      keyboardType: TextInputType.text,
                      //textAlign: TextAlign.left,
                      autofocus: false,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: 'كلمة البحث ..',
                        filled: true,
                        fillColor: Colors.transparent,
                        //contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

                      ),

                    ),
                  ),
                )
              ),

              Expanded(
                flex: 1,
                child: IconButton(icon: Icon(Icons.search), onPressed: (){}),
              )

            ],
          ),
          )
        ),
        
        Container(
          margin: EdgeInsets.only(top: 50),
          height: 300,
          child: Image.asset("assets/wating.png"),
        )
      ],
    );
  }
}
