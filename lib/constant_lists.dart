import 'Models/category_model.dart';
import 'Models/food_model.dart';

final List<Category> categories=[
   Category(name:'Burger' , imagepath: 'images/burger.jpg' , numberofitems: 30),
  Category(name:'Pizza' , imagepath: 'images/pizza.jpg' , numberofitems: 22),
  Category(name:'Cheese' , imagepath: 'images/cheese.jpg' , numberofitems: 18),
  Category(name:'Break' , imagepath: 'images/break.jpg' , numberofitems: 40),
  Category(name:'Snacks' , imagepath: 'images/snacks.jpg' , numberofitems: 43),
];


final List<Food> foods=[
  Food(
    image: 'images/bigzack.jpg' ,
    name: 'Big Zacks',
    id: '1',
    category: 'burger',
    price: 53,
    discount: 23,
    rating: 99,
    description: 'The ultimate mix of Chicken together with Mushrooms, Red Onions, Green Peppers,Grilled chicken, fresh tomatoes, mushrooms and green Jalapeño peppers with a drizzle',
    delivertime: '45-30min',
    resturant: 'Zack\'s',

  ),

  Food(
    image: 'images/shawrma.jpg' ,
    name: 'Chicken Shawrma',
    id: '2',
    category: 'burger',
    price: 28,
    discount: 5,
    rating: 97,
    description: 'The ultimate mix of Chicken together with Mushrooms, Red Onions, Green Peppers,Grilled chicken, fresh tomatoes, mushrooms and green Jalapeño peppers with a drizzle',
    delivertime: '25-15min',
    resturant: 'Abo Mazen',
  ),
  Food(
    image: 'images/pizzafood.jpg' ,
    name: 'Hot Pizza',
    id: '3',
    category: 'pizza',
    price: 60,
    discount: 18,
    rating: 94,
    description: 'The ultimate mix of Chicken together with Mushrooms, Red Onions, Green Peppers,Grilled chicken, fresh tomatoes, mushrooms and green Jalapeño peppers with a drizzle',
    delivertime: '20-30min',
    resturant: 'Pizza Hut',
  ),
  Food(
    image: 'images/chicken.jpg' ,
    name: 'Hot Chicken',
    id: '4',
    category: 'burger',
    price: 50,
    discount: 12,
    rating: 92,
    description: 'The ultimate mix of Chicken together with Mushrooms, Red Onions, Green Peppers,Grilled chicken, fresh tomatoes, mushrooms and green Jalapeño peppers with a drizzle',
    delivertime: '30-25min',
    resturant: 'Zack\'s',
  ),
  Food(
    image: 'images/wings.jpg' ,
    name: 'Chicken Wings',
    id: '5',
    category: 'burger',
    price: 87,
    discount: 30,
    rating: 99,
    description: 'The ultimate mix of Chicken together with Mushrooms, Red Onions, Green Peppers,Grilled chicken, fresh tomatoes, mushrooms and green Jalapeño peppers with a drizzle',
    delivertime: '20-15min',
    resturant: 'Zack\'s',
  ),
];