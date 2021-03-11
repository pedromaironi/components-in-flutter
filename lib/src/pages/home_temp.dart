import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _createItems(),
        children: _createItemsShort(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = [];
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list..add(tempWidget)..add(Divider(color: Colors.red));
    }
    return list;
  }

  List<Widget> _createItemsShort() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + "!"),
            subtitle: Text("Subtitle"),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => {},
          ),
          Divider()
        ],
      );
    }).toList();
    // return widgets;
  }
}
