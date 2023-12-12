import 'package:flutter/material.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false, // Set this to false to remove the debug banner
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final random = Random();

  final quotes = [
    'The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt' ,
    'The difference between ordinary and extraordinary is that little extra. - Jimmy Johnson',
    'Don\'t let yesterday take up too much of today. - Will Rogers',
    'It is during our darkest moments that we must focus to see the light. - Aristotle',
    'Whether you think you can or you think you can\'t, you\'re right. - Henry Ford',
    'The mind is everything. What you think you become. - Buddha',
    'The only person you are destined to become is the person you decide to be. - Ralph Waldo Emerson',
    'Everything you\'ve ever wanted is on the other side of fear. - George Addair',
    'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart. - Helen Keller',
    'It is never too late to be what you might have been. - George Eliot',
    'The only way to do great work is to love what you do. - Steve Jobs',
    'If you can dream it, you can do it. - Walt Disney',
    'The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt',
    'The best revenge is massive success. - Frank Sinatra',
    'Pain is temporary. Quitting lasts forever. - Lance Armstrong',
    'The only place where success comes before work is in the dictionary. - Vidal Sassoon',
    'It\'s not the years in your life that count. It\'s the life in your years. - Abraham Lincoln',
    'Change your thoughts and you change your world. - Norman Vincent Peale',
    'The only way to do great work is to love what you do. If you haven\'t found it yet, keep looking. Don\'t settle. - Steve Jobs',
    'The pessimist sees difficulty in every opportunity; the optimist sees opportunity in every difficulty. - Winston Churchill'  ,
    'Don\'t judge each day by the harvest you reap but by the seeds that you plant. - Robert Louis Stevenson',
    'The only person who can pull me down is myself, and I\'m not going to let myself pull me down anymore. - C. JoyBell C.',
    'The difference between successful people and others is not a lack of strength, not a lack of knowledge, but rather a lack of will. - Vince Lombardi',
    'The only journey is the one within. - Rainer Maria Rilke',
    'There is no passion to be found playing small - in settling for a life that is less than the one you are capable of living. - Nelson Mandela',
    'What\'s done is done. What\'s gone is gone. One of life\'s lessons is learning to let go. - Unknown',
    'If you want to live a happy life, tie it to a goal, not to people or things. - Albert Einstein',
    'The purpose of our lives is to be happy. - Dalai Lama',
    'Life is what happens when you\'re busy making other plans. - John Lennon',
    'Get busy living or get busy dying. - Stephen King',
    'You only live once, but if you do it right, once is enough. - Mae West',
    'Twenty years from now you will be more disappointed by the things that you didn\'t do than by the ones you did do. So throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails. Explore, Dream, Discover. - Mark Twain',
    'Life is not a matter of holding good cards, but of playing a poor hand well. - Robert Louis Stevenson',
    'The only way to have a friend is to be one. - Ralph Waldo Emerson',

    // Add more quotes as you like
  ];

  final cheerUpQuotes = [
    'The only person you are destined to become is the person you decide to be. - Ralph Waldo Emerson',


    'The best time to plant a tree was 20 years ago. The second best time is now. - Chinese Proverb',
    'The only way to do great work is to love what you do. - Steve Jobs',
    'If you can dream it, you can do it." - Walt Disney',
    'The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt',
    'The best revenge is massive success. - Frank Sinatra',
    'Pain is temporary. Quitting lasts forever. - Lance Armstrong',
    'The only way to do great work is to love what you do. If you haven\'t found it yet, keep looking. Don\'t settle. - Steve Jobs',
    'The pessimist sees difficulty in every opportunity; the optimist sees opportunity in every difficulty. - Winston Churchill',
    'Don\'t judge each day by the harvest you reap but by the seeds that you plant. - Robert Louis Stevenson',
    'The only person who can pull me down is myself, and I\'m not going to let myself pull me down anymore. - C. JoyBell C.',
    'The difference between successful people and others is not a lack of strength, not a lack of knowledge, but rather a lack of will. - Vince Lombardi',
    'The only journey is the one within. - Rainer Maria Rilke',
    'There is no passion to be found playing small - in settling for a life that is less than the one you are capable of living. - Nelson Mandela',
    'What\'s done is done. What\'s gone is gone. One of life\'s lessons is learning to let go. - Unknown',
    'The only limits to our achievements are the ones we set for ourselves. - Ralph Waldo Emerson',
    'You can\'t control the wind, but you can adjust your sails. - H. Jackson Brown Jr.',
    'Do not conform to the pattern of this world, but be transformed by the renewing of your mind. Then you will be able to test and approve what God\'s will is—his good, pleasing and perfect will. - Romans',
    'Every strike brings me closer to the next home run. - Babe Ruth',
    'The only disability in life is a bad attitude. - Scott Hamilton',
    'Life is a journey, not a destination. Enjoy the ride. - Ralph Waldo Emerson',
    'The journey of a thousand miles begins with a single step. - Lao Tzu',
    'The best things in life are not things. - Art Buchwald',
    'Don\'t let what you cannot do interfere with what you can do. - John Wooden',
    'It\'s not what you have, it\'s what you do with what you have that matters. - Zig Ziglar',
    // Add more cheer up quotes as you like
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Motivated!'),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Text(
                'Motivation App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('About me'),
              onTap: () async {
                // Show a dialog box with custom message and link
                await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Welcome to my About Me page!'),
                      content: Text(
                        'hey there i am noob flutter developer if you liked my this app then make sure to follow me',
                      ),
                      actions: [
                        ElevatedButton(
                          child: Text('Follow me on instagram'),
                          onPressed: () {
                            // Open the desired link
                            launch('https://www.instagram.com/andrioksmith');
                          },
                        ),
                        TextButton(
                          child: Text('Cancel'),
                          onPressed: () {

                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),

            ListTile(
              title: Text('Get Updates'),
              onTap: () {
                // Show a snackbar instead of navigating
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Get Updates feature is still under development'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'Motivational Quotes!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'Get Your Motivation By Selecting Your Mood',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  final quote = quotes[random.nextInt(quotes.length)];
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Motivational Quote'),
                        content: Text(quote),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.thumb_up, color: Colors.green, size: 30.0),
              ),
              const SizedBox(width: 20.0),
              IconButton(
                onPressed: () {
                  final cheerUpQuote = cheerUpQuotes[random.nextInt(cheerUpQuotes.length)];
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Cheer Up Quote'),
                        content: Text(cheerUpQuote),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.thumb_down, color: Colors.red, size: 30.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
