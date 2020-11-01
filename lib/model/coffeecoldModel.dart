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

List<Coffee> menucold = [
  Coffee(
      name: "ลาเต้",
      type: 'Cold',
      shortDesc: "กาแฟนม ที่เตรียมด้วยนมร้อนผสมรวมกับกาแฟเอสเพรสโซ",
      desc:
          "ภาษาอิตาลีแปลว่านม เครื่องดื่มกาแฟที่เตรียมด้วยนมร้อน กาแฟลาเต้เริ่มเป็นที่นิยมนอกประเทศอิตาลีในช่วงต้นทศวรรษที่ 1980 ในการชงกาแฟลาเต้ บาริสต้า จะใช้วิธีขยับข้อมือเล็กน้อยขณะที่รินนมและโฟมนมลงบนกาแฟ ทำให้เกิดลวดลายต่าง ๆ เรียกว่า ลาเต้อาร์ต (latte art) หรือศิลปะฟองนมในถ้วยกาแฟ",
      image: "assets/Lattec.jpg",
      rate: 5,
      ),
  Coffee(
      name: "มอคค่า",
      type: "Cold",
      shortDesc: "กาแฟที่มีความหวาน มีเอสเปรสโซ นมร้อน ช็อกโกแลตหรือโกโก้ ",
      desc:
          "มอคค่าคือกาแฟอะราบิก้า (Arabica) ชนิดหนึ่ง ซึ่งปลูกอยู่บริเวณท่าเรือมอคค่าในประเทศเยเมน กาแฟมอคค่ามีสีและกลิ่นคล้ายช็อกโกแลต อันเป็นเอกลักษณ์ที่ทำให้กาแฟมอคค่าเป็นที่รู้จักอย่างแพร่หลาย",
      image: "assets/Mocca.jpg",
      rate: 5,
      ),
  Coffee(
      name: "อัพโฟกาโต้",
      type: "Cold",
      shortDesc: "เป็นเมนู ไอศกรีมวนิลา ราดด้วย Espresso shot",
      desc:
          "อัฟโฟกาโต(Affogato) แปลว่า จม หรือ ถูกทำให้จม เป็นของหวานชนิดหนึ่งที่มีกาแฟเป็นส่วนประกอบพื้นฐาน โดยทั่วไปทำได้โดยตักเจลาโตหรือไอศกรีมกลิ่นรสวานิลลา 1 ช้อนควักใส่ถ้วย แล้วราดเอสเปรสโซร้อนลงไป 1 ช็อต ",
      image: "assets/affogato.jpg",
      rate: 5,
      ),
  Coffee(
      name: "มัคคิอาโต้",
      type: "Cold",
      shortDesc: "กาแฟเอสเพรสโซปิดหน้าด้วยฟองนม",
      desc:
          "มัคคิอาโตในภาษาอิตาเลียนแปลว่า การทำเครื่องหมาย ฉะนั้นในโลกของกาแฟ ถ้ามีคำว่ามัคคิอาโตขึ้นมาเมื่อไร ความสวยงามจะต้องบังเกิด ถ้าเราสั่ง “คาเฟ่มัคคิอาโต” ก็จะเป็นกาแฟเอสเพรสโซปิดหน้าด้วยฟองนม ก่อนทำเครื่องหมายด้วยการเทนมอุ่นลงไปตรงกลางแก้วจนเห็นเป็นชั้นสวยงาม",
      image: "assets/Macchiatoc.jpg",
      rate: 5,
      ),
];