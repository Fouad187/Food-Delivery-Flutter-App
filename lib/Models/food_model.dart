class Food
{
  final String id;
  final String name;
  final String image;
  final String description;
  final String category;
  final double price;
  final String resturant;
  final String delivertime;
  final double discount;
  final double rating;
  double totalprice;
  double totaldiscound;
  int quantity;
  bool isfavorite;

  Food({this.id, this.name, this.image,this.description, this.category, this.price,this.resturant,this.delivertime,this.discount,
      this.rating , this.quantity , this.totaldiscound , this.totalprice , this.isfavorite});
}


