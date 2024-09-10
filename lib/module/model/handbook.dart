class Handbook {
  final String title;
  final String subtitle1;
  final String content1;
  final String subtitle2;
  final String content2;
  final String? imgURL1;
  final String? imgURL2;

  Handbook(
      {required this.title,
      required this.subtitle2,
      required this.subtitle1,
      required this.content2,
      required this.content1,
      this.imgURL2,
      this.imgURL1});

  // json file convert Handbook model
  factory Handbook.fromJson(Map<String, dynamic> json) {
    return Handbook(
        title: json['title'],
        subtitle1: json['subtitle1'],
        content1: json['content1'],
        subtitle2: json['subtitle2'],
        content2: json['content2'],
        imgURL1: json['imgURL1'],
        imgURL2: json['imgURL2']);
  }
}
