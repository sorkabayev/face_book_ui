class Story {
  String img;
  String name;

  Story(this.img, this.name);

  static List<Story> story = [
    Story("asset/image/Lime.jpg", "TheRoCK"),
    Story("asset/image/Two types of dream.jpg", "TheRoCK"),
    Story("asset/image/Стоунхендж.jpg", "TheRoCK"),
    Story("asset/image/Утро..jpg", "TheRoCK"),
    Story("asset/image/Шабаш.jpg", "TheRoCK"),
  ];
  static List<Story> person = [
    Story("asset/image/im_1.jpg", "TheRoCK"),
    Story("asset/image/im_2.jpg", "TheRoCK"),
    Story("asset/image/im_3.jpg", "TheRoCK"),
    Story("asset/image/im_4.jpg", "TheRoCK"),
    Story("asset/image/im_5.jpg", "TheRoCK"),
  ];
}
