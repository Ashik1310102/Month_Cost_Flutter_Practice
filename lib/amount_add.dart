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
      body: Container(
          color: Colors.white60,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Center(
                    child: Row(children: [
                      Icon(Icons.calendar_today_outlined,
                        size: 40,),
                      Text("01/01/2020",
                        style: TextStyle(fontSize: 20),)
                    ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Card(
                    elevation: 5000,
                    color: Colors.greenAccent,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              width: (MediaQuery.of(context).size.width-MediaQuery.of(context).padding.right-MediaQuery.of(context).padding.left)*0.2,
                              child: Row(children: [
                                  Icon(Icons.attach_money,
                                    color: Colors.white,
                                    size: 40,),
                                  Container(height: 40,child: VerticalDivider(color: Colors.white,thickness: 1.5,)),
                                ],),
                            ),
                            Container(
                              width: (MediaQuery.of(context).size.width-MediaQuery.of(context).padding.right-MediaQuery.of(context).padding.left)*0.5,
                              color: Colors.white,
                              child: Text("0",
                                style: TextStyle(fontSize: 40),
                              )
                            ),
                            Container(
                              width: (MediaQuery.of(context).size.width-MediaQuery.of(context).padding.right-MediaQuery.of(context).padding.left)*0.2,
                              child: Row(children: [
                                Container(height: 40,child: VerticalDivider(color: Colors.white,thickness: 1.5,)),
                                IconButton(icon: const Icon(Icons.backspace),
                                    iconSize: 20,
                                    color: Colors.white,
                                    onPressed:(){})
                              ],),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

}


