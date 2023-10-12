import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Bla Bla Bla',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Handler saat tombol "Read Now" ditekan
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.transparent,
              side: BorderSide(color: Colors.blue, width: 2),
            ),
            child: const Text('Read Now'),
          ),
          Row(
            children: [
              Text(
                ' New Update',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Handler saat tombol "See All" ditekan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: BorderSide(width: 2),
                ),
                child: const Text('See All >'),
              ),
            ],
          ),
        ],
      )
    );
    }
  }
