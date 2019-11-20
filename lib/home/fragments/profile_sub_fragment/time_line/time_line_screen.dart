import 'package:flutter/material.dart';
import 'package:silla_application/home/fragments/main_page_fragment/home_segments_fragment/details/memory_details.dart';
import 'package:silla_application/home/fragments/main_page_fragment/home_segments_fragment/new_post/add_memory.dart';
import 'package:silla_application/utils/AppColors.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'package:speech_bubble/speech_bubble.dart';

class TimeLineScreen extends StatefulWidget {
  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text("الذكريات"),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_horiz,color: Colors.white,),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 150,
                  color: AppColors.mainColor,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("30",style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.black26,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text("الاحد - محرم 1441",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      Container(
                          width: 108,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(icon: Icon(Icons.add_circle_outline,color: Colors.white,size: 35,),onPressed: (){
                              Navigator.of(context).push(
                                new MaterialPageRoute(
                                  builder: (BuildContext context)=>new AddMemoryScreen(),
                                ),
                              );
                            },),
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Container(
                    width: 3,
                    color: Color(0x5526acac),
                    margin: EdgeInsets.only(left: 80),
                  ),

                  ListView.builder(
                      //controller: _scrollController,
                      itemCount: 25,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index ) {
                        return Row(
                          children: <Widget>[

                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 20, right: 10, top: 20,bottom: 20),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(
                                        new MaterialPageRoute(
                                          builder: (BuildContext context)=>new MemoryDetailsScreen(),
                                        ),
                                      );
                                    },
                                    child: Material(
                                      color: Color(0xFFFFFFFF),
                                      animationDuration: Duration(milliseconds: 500),
                                      //elevation: 3.0,
                                      borderRadius: BorderRadius.all(Radius.circular(0)),
                                      child: SpeechBubble(
                                        nipLocation: NipLocation.LEFT,
                                        color: Colors.white,
                                        // child: Column(
                                        //   mainAxisSize: MainAxisSize.min,
                                        //   children: <Widget>[
                                        //     Text("Give your users some guided instruction"),
                                        //     Text("From the inside of a Speech Bubble")
                                        //   ],
                                        // ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Icon(
                                              Icons.more_horiz,
                                              color: Colors.black,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text(
                                                  "اتممت ادخال بيانات عائلتي في البرنامج وسنبدأ استحدامه فورا، اتمنى ان يعجب الجميع"
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                )


                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.blue,
                            ),
                            Container(
                              width: 72,
                              child: Column(
                                children: <Widget>[
                                  Text("29"),
                                  Text("محرم"),
                                  Text("1441"),
                                ],
                              ),
                            )

                          ],
                        );
                      }

                  )
                ],
              ),
            )
          ],
        )
    );
  }

/*List<TimelineModel> items = [
    TimelineModel(
        Image.asset("assets/person.jpg"),
        position: TimelineItemPosition.left,
        isLast: true,),
    TimelineModel(Placeholder(),
        position: TimelineItemPosition.right),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الذكريات"),
      ),
      body: Timeline(children: items, position: TimelinePosition.Left)
    );
  }*/
}
