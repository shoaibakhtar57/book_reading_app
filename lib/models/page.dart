class BookPage {
  int pageNumber;
  List<String> paragraphs;

  BookPage({required this.pageNumber, required this.paragraphs});

  factory BookPage.fromJson(Map<String, dynamic> json) {
    return BookPage(
        pageNumber: json['pageNumber'], paragraphs: json['paragraphs']);
  }
}
