import 'package:all_in_one/grid_model.dart';
import 'package:all_in_one/modelclss.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  List griditems = [
    Grdmodl(images: "images/default theme.jpg",
        item: "default theme",
        colors: Colors.orange),
    Grdmodl(
        images: "images/bock app.jpg", item: "fullapps", colors: Colors.cyan),
    Grdmodl(images: "images/integration.jpg",
        item: "integration",
        colors: Colors.yellow),
    Grdmodl(images: "images/dashboard.jpg",
        item: "dashboard",
        colors: Colors.lightBlue),
  ];
  List listitems = [
    listmodl(
        pics: "images/file mnger.png",
        mainitems: "File manager",
        subitems: "Theme 1 Screens",
        color: Colors.orange),
    listmodl  (
        pics: "images/file mnger.png",
        mainitems: "Exercise tips",
        subitems: "Theme 2 Screens",
        color: Colors.green),
    listmodl(
        pics: "images/food rece.jpg",
        mainitems: "Food Recipe",
        subitems: "Theme 3 Screens",
        color: Colors.lightBlue),
    listmodl(
        pics: "images/gym.png",
        mainitems: "File Gym",
        subitems: "Theme 4 Screens",
        color: Colors.cyanAccent),
    listmodl(
        pics: "images/wallet.jpg",
        mainitems: "e Wallet",
        subitems: "Theme  5 Screens",
        color: Colors.grey),
  ];

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("All In One",
            style: TextStyle(
              color: Colors.black,
            ),
          ),

          actions: [
            Switch(
                value: isSwitched,
                onChanged: (value) {
                  isSwitched = value;
                })
          ],
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: griditems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  childAspectRatio:3/2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                    color: (griditems[index].colors),
                    child: Column(
                      children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(griditems[index].images),

                          ),
                    ),
                      height: 40,
                      width: 60,),
                    ),
                         Text(griditems[index].item,
                           style: TextStyle(
                             color: Colors.white
                           ),

                         ),
                      ],
                    ),


                  );
                },
              ),
              Text("Themes",
                  style: TextStyle(
                  color: Colors.black,fontSize: 8),
textAlign: TextAlign.start,

        ),

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: listitems.length,
                  itemBuilder: (BuildContext context, int index){
                    return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height:70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: (listitems[index].color),
                              ),
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.center,
                                mainAxisAlignment:MainAxisAlignment.center,
                                children: [
                                  Container(
                                  height: 30,
                                  width: 30,
                                    decoration: BoxDecoration(
                                     image: DecorationImage(
                                       image: AssetImage(listitems[index].pics,))
                                     )
                                    ),

                                ],

                            /*   Container(

                              decoration: BoxDecoration(





                                ),
                              ),



                            child: Column(children: [


    ),
  ),




                                ],

                              ),
                            ]),
                        ),
*/
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                height:70,
                                width: 245,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(

                                      crossAxisAlignment:CrossAxisAlignment.start,
                                      children: [


                                           Text(listitems[index].mainitems,
                                            style: TextStyle(
                                                color: Colors.black,fontSize: 15),
                                          ),



                                          Text(listitems[index].subitems,
                                            style: TextStyle(
                                                color: Colors.black,fontSize: 8),

                                          ),

                    ],

                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 220.0,top:25 ),






                                        child: CircleAvatar(
                                          backgroundColor: (listitems[index].color),
                                          radius: 15,






                        child: Icon(Icons.arrow_forward_ios_rounded))
                                      ),










                            ]
                          )
                        ]
                    );
                  }

          ),
      ]
      )
    ),
      ),
    );
  }
}
