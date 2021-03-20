import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:components_flutter/src/providers/menu_provider.dart';
import 'package:components_flutter/src/utils/icons_string_util.dart';
import 'package:components_flutter/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Components'),
          ),
          body: _lista(),
        ));
  }

  Widget _lista() {
    // print(menuProvider.options);
    // menuProvider.cargarData().then( (options){
    //   print('_lista');
    //   print(options);
    // });
    return FutureBuilder(
      future: menuProvider.cargarData(),
      // initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        print(snapshot.data);
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );

    // return ListView(
    //   children: _listItems(),
    // );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){

          final route = MaterialPageRoute(
            builder: (context)=> AlertPage()
            );
          Navigator.push(context, route);
        },
      );

      options..add(widgetTemp)
            ..add (Divider());
     });

     return options;
  }
}
// final route = MaterialPageRoute(
//             builder: (context){
//               return AlertPage();
//             });
//           Navigator.push(context, route);