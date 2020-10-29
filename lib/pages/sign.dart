import 'package:flutter/material.dart';
import 'widgets/sign_In_widget.dart';
import 'widgets/sign_up_widget.dart';

import 'main_medecine.dart';
import 'main_pationt.dart';
import 'main_pharmacien.dart';

class SignPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body:widgetBody(context),
    );
  }
  widgetAppBar(){
    return AppBar(
      title: Text("CARE"),
    );
  }
  widgetBody(BuildContext context){
    return Center(
      child: ListView(
          children: <Widget>[
            SignInWidget( onSignIn:(email,password) {
            if(email=="1"){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainMedecine() ));
            }else if(email=="2"){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPationt() ));
            }if(email=="3"){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPharmacien() ));
            }

            }),
            SignUpWidget( onSignUp:(email,password){

            }),
          ]
      ),
    );
  }
}

