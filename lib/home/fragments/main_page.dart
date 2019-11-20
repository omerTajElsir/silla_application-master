import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:silla_application/custom_widgets/list_view_with_stickey_header.dart';
import 'package:silla_application/utils/AppColors.dart';

import 'main_page_fragment/home_segments_fragment/help_fragment.dart';
import 'main_page_fragment/home_segments_fragment/invitaion_fragment.dart';
import 'main_page_fragment/home_segments_fragment/news_fragment.dart';
import 'main_page_fragment/home_segments_fragment/poll_screen.dart';

class MainPageFragment extends StatefulWidget {
  @override
  _MainPageFragmentState createState() => _MainPageFragmentState();
}

class _MainPageFragmentState extends State<MainPageFragment> {
  final Map<int, Widget> _segments = <int, Widget>{
    0: Text(
      'اخبار',
      style: TextStyle(color: Colors.white),
    ),
    1: Text(
      'دعوات',
      style: TextStyle(color: Colors.white),
    ),
    2: Text(
      'معونات',
      style: TextStyle(color: Colors.white),
    ),
    3: Text(
      'استطلاع',
      style: TextStyle(color: Colors.white),
    ),
  };

  List<Widget> _segmentsFragments = [
    NewsSegmentFragment(),
    InvitationSegmentFragment(),
    HelpsSegmentFragment(),
    PollsSegmentFragment()
  ];

  int _selectedSegment = 0;



  @override
  Widget build(BuildContext context) {
    return listViewWithStickyHeader(
      context: context,
        topNavigation: segmentsCtrl(),
        children: <Widget>[_segmentsFragments.elementAt(_selectedSegment)]);
  }

  Widget segmentsCtrl() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MaterialSegmentedControl(
        children: _segments,
        selectionIndex: _selectedSegment,
        borderColor: Colors.grey.withOpacity(0.4),
        selectedColor: AppColors.mainColor,
        unselectedColor: Colors.grey.withOpacity(0.4),
        borderRadius: 30.0,
        onSegmentChosen: (index) {
          setState(() {
            _selectedSegment = index;
          });
        },
      ),
    );
  }
}
