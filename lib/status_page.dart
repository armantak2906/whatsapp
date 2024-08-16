import 'package:flutter/material.dart';
import 'package:untitled/app_contains.dart';
import 'package:untitled/ui_helper.dart';

class StatusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text("Updates",style: mTextStyle25(),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (_){
            return[];
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(height: 10,),
              Text("Status",style: mTextStyle20(),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Stack(
                    children: [ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        height: 55,
                        width: 55,
                        child: Image.asset("assets/images/Screenshot 2024-08-16 222750.png"),
                      ),
                    ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          height: 20,
                          width: 20,
                          color: Colors.green,
                          child: Center(child: Icon(Icons.add,color: Colors.white,)),
                        ),
                      ),
                  ],),
                  SizedBox(width: 20,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My status",style: mTextStyle16()),
                      Text("Tap to add status update",style: mTextStyle12(mFontWeight: FontWeight.w700),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Recent updates",style: mTextStyle16(mFontWeight: FontWeight.w500),),
              SizedBox(
                height: 800,
                child:  ListView.builder(
                    itemCount: Intro.pic.length,
                    itemBuilder: (context,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  height: 55,width: 55,
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(image: AssetImage(Intro.pic[index]['pic']),fit: BoxFit.fill),),),
                              ),SizedBox(width: 5,),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Intro.pic[index]['name']?? 'default',textAlign: TextAlign.justify,style: mTextStyle16(mFontWeight: FontWeight.w800),),
                                  Text(Intro.pic[index]['time']?? 'default',textAlign: TextAlign.justify,style: mTextStyle12(mFontWeight: FontWeight.w500),),
                                ],
                              ),),

                            ],
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            foregroundColor: Colors.black,
              backgroundColor: Color(0xfff5f5f5),
              onPressed: (){},
          child: Icon(Icons.edit),),
          SizedBox(height: 7,),
          FloatingActionButton(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            onPressed: (){},
            child: Icon(Icons.camera_alt_outlined),
          ),
        ],
      ),
    );
  }
}
