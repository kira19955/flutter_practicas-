import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCArdType1 extends StatelessWidget {
  const CustomCArdType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo, color: AppTheme.primary, ),
            title: Text('soy un titulo'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis tortor nec maximus luctus. Pellentesque ac risus ligula. Aliquam tincidunt dapibus erat tincidunt accumsan.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {
                  
                },
                 child: Text('Cancel')),
            
                 TextButton(onPressed: () {
                  
                },
                 child: Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}