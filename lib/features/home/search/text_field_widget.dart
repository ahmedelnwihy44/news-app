import 'package:flutter/material.dart';
import 'package:news/core/resources/colors.dart';

class TextFieldWidget extends StatelessWidget {
     TextFieldWidget({super.key, required this.onSearch});
    final Function(String) onSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value)=>onSearch(value),
        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          label: Text("Search",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
          prefixIcon: Icon(Icons.search,color: Colors.white,),
          suffixIcon: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.close),color: Colors.white,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: ColorsManager.grey),

          ),
          focusColor: ColorsManager.grey,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: ColorsManager.grey),
          ),
        )
    );
  }
}
