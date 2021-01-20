import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './amount_add.dart';

void main() {
  runApp(MyCost());
}

class MyCost extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Cost",
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{

  void _addCost(BuildContext ctx,String name){
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => AmountAdd(name)), );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text("M_COST"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            tooltip: 'Show Snackbar',
            onPressed: () {
            },
          ),
        ],

      ),
      body: Center(
        child:Container(
          child: Column(
            children: [
              Card(
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 50,
                        icon: const Icon(Icons.add),
                      ),
                      Container(
                        child: Text("abc"),
                      ),
                      IconButton(
                        icon: const Icon(Icons.money),
                        iconSize: 50,
                        alignment: Alignment.topRight,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 50,
                      icon: const Icon(Icons.add),
                    ),
                    IconButton(
                      icon: const Icon(Icons.money),
                      iconSize: 50,
                      alignment: Alignment.topRight,
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: const Icon(Icons.add),
                    ),
                    IconButton(
                      icon: const Icon(Icons.money),
                      iconSize: 50,
                      alignment: Alignment.topRight,
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 50,
                          icon: const Icon(Icons.add),
                          onPressed: ()=>_addCost(context,"add"),
                        ),
                        IconButton(
                          icon: const Icon(Icons.money),
                          onPressed: ()=>_addCost(context,"money"),
                          iconSize: 50,
                          alignment: Alignment.topRight,
                        ),
                        IconButton(
                          iconSize: 50,
                          icon: const Icon(Icons.add),
                        ),
                        IconButton(
                          icon: const Icon(Icons.money),
                          iconSize: 50,
                          alignment: Alignment.topRight,
                        )
                      ],
                    ),
                    Container(
                      child: new CircularPercentIndicator(
                        animation: true,
                        backgroundColor: Colors.red,
                        radius: 200.0,
                        lineWidth: 20.0,
                        percent: 0.7,
                        center: new Text(
                            "70%",
                          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        progressColor: Colors.green,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 50,
                          icon: const Icon(Icons.add),
                        ),
                        IconButton(
                          icon: const Icon(Icons.money),
                          iconSize: 50,
                          alignment: Alignment.topRight,
                        ),
                        IconButton(
                          iconSize: 50,
                          icon: const Icon(Icons.add),
                        ),
                        IconButton(
                          icon: const Icon(Icons.money),
                          iconSize: 50,
                          alignment: Alignment.topRight,
                        )
                      ],
                    ),
                  ],
                ),
              ),//ap
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 50,
                      icon: const Icon(Icons.add),
                    ),
                    IconButton(
                      icon: const Icon(Icons.money),
                      iconSize: 50,
                      alignment: Alignment.topRight,
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: const Icon(Icons.add),
                    ),
                    IconButton(
                      icon: const Icon(Icons.money),
                      iconSize: 50,
                      alignment: Alignment.topRight,
                    )
                  ],
                ),
              ),
              Container()
            ],
          ),
        )
      )
    );
  }
}

