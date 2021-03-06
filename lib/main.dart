import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Repro  {
  var tabIcons = [Icon(Icons.directions_car, color: Colors.black,), Icon(Icons.directions_transit, color: Colors.black), Icon(Icons.directions_bike, color: Colors.black)];
}

void main() {

  runApp(Provider<Repro>.value(
    value: Repro(),
    child: TabBarDemo(),
  ));

}

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {

  @override
  Widget build(BuildContext context) {
    var repro = Provider.of<Repro>(context);
    return MaterialApp(
      home: DefaultTabController(
        length: repro.tabIcons.length,
        child: Scaffold(
          // extendBodyBehindAppBar: true, // comment this out and the error goes away
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text('Tabs Demo'),
          ),
          body: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/blue_clouds.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.18), BlendMode.dstATop),
                ),
              ),
            child: Stack(
              children: [
                TabsForRepro(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(58.0),
                    child: ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("Add/Subtract tab", style: TextStyle(fontSize: 40),),
                      ),
                      onPressed: () {
                        setState(() {
                    repro.tabIcons.add(Icon(Icons.plus_one, color: Colors.black,));
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class TabsForRepro extends StatefulWidget {
  const TabsForRepro({Key? key}) : super(key: key);

  @override
  _TabsForReproState createState() => _TabsForReproState();
}

class _TabsForReproState extends State<TabsForRepro> {
  @override
  Widget build(BuildContext context) {
    var repro = Provider.of<Repro>(context);
    return TabBar(
      tabs:  [
        for (var icon in repro.tabIcons)
          Tab(
              icon: icon),
      ],
    );
  }
}
