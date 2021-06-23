import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic List View"),
      ),
      body: get2ndListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("FAB clicked");
        },
        child: Icon(Icons.add),
        tooltip: "Add one more item",
      ),
    );
  }

  void showSnackBar(BuildContext context, String item){
    var snackBar = SnackBar(content: Text("You just tapped $item"));
    //Scaffold.of(context).showSnackBar(snackBar);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<String> getListElements(){
    var items = List<String>.generate(1000, (index) => "Item $index");
    return items;
  }

  Container get2ndListView() {
    var listItems = getListElements();
    return Container(
      child: ListView.builder(itemBuilder: (context, index){
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: (){
            print('${listItems[index]} was tapped');
            showSnackBar(context, listItems[index]);
          },
        );
      })
    );
  }

  Container getListView() {
    return Container(
      child: ListView(children: [
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View"),
          trailing: Icon(Icons.wb_sunny),
          onTap: (){
            print("landscape tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
          onTap: (){
            print("phone tapped");
          },
        ),
        Text("Another item"),
        Container(color: Colors.red, height: 50,)
      ],
      ),
    );
  }
}
