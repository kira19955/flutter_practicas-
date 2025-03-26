import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 10,
            max: 500,
            activeColor: AppTheme.primary,
            divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnable ? 
            (value) {
               _sliderValue =  value;
               setState(() {
                 
               });
               
               
      
          } : null
          ),

          // Checkbox(value: _sliderEnable, onChanged: (value) {
          //   _sliderEnable = value ?? true;
          //   setState(() {
              
          //   });
          // },),

          // CheckboxListTile(
          //   title: Text('Habilitar Slider'),
          //   activeColor: AppTheme.primary,
          //   value: _sliderEnable, 
          //   onChanged: (value) {
          //   _sliderEnable = value ?? true;
          //   setState(() {
              
          //   });
          // },
          // ),

          SwitchListTile(
            title: Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: (value) {
            _sliderEnable = value;
            setState(() {
              
            });
          },
          ),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(image: NetworkImage('https://i.pinimg.com/564x/22/66/2e/22662e58e91b57e4c3a227c9ffb83e33.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,),
            ),
          ),
      
          SizedBox(height: 50,)
        ],
      )
    );
  }
}