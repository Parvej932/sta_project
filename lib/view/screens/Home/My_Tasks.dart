import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class MyTasks extends StatefulWidget {
  const MyTasks({super.key});

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {

  final List<Map<String, String>> items = [
    {
      "image": "https://picsum.photos/200/300?random=1",
      "title": "Laptop",
      "description": "A high performance laptop for work and gaming."
    },
    {
      "image": "https://picsum.photos/200/300?random=2",
      "title": "Smartphone",
      "description": "Latest smartphone with amazing camera features."
    },
    {
      "image": "https://picsum.photos/200/300?random=3",
      "title": "Headphones",
      "description": "Noise-cancelling headphones for clear sound."
    },
    {
      "image": "https://picsum.photos/200/300?random=4",
      "title": "Watch",
      "description": "Smart watch with health tracking features."
    },
  ];








  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello ALEXA  👏',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 18
              ),),
            Text('Lets Start Shopping',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.black.withOpacity(0.4)
              ),),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            items[index]["image"]!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 12),

                        // Title & Description
                        Text(
                          items[index]["title"]!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          items[index]["description"]!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )


          ],
        ),
      ),
    );
  }
}
