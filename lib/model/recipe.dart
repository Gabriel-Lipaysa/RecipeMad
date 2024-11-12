class Recipes {
  late int id;
  late int catid;
  late String name;
  late List<String> ingredients;
  late List<String> steps;
  late int duration;
  String? imgUrl;

  Recipes(
      {required this.id,
      required this.catid,
      required this.name,
      required this.ingredients,
      required this.steps,
      required this.duration,
      this.imgUrl});
}

List<Recipes> recipeList = [
  Recipes(
      id: 1,
      catid: 1,
      name: "Kamoteng Kayo",
      ingredients: [
        'Tubig',
        'Kamote',
        'Asukal',
      ],
      steps: ["ïlaga", "Budbud asukal", "Saw saw tubig"],
      duration: 20,
      imgUrl:
          "https://i.pinimg.com/originals/9b/22/ed/9b22ed00d86a393d78fa35adf40f7815.jpg"),
          // Recipes(id: id, catid: catid, name: name, ingredients: ingredients, steps: steps, duration: duration)
];
