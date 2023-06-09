import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf_reader/models/document_model.dart';
import 'package:pdf_reader/screens/reader_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: const Text(
          "PDF READER",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Recent Documents",
                style: GoogleFonts.roboto(
                    fontSize: 25.0, fontWeight: FontWeight.bold)),
            Column(
              children: Document.doc_list
                  .map((doc) => ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ReaderScreen(doc: doc)));
                        },
                        title: Text(
                          doc.doc_title!,
                          style: GoogleFonts.nunito(),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text("${doc.page_num!} Pages"),
                        trailing: Text(
                          doc.doc_date!,
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        leading: const Icon(
                          Icons.picture_as_pdf,
                          color: Colors.red,
                          size: 30,
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
