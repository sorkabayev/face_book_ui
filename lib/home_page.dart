import 'package:face_book_ui/main.dart';
import 'package:face_book_ui/model.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
    appBar: AppBar(
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.grey,
        size: 30,)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,color: Colors.grey,
        size: 30,))
      ],
      backgroundColor: Colors.black,
      title: const Text("facebook",style: TextStyle(
        fontSize: 35,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),),
    ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.black,
                padding: EdgeInsets.only(left: 5),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:   [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("asset/image/im_2.jpg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 10
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.grey)
                      ),
                      width: 300,
                      height: 50,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(onPressed: (){},
                        icon: Icon(Icons.video_call,
                        color: Colors.red,), label: Text("Live",
                        style: TextStyle(
                          color: Colors.grey
                        ),)),
                    Container(
                      width: 1,
                      height: 30,
                      color: Colors.grey,
                    ),
                    TextButton.icon(onPressed: (){},
                        icon: Icon(Icons.photo,
                        color: Colors.green,), label: Text("Photo",
                        style: TextStyle(
                          color: Colors.grey
                        ),)),
                    Container(
                      width: 1,
                      height: 30,
                      color: Colors.grey,
                    ),
                    TextButton.icon(onPressed: (){},
                        icon: Icon(Icons.location_on,
                        color: Colors.redAccent,), label: Text("Check in",
                        style: TextStyle(
                          color: Colors.grey
                        ),)),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ///List Story
              Container(
                color: Colors.black,
                padding: EdgeInsets.only(top: 10,bottom: 10),
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Story.story.length,
                  itemBuilder: (context, index) =>
                      buildContainer(Story.story[index], index),

                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 430,
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("asset/image/im_2.jpg"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("User Two",style: TextStyle(color: Colors.grey,fontSize: 20),),
                            Text("User Two",style: TextStyle(color: Colors.grey,fontSize: 10),
                            )],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildContainer(Story e, index) => Container(
    height: 210,
    width: 120,
    margin: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(Story.story[index].img),
            fit: BoxFit.cover
        )
    ),
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black87,
            Colors.black54,
            Colors.black54.withOpacity(0.3),
            Colors.black54.withOpacity(0.2),
            Colors.black54.withOpacity(0.1),
          ]
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Story.person[index].img),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.all(Radius.circular(45)),
                border: Border.all(color: Colors.blue,width: 2)
            ),
          ),
          Text(Story.story[index].name, style: TextStyle(color: Colors.white),)
        ],
      ),
    ),
  );
}


