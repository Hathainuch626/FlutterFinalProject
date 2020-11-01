class Coffee {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int price;

  Coffee(
      {this.name,
      this.type,
      this.shortDesc,
      this.desc,
      this.image,
      this.rate,
      this.price});
}

List<Coffee> menuorther = [
  Coffee(
      name: "เครปเค้ก Red Velvet",
      type: 'Orther',
      shortDesc: "",
      desc:
          "",
      image: "assets/RedVelvet.jpg",
      rate: 5,
      ),
  Coffee(
      name: "ช็อกโกแลตหน้านิ่ม",
      type: "Orther",
      shortDesc: "",
      desc:
          "",
      image: "assets/Chocolate.jpg",
      rate: 5,
      ),
  Coffee(
      name: "เค้กมะพร้าว",
      type: "Orther",
      shortDesc: "",
      desc:
          "",
      image: "assets/Coconut.jpg",
      rate: 5,
      ),
  Coffee(
      name: "สตรอว์เบอร์รี่ชีสเค้ก",
      type: "Orther",
      shortDesc: "",
      desc:
          "",
      image: "assets/CheeseCake.jpg",
      rate: 5,
      ),
];