import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {

      'first_name': 'luis',
      'last_name': 'cruz',
      'email': 'q@q.com',
      'password': '132456789',
      'role': 'admin'

    };
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            
            child: Column(
              children: [
            
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario',formProperty:'first_name',formValues:formValues ,),
                SizedBox(height: 30,),
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario',formProperty:'last_name',formValues:formValues ,),
                SizedBox(height: 30,),
                CustomInputField(labelText: 'Email', hintText: 'Email del usuario',keyboardType: TextInputType.emailAddress, formProperty:'email',formValues:formValues ,),
                SizedBox(height: 30,),
                CustomInputField(labelText: 'Password', hintText: 'Password del usuario', obscureText: true, formProperty:'password',formValues:formValues ,),
                SizedBox(height: 30,),

                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperAdmin',child: Text('Super Admin')),
                    DropdownMenuItem(value: 'Dev',child: Text('Dev')),
                    DropdownMenuItem(value: 'Jr',child: Text('Jr')),
                  ],
                  onChanged: (value) {
                  print(value);
                  formValues['role'] = value ??  'Admin';
                },),
            
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }

                    print(formValues);
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                    )
                  )
            
              ],
            ),
          ),),
      ),
    );
  }
}

