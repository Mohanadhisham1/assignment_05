import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List players = [
    "robert lewandoski",
    "pedri",
    "karim benzema",
    "valverdi",
    "messi",
    "ramos"
  ];
  List playersimage = [
    "https://cdn.cnn.com/cnnnext/dam/assets/220829101527-robert-lewandowski-barcelona-super-169.jpg",
    "https://th.bing.com/th/id/OIP.QKzufnG5IPS4xunRAXB-fwHaE8?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.vCTyDzAa7svd4DSxsBXqzQHaEK?pid=ImgDet&rs=1",
    "https://cdn.vox-cdn.com/thumbor/lfu-SrhHPLCGP5aOXyC8dkRxim8=/0x0:4000x2667/1200x800/filters:focal(1680x1014:2320x1654)/cdn.vox-cdn.com/uploads/chorus_image/image/64075234/1133417269.jpg.0.jpg",
    "https://th.bing.com/th/id/R.86d4f7921f7edf10f00f5b6d341f218d?rik=hyaUJe20rJhdcA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.ec3ab3c4d6a22cc001886cc90495a053?rik=zQSrwiwqROWJ7w&pid=ImgRaw&r=0"
  ];
  List clubs = ["barcelona", "barcelona", "madrid", "madrid", "psg", "psg"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: ListView(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int i) {
                      return Container(
                          color: Colors.orange,
                          padding: EdgeInsets.all(35),
                          child: ListTile(
                            isThreeLine: true,
                            trailing: Icon(Icons.sports_soccer),
                            title: Text("${players[i]}"),
                            subtitle: Text("${clubs[i]}"),
                            leading: Image(
                                image: NetworkImage("${playersimage[i]}")),
                          ));
                    })
              ],
            )));
  }
}
