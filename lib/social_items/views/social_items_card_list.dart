
import 'package:flutter/material.dart';
import 'package:mobagym/social_items/views//social_item_card.dart';
import 'package:mobagym/social_items/data/social_item.dart';

class SocialItemsCardList extends StatelessWidget{
  List<SocialItem> items;
  SocialItemsCardList(this.items);

  @override
  Widget build(BuildContext context) {
    return getList(items);
  }
  static ListView getList(List<SocialItem> items){
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          if(index >= items.length)
            return null;
          return SocialItemCard(items[index]);
        }
    );
  }

}