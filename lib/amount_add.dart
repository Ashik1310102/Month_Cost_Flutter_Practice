import 'package:flutter/material.dart';

class AmountAdd extends StatefulWidget{
  final String mName;

  const AmountAdd(this.mName);

  @override
  _AmountAddState createState() =>_AmountAddState(this.mName);

}
class _AmountAddState extends State<AmountAdd>{
  final String mName;

  _AmountAddState(this.mName);
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(child: Text(this.mName),)
          ],
        ),
      ),
    );
  }

}


