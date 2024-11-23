class ItemModel {
  final engName;
  final String japName;
  final String? imagePath;
  final String sound;

  const ItemModel(
      {required this.engName, required this.japName,
        this.imagePath, required this.sound});
}
