class Document {
  String? doc_title;
  String? doc_date;
  String? doc_url;
  int? page_num;

  Document(this.doc_title, this.doc_url, this.doc_date, this.page_num);

  static List<Document> doc_list = [
    Document(
        "Universal Declaration of Human Rights",
        "https://www.ohchr.org/sites/default/files/UDHR/Documents/UDHR_Translations/eng.pdf",
        "10.12.1948",
        8),
    Document(
        "Magna Carta",
        "https://www.archives.gov/files/press/press-kits/magna-carta/magna-carta-translation.pdf",
        "01.01.1215",
        6)
  ];
}
