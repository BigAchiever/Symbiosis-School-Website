import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';
import 'dart:convert';
import 'dart:async';

import 'package:symbiosis_school_jabalpur/pages/home/widgets/social_media_card.dart';

class InstagramPosts extends StatefulWidget {
  const InstagramPosts({super.key});

  @override
  State<InstagramPosts> createState() => _InstagramPostsState();
}

class _InstagramPostsState extends State<InstagramPosts> {
  List<Map<String, dynamic>> posts = [];
  bool isLoading = true;
  final String accessToken = "";
  @override
  void initState() {
    super.initState();
    fetchInstagramPosts();
    Timer.periodic(
        const Duration(minutes: 10), (timer) => fetchInstagramPosts());
  }

  Future<void> fetchInstagramPosts() async {
    try {
      print('Fetching Instagram posts...');
      final response = await http.get(
        Uri.parse(
          'https://graph.instagram.com/me/media?fields=id,media_type,media_url,caption,like_count,comments_count,timestamp,children{media_url,media_type}&access_token=$accessToken',
        ),
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['data'] as List;
        print('Raw data (all posts): $data');
        List<Map<String, dynamic>> imagePosts = [];

        for (var post in data) {
          if (post['media_type'] == 'IMAGE') {
            print('Adding single image post: ${post['id']}');
            imagePosts.add(post);
          } else if (post['media_type'] == 'CAROUSEL_ALBUM' &&
              post['children'] != null) {
            final children = post['children']['data'] as List;
            int addedFromThisCarousel = 0;
            for (var child in children) {
              if (child['media_type'] == 'IMAGE' && addedFromThisCarousel < 6) {
                // Limit to 1 per carousel
                print(
                    'Adding carousel image: ${child['id']} from ${post['id']}');
                imagePosts.add({
                  'id': child['id'],
                  'media_type': 'IMAGE',
                  'media_url': child['media_url'],
                  'caption': post['caption'],
                  'like_count': post['like_count'],
                  'comments_count': post['comments_count'],
                  'timestamp': post['timestamp'],
                });
                addedFromThisCarousel++;
              }
            }
          }
        }

        print('Filtered image posts: $imagePosts');
        setState(() {
          // 6 diverse posts
          posts = imagePosts.take(6).toList();
          print('Posts assigned to state: $posts');
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load posts: ${response.body}');
      }
    } catch (e) {
      setState(() => isLoading = false);
      print('Error fetching posts: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    print(
        'Building InstagramPosts: isLoading=$isLoading, posts.length=${posts.length}');
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : posts.isEmpty
            ? const Center(
                child: Text(
                  'No image posts available. Check your Instagram account or token.',
                  textAlign: TextAlign.center,
                ),
              )
            : Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: posts.map((post) {
                  print('Rendering post: ${post['id']} - ${post['media_url']}');
                  return SizedBox(
                    width: ResponsiveLayout.isMobile(context)
                        ? 300
                        : MediaQuery.of(context).size.width / 5,
                    child: SocialMediaCard(
                      image: post['media_url'],
                      description: post['caption'] ?? 'No description',
                    ),
                  );
                }).toList(),
              );
  }
}
