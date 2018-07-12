import 'package:flutter/material.dart';

class AddDataPage extends StatelessWidget {
  final TextEditingController _CityNameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Add City",
            style: new TextStyle(fontSize: 16.0),
          ),
        ),
        body: new SafeArea(
          child: new Container(
            child: new Column(children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  labelText: "City Name",
                ),
                controller: _CityNameController,
              ),
              new ButtonBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                  new RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: new Text("Cancel"),
                  ),
                  new RaisedButton(
                    onPressed: () {
                      Navigator.pop(context,_CityNameController.text);
                    },
                    child: new Text("Add"),
                  )
                ],
              )
            ]),
          ),
        ),
        bottomNavigationBar: _getbottomNavigationBarWidget(context),
    );
  }

  Widget _getbottomNavigationBarWidget(BuildContext context) {
    return Container(
      color: Colors.black87,

      child: new ButtonBar(
        mainAxisSize: MainAxisSize.max,
        alignment: MainAxisAlignment.end,
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.arrow_forward,size: 24.0,color: Colors.white,), onPressed: (){
             Navigator.pushNamed(context, "/endpage");
          })
        ],
      ),
    );
  }
}
