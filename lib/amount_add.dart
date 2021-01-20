import 'package:flutter/material.dart';
import './TransactionList.dart';

class AmountAdd extends StatefulWidget{
  final String mName;

  const AmountAdd(this.mName);

  @override
  _AmountAddState createState() =>_AmountAddState(this.mName);

}
class _AmountAddState extends State<AmountAdd>{
  final String mName;

  _AmountAddState(this.mName);
  void _TransactionList(BuildContext ctx,String name){
    Navigator.push(ctx, MaterialPageRoute(builder: (context) => TransactionList(mName)), );
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
        title: Text(this.mName),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.format_list_numbered),
            tooltip: "Show List of "+mName,
            onPressed: ()=> _TransactionList(context, "List"),
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


