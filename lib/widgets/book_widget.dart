import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              elevation: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //TODO: For book details
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                  const Text(
                    'Some Book Name',
                    style:
                        TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Author Name',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: const Center(
                            child: Text(
                              'Details',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0))),
                          child: const Center(
                              child: Text(
                            'Read',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: -15,
              left: 20.0,
              child: Image.network(
                'https://images-platform.99static.com//WE9F54ATXej5u2LWshKJ4wlQ1-U=/192x192:1699x1699/fit-in/500x500/99designs-contests-attachments/118/118518/attachment_118518740',
                height: 100.0,
                width: 70.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.favorite),
                      const SizedBox(height: 8.0),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black.withOpacity(0.03),
                        ),
                        child: Column(
                          children: const [Icon(Icons.star), Text('5.0')],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
