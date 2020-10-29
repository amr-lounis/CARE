import 'package:flutter/material.dart';
import 'sign.dart';

class MainMedecine extends StatefulWidget {
  @override
  createState() => _MainMedecine();
}
class _MainMedecine extends State<MainMedecine> {
  @override
  Widget build(BuildContext vvv) {
    return Scaffold(
      drawer: widgetDrawer(),
      appBar: widgetAppBar(context),
      body:widgetBody(context),
    );
  }
  widgetAppBar(BuildContext context){
    return AppBar(
        title: Text("MainPationt") ,
        actions: <Widget>[
          RaisedButton(
              child: Text('Log Out',style: TextStyle(fontSize: 18,color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignPage() ));
              } ),]
    );
  }
  bool boolFavorite = false;
  bool boolLogin = false;
  widgetBody(BuildContext ccc) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('${boolLogin==true?"Login":"Logout"}'),
              onPressed: () { setState(() {
                boolLogin = !boolLogin;
              });},
            ),
            FloatingActionButton(
              child: Icon(Icons.navigate_next),
              onPressed: () {

              },
            ),
            IconButton(icon: Icon(boolFavorite ? Icons.favorite : Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    boolFavorite= !boolFavorite;
                  });
                }
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text('color of theme'),
              onPressed: () { },
            ),
            ButtonBar(children: <Widget>[
              IconButton(onPressed: (){},icon: Icon(Icons.add)),
              IconButton(onPressed: (){},icon: Icon(Icons.edit)),
              IconButton(onPressed: (){},icon: Icon(Icons.delete))
            ],),
            Container(width: 50,height: 50,color: Colors.blue, child: InkWell(onTap: (){},),),

          ]
      ),
    );
  }

  widgetDrawer(){
    return Drawer( //endDrawer: ,
      child: ListView(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text("Drawer"),
          )   ,
          DrawerHeader(child: Icon(Icons.person,size: 150,),),
          ListTile(
            selected: true,
            title: Text("Text"),
            onTap:null,
            leading: Icon(Icons.input),
            trailing: Switch(value: true, onChanged: null),
          ),
          AboutListTile(
            child: Text("This is me"),
            aboutBoxChildren: <Widget>[
              Text("hhhhhhhhhhhhhhhhhhhhhhhhh"),
            ],
          )
        ],
      ),
    );
  }
}