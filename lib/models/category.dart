  
import 'package:flutter/material.dart';
  
  class Category {
  String name;
  IconData icon;

  Category(this.name, this.icon);

  Category.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        icon = json['icon'];
}