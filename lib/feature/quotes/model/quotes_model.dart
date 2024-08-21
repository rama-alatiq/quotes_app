class QuotesModel {
  final String id;
  final String content;
  final String author;
  final List<String> tags;

  const QuotesModel({
    required this.id,
    required this.content,
    required this.author,
    required this.tags,
  });

  factory QuotesModel.fromJson(Map<String, dynamic> json) {
    return QuotesModel(
      id: json['_id'] as String,
      content: json['content'] as String,
      author: json['author'] as String,
      tags: List<String>.from(json['tags'] as List<dynamic>),
    );
  }
}






// class QuotesModel {
//   final String id;
//   final String quoteText;
//   final String quoteGenre;
//   final String quoteAuthor;

//   const QuotesModel({
//     required this.id,
//     required this.quoteText,
//     required this.quoteGenre,
//     required this.quoteAuthor,
//   });

//   factory QuotesModel.fromJson(Map<String, dynamic> json) {
//     return QuotesModel(
//         id: json['_id'] as String,
//         quoteText: json['quoteText'] as String,
//         quoteGenre: json['quoteGenre'] as String,
//         quoteAuthor: json['quoteAuthor'] as String);
//   }
// }
