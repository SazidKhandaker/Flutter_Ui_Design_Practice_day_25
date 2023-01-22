class Modelclasstwo {
  String name;
  String photo;
  int price;
  bool isclick;
  Modelclasstwo(this.name, this.photo, this.price, this.isclick);

  static List<Modelclasstwo> getdatafromlist() {
    return [
      Modelclasstwo(
          "Sakhyamuni Buddha",
          "https://cdn-icons-png.flaticon.com/512/4941/4941676.png",
          2500,
          true),
      Modelclasstwo("Victorian Elephent",
          "https://cdn-icons-png.flaticon.com/512/490/490123.png", 2500, false),
      Modelclasstwo(
          "Mummy",
          "https://cdn-icons-png.flaticon.com/512/1395/1395112.png",
          3000,
          false),
      Modelclasstwo(
          "Glass",
          "https://cdn-icons-png.flaticon.com/512/1113/1113707.png",
          1000,
          false),
      Modelclasstwo(
          "Old Coin",
          "https://cdn-icons-png.flaticon.com/512/604/604542.png",
          20000,
          false),
      Modelclasstwo(
          "Bowl",
          "https://cdn-icons-png.flaticon.com/512/1532/1532171.png",
          1000,
          false),
      Modelclasstwo(
          "Sakhyamuni Buddha",
          "https://cdn-icons-png.flaticon.com/512/4941/4941676.png",
          2500,
          false),
      Modelclasstwo("Victorian Elephent",
          "https://cdn-icons-png.flaticon.com/512/490/490123.png", 2500, false),
      Modelclasstwo(
          "Mummy",
          "https://cdn-icons-png.flaticon.com/512/1395/1395112.png",
          3000,
          false),
      Modelclasstwo(
          "Glass",
          "https://cdn-icons-png.flaticon.com/512/1113/1113707.png",
          1000,
          false),
      Modelclasstwo(
          "Old Coin",
          "https://cdn-icons-png.flaticon.com/512/604/604542.png",
          20000,
          false),
      Modelclasstwo(
          "Bowl",
          "https://cdn-icons-png.flaticon.com/512/1532/1532171.png",
          1000,
          false)
    ];
  }
}
