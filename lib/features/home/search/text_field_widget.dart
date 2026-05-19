import 'package:flutter/material.dart';
import 'package:news/core/resources/colors.dart';

class TextFieldWidget extends StatelessWidget {
     TextFieldWidget({super.key, required this.onSearch});
    final Function(String) onSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value)=>onSearch(value),
        style: Theme.of(context).textTheme.titleSmall,
        decoration: InputDecoration(
          label: Text("Search",style: TextStyle(color: Theme.of(context).textTheme.titleSmall?.color,fontSize: 20,fontWeight: FontWeight.w500),),
          prefixIcon: Icon(Icons.search,color: Theme.of(context).iconTheme.color,),
          suffixIcon: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.close),color: Theme.of(context).iconTheme.color,),
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
