import 'package:flutter/material.dart';
import 'package:instagram_profile/widgets/highlight.dart';
import 'package:instagram_profile/widgets/info_item.dart';
import 'package:instagram_profile/widgets/profile_picture.dart';
import 'package:instagram_profile/widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Username",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.black),
          ),
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              // Profile
              ProfilePicture(),
              // Info Item
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoItem(
                      title: "Posts",
                      value: "1000",
                    ),
                    InfoItem(
                      title: "Followers",
                      value: "1000",
                    ),
                    InfoItem(
                      title: "Following",
                      value: "1000",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Username",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RichText(
            text: TextSpan(
                text:
                    "Lorem ipsum dolor sit amer, consectetur adipiscing elit, sed do eiusmod tempor incidunt ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "#hastag", style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Link goes here",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  side: BorderSide(color: Colors.grey)),
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
            )),
        SizedBox(
          height: 8,
        ),
        // Highlight
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Highlight(
                    title: "Story 1",
                  ),
                  Highlight(
                    title: "Story 2",
                  ),
                  Highlight(
                    title: "Story 3",
                  ),
                  Highlight(
                    title: "Story 1",
                  ),
                  Highlight(
                    title: "Story 2",
                  ),
                  Highlight(
                    title: "Story 3",
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabItem(
              icon: Icons.grid_on_outlined,
              active: true,
            ),
            TabItem(
              icon: Icons.person_pin_outlined,
              active: false,
            ),
          ],
        ),
        GridView.builder(
          shrinkWrap:
              true, // karena di dalem list view (sama sama bisa discroll),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemBuilder: (context, index) => Image.network(
            "https://picsum.photos/id/${index + 237}/200/300",
            fit: BoxFit.cover,
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
