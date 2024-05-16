import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  final TextEditingController productName = TextEditingController();
  final TextEditingController productPrice = TextEditingController();
  List categories = ["Cat", "CAt1", "cat2"];
  dynamic defaultCategories = "Cat";

  void addProduct()async{

   // String productId = Uuid().v1();

    try{
      await FirebaseFirestore.instance.collection("addProduct").add({

     // await FirebaseFirestore.instance.collection("Product").doc(productId).set({
       // "productID" : productId,
        "productName" : productName.text,
        "productPrice" : productPrice.text,
        "productCate" : defaultCategories
      });
      Navigator.pop(context); // Bottom Sheet
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("product added"))); // stf
    } catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("addProduct").snapshots(),
          builder: (context, snapshot) {

            if(snapshot.connectionState==ConnectionState.waiting){
              return  Center(child: CircularProgressIndicator());
            }

            if(snapshot.hasData){
              var dataLength=snapshot.data!.docs.length;
              return dataLength !=0? ListView.builder(itemCount: dataLength,
              itemBuilder: (context,index){
         String PostName = snapshot.data?.docs[index]["productName"];

         return ListTile(
           title: Text(PostName),
           subtitle: Column(
             children: [
               Text(PostName),
             ],
           ),
         );
              },) : Center(child: Text("Nothing to Show"),);
            }

            if(snapshot.hasError){
              return Center(child: Icon(Icons.error,color: Colors.red));
            }

            return Container();
          },) ,

      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(


          context: context, builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TextFormField(
                    controller: productName,
                    validator: (value){
                      if( value == " "  || value!=null ){
                        return "Fill the Field";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Product Name"
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    controller: productPrice,
                    validator: (value){
                      if( value == " "  || value!=null ){
                        return "fill this field";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "enter product price"
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  DropdownButton(
                      value: defaultCategories,
                      items: categories.map((value) {
                        return DropdownMenuItem(
                          child: new Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (val){
                    setState((){
                      defaultCategories=val;
                    });
                    // debugPrint(defaulVal);
                  }),

                  ElevatedButton(onPressed: (){
                    addProduct();
                  }, child: Text("add product"))

                ],
              ),
            );
          },);
        },);
      },child: Icon(Icons.add)),
    );
  }
}