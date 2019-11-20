import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'custom_water_header.dart';
//listViewWithStickyHeader

//shrink_wrap

Widget listViewWithStickyHeader({
  List<Widget> children,
  BuildContext context,
  Widget topNavigation,
  shrinkWrap = false,
}) {
  return Column(
    children: <Widget>[
      Container(
          width: MediaQuery.of(context).size.width,
          // This align moves the children to the bottom
          child: topNavigation),
      Expanded(
          child: ListView(
//              primary: true,
        shrinkWrap: true,

        children: children,
      )),
    ],
  );
}

Widget listViewWithPollToRefresh(
    {List<Widget> children,
    shrinkWrap = false,
    RefreshController controller,
    Function onRefresh}) {
  return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      header: CustomWaterDropHeader(),
      controller: controller,
      onRefresh: onRefresh,
      onLoading: () {},
      child: ListView(
              primary: false,
        shrinkWrap: true,
        children: children,
      ));
}
