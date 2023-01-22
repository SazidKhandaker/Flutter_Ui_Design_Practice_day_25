class Modeclass {
  String photo;
  String name;
  Modeclass(this.photo, this.name);
  static List<Modeclass> getdata() {
    return [
      Modeclass("https://cdn-icons-png.flaticon.com/512/3109/3109867.png",
          "Jewellery"),
      Modeclass("https://cdn-icons-png.flaticon.com/512/1192/1192640.png",
          "Antiques"),
      Modeclass(
          "https://cdn-icons-png.flaticon.com/512/5352/5352861.png", "ArtWork"),
      Modeclass("https://cdn-icons-png.flaticon.com/512/8780/8780829.png",
          "Collection"),
      Modeclass(
          "https://cdn-icons-png.flaticon.com/512/1113/1113707.png", "Glass"),
    ];
  }
}
