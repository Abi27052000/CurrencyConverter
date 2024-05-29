
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {

  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  double result = 0;

      final TextEditingController textEditingController = TextEditingController();

      @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    const border = OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid
                  ),
                borderRadius: BorderRadius.all(Radius.circular(40))

                );
    return  Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:const Text('Currency Converter'),
        centerTitle: true,
        
      ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text(
                'INR ${result.toStringAsFixed(3)}',
                style:const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),

                Padding(
                  padding:const EdgeInsets.all(100.0),
                  child: TextField(
                    controller: textEditingController,
                    style:const TextStyle(
                      color: Colors.white,
                    ),
                                decoration:const InputDecoration(
                  hintText: 'Enter the amount in USD.',
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  hintStyle: TextStyle(
                    color:Colors.black
                  
                  ),
                  filled: true,
                  fillColor: Colors.blue,
                  focusedBorder:border,
                  enabledBorder: border
                                ),
                                keyboardType:const TextInputType.numberWithOptions(
                  decimal: true
                                ),
                              ),
                ),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: TextButton(onPressed: () {
                    setState(() {
                      result =  double.parse(textEditingController.text)*100;
                    });
                  //  print(textEditingController.text);
                  
                    
                  }, 
                  
                  style:const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    minimumSize: MaterialStatePropertyAll(Size(double.infinity,50)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))
                    ))
                  ),
                  
                  
                  child:const Text('Convert'),
                  
                  ),
                )
            ],
            
            
          ),
          
        )
        );
  }
}