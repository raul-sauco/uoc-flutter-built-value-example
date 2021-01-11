# Flutter Built Value example project.

This project demonstrates the use of [Built Value][1] to deserialize JSON data fetched from the network.

The project was developed as an assignment for the Open University of Catalonia [UOC][2]'s _New Technologies in Mobile Development_ fall 2020/21 semester.

The original assignment reads:

> At this point, you already know how to use third-party libraries. So please have a look at what other Flutter developers have created and published in pub.dev and pick a library with both PUB POINTS >= 100 and POPULARITY >= 80% and use it in a new project (name it pub_dev_library). Add some comments in main.dart explaining what library you have picked, what it is for, why you like it and how you are using it.

> You obviously can't pick provider or http, as you have used provider in previous exercise and will use http in next one.

The project fetches _user_ data from the [JSON placeholder free API][3], serializes it using [built value][1] classes and displays it on screen.

[1]: https://pub.dev/packages/built_value
[2]: https://uoc.edu
[3]: https://jsonplaceholder.typicode.com/
