import 'package:flutter/material.dart';
class TransactionList extends StatefulWidget{
  final String mName;
  TransactionList(this.mName);
  @override
  _TransactionListState createState() =>_TransactionListState(this.mName);
}

class _TransactionListState extends State<TransactionList>{
  final String mName;
  _TransactionListState(this.mName);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        title: Text("List Of "+mName),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            tooltip: 'Show Snackbar',
            onPressed: () {
            },
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }

}

