import 'package:grocerry/screens/popular_deals_page.dart';
import 'package:grocerry/widget/popular_deals.dart';

class Categories {
  final String categoryImage;
  final String categoryName;

  Categories({required this.categoryImage, required this.categoryName});
  static List<Categories> categories = [
    Categories(
        categoryImage: 'images/categories/baking.jpeg', categoryName: 'Baking'),
    Categories(
        categoryImage: 'images/categories/beverages.jpeg',
        categoryName: 'Beverages'),
    Categories(
        categoryImage: 'images/categories/bread-bakery.jpeg',
        categoryName: 'Bakery'),
    Categories(
        categoryImage: 'images/categories/breakfast.jpeg',
        categoryName: 'Breakfast'),
    Categories(
        categoryImage: 'images/categories/candy-chocolate.jpeg',
        categoryName: 'Candy'),
    Categories(
        categoryImage: 'images/categories/cooking.jpeg',
        categoryName: 'Cooking'),
    Categories(
        categoryImage: 'images/categories/dairy.jpeg', categoryName: 'Dairy'),
    Categories(
        categoryImage: 'images/categories/diabetic-food.png',
        categoryName: 'Diabetic Food'),
    Categories(
        categoryImage: 'images/categories/frozen-canned.jpeg',
        categoryName: 'Frozen Food'),
    Categories(
        categoryImage: 'images/categories/fruits-vegetables.jpeg',
        categoryName: 'Fruits'),
    Categories(
        categoryImage: 'images/categories/meat-fish.jpeg',
        categoryName: 'Meat Fish'),
    Categories(
        categoryImage: 'images/categories/snacks.jpeg', categoryName: 'Snacks')
  ];
}

class PopularDeals {
  String photo;
  String name;
  String weight;
  int price;
  PopularDeals(
      {required this.photo,
      required this.name,
      required this.weight,
      required this.price});
  static List<PopularDeals> popularDeals = [
    PopularDeals(
        photo: 'images/popularDeals/aarong-dairy.png',
        name: 'Dairy Milk',
        weight: '1 Ltr',
        price: 85),
    PopularDeals(
        photo: 'images/popularDeals/chicken.png',
        name: 'Chicken',
        weight: '1 Kg',
        price: 329),
    PopularDeals(
        photo: 'images/popularDeals/chini.png',
        name: 'Akher Chini',
        weight: '1 Kg',
        price: 85),
    PopularDeals(
        photo: 'images/popularDeals/cream milk.png',
        name: 'Cream Milk',
        weight: '500 gm',
        price: 425),
    PopularDeals(
        photo: 'images/popularDeals/eggs.png',
        name: 'Eggs',
        weight: '12 pcs',
        price: 139),
    PopularDeals(
        photo: 'images/popularDeals/guava.png',
        name: 'Guava',
        weight: '1 Kg',
        price: 89),
    PopularDeals(
        photo: 'images/popularDeals/ispahani.png',
        name: 'Ispahani Tea',
        weight: '400 gm',
        price: 195),
    PopularDeals(
        photo: 'images/popularDeals/noodles.png',
        name: 'Noodles',
        weight: '8 Pack',
        price: 160),
    PopularDeals(
        photo: 'images/popularDeals/salt.png',
        name: 'Aci Pure Salt',
        weight: '1 Kg',
        price: 38),
    PopularDeals(
        photo: 'images/popularDeals/tissue.png',
        name: 'Tissue',
        weight: '4 pcs',
        price: 72),
  ];
}
