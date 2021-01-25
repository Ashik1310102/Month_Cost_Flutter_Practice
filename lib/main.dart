import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './amount_add.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp(MyCost());
}

class MyCost extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "M_Cost",
      home: MyHomePage(),
      color: Colors.cyan,
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
                        icon: const Icon(Icons.home, color: Colors.blue),
                      ),
                      Container(
                        child: Text("January,2021", style: TextStyle(fontSize: 30.0,),),
                      ),
                      IconButton(
                        icon: const Icon(Icons.attach_money, color: Colors.red),
                        iconSize: 50,
                        alignment: Alignment.topRight,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 50,
                      onPressed: ()=>_addCost(context, "Fast food"),
                      icon: const Icon(Icons.fastfood,color: Colors.orangeAccent),
                    ),
                    IconButton(
                      icon: const Icon(Icons.time_to_leave, color: Colors.cyanAccent),
                      iconSize: 50,
                      onPressed: ()=>_addCost(context, "Car"),
                      alignment: Alignment.topRight,
                    ),
                    IconButton(
                      iconSize: 50,
                      onPressed: ()=>_addCost(context, "Transport"),
                      icon: const Icon(Icons.directions_bus,color: Colors.pink),
                    ),
                    IconButton(
                      onPressed: ()=>_addCost(context, "Local Transport"),
                      icon: const Icon(Icons.train, color: Colors.yellow),
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
                          icon: const Icon(Icons.local_grocery_store,color: Colors.teal),
                          onPressed: ()=>_addCost(context,"Daily Shopping"),

                        ),
                        IconButton(
                          icon: const Icon(Icons.pets, color: Colors.deepOrange),
                          onPressed: ()=>_addCost(context,"Pet Cost"),
                          iconSize: 50,
                          alignment: Alignment.topRight,
                        ),
                        IconButton(
                          iconSize: 50,
                          icon: const Icon(Icons.sports_tennis, color: Colors.cyan),
                          onPressed: ()=>_addCost(context, "Sports"),
                        ),
                        IconButton(
                          icon: const Icon(Icons.phone,color: Color(0xFF4FC3F7)),
                          iconSize: 50,
                          onPressed: ()=>_addCost(context, "Phone Bill"),
                          alignment: Alignment.topRight,
                        )
                      ],
                    ),
                    Container(
                      child: new CircularPercentIndicator(
                        animation: true,
                        backgroundColor: Colors.green,
                        radius: 200.0,
                        lineWidth: 20.0,
                        percent: 0.7,
                        center: new Text("Available 29%",
                          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        progressColor: Colors.red,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 50,
                          onPressed: ()=>_addCost(context, "Celebration"),
                          icon: const Icon(Icons.cake, color: Colors.deepOrangeAccent),
                        ),
                        IconButton(
                          icon: const Icon(Icons.card_giftcard,color: Colors.red),
                          iconSize: 50,
                          onPressed: ()=>_addCost(context, "Gift"),
                          alignment: Alignment.topRight,
                        ),
                        IconButton(
                          iconSize: 50,
                          onPressed: ()=>_addCost(context, "Furnitures"),
                          icon: const Icon(Icons.weekend,color: Colors.greenAccent),
                        ),
                        IconButton(
                          icon: const Icon(Icons.power, color: Colors.red),
                          onPressed: ()=>_addCost(context, "Electricity"),
                          iconSize: 50,
                          alignment: Alignment.topRight,
                        )
                      ],
                    ),
                  ],
                ),
              ),//ap
              Container(
                margin: const EdgeInsets.all(10.0),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 50,
                      onPressed: ()=>_addCost(context, "Household Cost"),
                      icon: const Icon(Icons.domain,color: Colors.deepOrange),
                    ),
                    IconButton(
                      icon: const Icon(Icons.airline_seat_individual_suite,color: Colors.blue),
                      iconSize: 50,
                      onPressed: ()=>_addCost(context, "Treatment Cost"),
                      alignment: Alignment.topRight,
                    ),
                    IconButton(
                      iconSize: 50,
                      onPressed: ()=>_addCost(context, "Personal Cost"),
                      icon: const Icon(Icons.directions_walk, color: Colors.purple),
                    ),
                    IconButton(
                      icon: const Icon(Icons.flight_takeoff, color: Colors.orange),
                      iconSize: 50,
                      onPressed: ()=>_addCost(context, "Travel Cost"),
                      alignment: Alignment.topRight,
                    )
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 5),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Transactions'),
                    color: Colors.cyan,
                  )
              ),
              Container(width: double.infinity,padding: EdgeInsets.only(top: 5),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('SOMETHING'),
                    color: Colors.greenAccent,
                  )
              ),
            ],
          ),
        )
      )
    );
  }
}

