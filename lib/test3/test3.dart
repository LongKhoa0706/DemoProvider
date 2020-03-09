import 'package:flutter/material.dart';
import 'package:flutter_app/test3/formprovider.dart';
import 'package:provider/provider.dart';

class Test3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ChangeNotifierProvider(
        create: (_) => FormProvider(),
        child: FormWidget(),
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  var fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: fromKey,
        child: Consumer<FormProvider>(
          builder: (BuildContext context, form, Widget child) {
            return Column(
              children: <Widget>[
                TextFormField(
                  validator: (value)=>form.validateEmail(value),
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                ),
                TextFormField(
                  validator: (value)=>form.validatePass(value),
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                ),
                RaisedButton(
                  child: Text("OK "),
                  onPressed: (){
                    var isvalidate = fromKey.currentState.validate();
                    if(isvalidate){

                    }
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
