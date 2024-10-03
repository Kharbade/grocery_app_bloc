import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_bloc/features/cart/bloc/cart_bloc.dart';
import 'package:grocery_app_bloc/features/home/models/home_product_data_model.dart';

class CartTileWidget extends StatelessWidget {
  final CartBloc cartBloc;
  final ProductDataModel productDataModel;
  const CartTileWidget({super.key,required this.productDataModel, required this.cartBloc});

  @override
  Widget build(BuildContext context) {
    log(productDataModel.price.toString());
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(productDataModel.imageUrl))
            ),
          ),
          SizedBox(height: 5,),
          Text(productDataModel.name,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("\$" + productDataModel.price.toString(),style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
              Row(
                children: [
                  IconButton(
                      onPressed: () {

                      },
                      icon: const Icon(CupertinoIcons.heart,)),
                  IconButton(
                      onPressed: () {

                      },
                      icon: const Icon(CupertinoIcons.cart))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

