import 'package:flutter/material.dart';

/// Tab controllers

class ClassVII extends StatefulWidget {
  const ClassVII({super.key});

  @override
  State<ClassVII> createState() => _ClassVIIState();
}

class _ClassVIIState extends State<ClassVII> with SingleTickerProviderStateMixin {

  // TabController? tabController;
  int tabLength = 7;

  @override
  void initState() {
    // TODO: implement initState

    //tabController = TabController(length: tabLength, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Class 7"),
    //   ),
    //   body: Column(
    //     children: [
    //
    //       TabBar(tabs: [
    //
    //         Tab(
    //           child: Text("Test A", style: TextStyle(
    //             color: Colors.black
    //           ),),
    //           icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
    //         ),
    //
    //         Tab(
    //           child: Text("Test B", style: TextStyle(
    //               color: Colors.black
    //           ),),
    //           icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
    //         ),
    //
    //         Tab(
    //           child: Text("Test C", style: TextStyle(
    //               color: Colors.black
    //           ),),
    //           icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
    //         ),
    //
    //         Tab(
    //           child: Text("Test C", style: TextStyle(
    //               color: Colors.black
    //           ),),
    //           icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
    //         ),
    //
    //         Tab(
    //           child: Text("Test C", style: TextStyle(
    //               color: Colors.black
    //           ),),
    //           icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
    //         ),
    //
    //
    //         Tab(
    //           child: Text("Test C", style: TextStyle(
    //               color: Colors.black
    //           ),),
    //           icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
    //         ),
    //
    //         Tab(
    //           child: Text("Test C", style: TextStyle(
    //               color: Colors.black
    //           ),),
    //           icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
    //         ),
    //
    //
    //       ],
    //         controller: tabController,
    //         indicatorColor: Colors.black,
    //         physics: AlwaysScrollableScrollPhysics(),
    //         isScrollable: true,
    //         onTap: (val) {
    //           setState(() {
    //             print("Prev index ${tabController!.index}");
    //             tabController!.index = val;
    //           });
    //         },
    //       ),
    //
    //       Expanded(
    //         child: TabBarView(
    //           controller: tabController,
    //           children: [
    //
    //             ListView.builder(
    //               shrinkWrap: true,
    //               itemCount: 20,
    //               itemBuilder: (context, i) => Card(
    //                 child: ListTile(
    //                   title: Align(
    //                     alignment: Alignment.topLeft,
    //                     child: Row(
    //                       children: [
    //                         FlutterLogo(
    //                           size: 60,
    //                         ),
    //                         SizedBox(
    //                           width: 12,
    //                         ),
    //                         Text("Test C", style: TextStyle(
    //                             color: Colors.black,
    //                           fontSize: 22
    //                         ),),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //
    //             Container(
    //               color: Colors.blue,
    //             ),
    //
    //             GridView.builder(
    //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    //               shrinkWrap: true,
    //               itemCount: 20,
    //               itemBuilder: (context, i) => Card(
    //                 child: ListTile(
    //                   title: Align(
    //                     alignment: Alignment.topLeft,
    //                     child: Row(
    //                       children: [
    //                         FlutterLogo(
    //                           size: 60,
    //                         ),
    //                         SizedBox(
    //                           width: 12,
    //                         ),
    //                         Text("Test C", style: TextStyle(
    //                             color: Colors.black,
    //                             fontSize: 22
    //                         ),),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //
    //             Container(
    //               color: Colors.blue,
    //             ),
    //
    //             Container(
    //               color: Colors.blue,
    //             ),
    //
    //             Container(
    //               color: Colors.blue,
    //             ),
    //
    //             Container(
    //               color: Colors.blue,
    //             ),
    //           ],
    //         ),
    //       ),
    //
    //     ],
    //   )
    // );

    /* this time with DefaultTabCont */

    return DefaultTabController(
      initialIndex: 0,
      length: tabLength,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Controller overview"),
        ),
        body: Column(
          children: [

            TabBar(tabs: [

              Tab(
                child: Text("Test A", style: TextStyle(
                    color: Colors.black
                ),),
                icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
              ),

              Tab(
                child: Text("Test B", style: TextStyle(
                    color: Colors.black
                ),),
                icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
              ),

              Tab(
                child: Text("Test C", style: TextStyle(
                    color: Colors.black
                ),),
                icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
              ),

              Tab(
                child: Text("Test C", style: TextStyle(
                    color: Colors.black
                ),),
                icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
              ),

              Tab(
                child: Text("Test C", style: TextStyle(
                    color: Colors.black
                ),),
                icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
              ),


              Tab(
                child: Text("Test C", style: TextStyle(
                    color: Colors.black
                ),),
                icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
              ),

              Tab(
                child: Text("Test C", style: TextStyle(
                    color: Colors.black
                ),),
                icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
              ),


            ],
              //controller: tabController,
              indicatorColor: Colors.black,
              physics: AlwaysScrollableScrollPhysics(),
              isScrollable: true,
            ),

            Expanded(
              child: TabBarView(
                //controller: tabController,
                children: [

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, i) => Card(
                      child: ListTile(
                        title: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              FlutterLogo(
                                size: 60,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text("Test C", style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.blue,
                  ),

                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, i) => Card(
                      child: ListTile(
                        title: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              FlutterLogo(
                                size: 60,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text("Test C", style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.blue,
                  ),

                  Container(
                    color: Colors.blue,
                  ),

                  Container(
                    color: Colors.blue,
                  ),

                  Container(
                    color: Colors.blue,
                  ),
                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
