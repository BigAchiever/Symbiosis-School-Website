import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';
import 'dart:convert';
import 'dart:async';

import 'package:symbiosis_school_jabalpur/pages/home/widgets/social_media_card.dart';

class InstagramPosts extends StatefulWidget {
  final bool showOnlyImages;
  final int limit;
  const InstagramPosts({
    super.key,
    this.showOnlyImages = false,
    this.limit = 3,
  });

  @override
  State<InstagramPosts> createState() => _InstagramPostsState();
}

class _InstagramPostsState extends State<InstagramPosts> {
  List<Map<String, dynamic>> posts = [];
  bool isLoading = true;
  String errorMessage = '';
  final String accessToken =
      "IGAATO53OZAZCN5BZAE5MdV9JOGN3UWEtMjNCcEM1WVpZAMnJ5bmtLY0U0UXRMeGNqTFBXRm1wX0ZAxTDJQa0EtTF9lVGkweWJUdnQwemNZAakVuV2FPblpRamsyb2tqeHZAxQ2tqSVVkOGd5WWJ6ZA2Y3YVFja3JWa1gtcy1aTWlja0NQSQZDZD";

  @override
  void initState() {
    super.initState();
    fetchInstagramPosts();
    Timer.periodic(
        const Duration(minutes: 10), (timer) => fetchInstagramPosts());
  }

  Future<void> fetchInstagramPosts() async {
    try {
      if (kDebugMode) {
        print('Fetching Instagram posts...');
      }
      final response = await http.get(
        Uri.parse(
          'https://graph.instagram.com/me/media?fields=id,media_type,media_url,caption,like_count,comments_count,timestamp,children{media_url,media_type}&access_token=$accessToken',
        ),
      );

      if (kDebugMode) {
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['data'] as List;
        if (kDebugMode) {
          print('Raw data (all posts): $data');
        }

        List<Map<String, dynamic>> imagePosts = [];
        List<Map<String, dynamic>> reelsPosts = [];
        List<Map<String, dynamic>> socialMediaScreen = [];

        for (var post in data) {
          if (post['media_type'] == 'VIDEO') {
            if (kDebugMode) {
              print('Adding Video: ${post['id']}');
            }
            reelsPosts.add(post);
            if (!widget.showOnlyImages) {
              socialMediaScreen.add(post);
            }
          } else if (post['media_type'] == 'IMAGE') {
            if (kDebugMode) {
              print('Adding single image post: ${post['id']}');
            }
            imagePosts.add(post);
            socialMediaScreen.add(post);
          } else if (post['media_type'] == 'CAROUSEL_ALBUM' &&
              post['children'] != null) {
            final children = post['children']['data'] as List;
            int addedFromThisCarousel = 0;
            for (var child in children) {
              if (child['media_type'] == 'IMAGE' && addedFromThisCarousel < 6) {
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
                socialMediaScreen.add({
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

        if (kDebugMode) {
          print('Total image posts: ${imagePosts.length}');
          print('Total reels posts: ${reelsPosts.length}');
        }

        // Apply the limit based on the widget's limit parameter
        final limitedImagePosts = imagePosts.take(widget.limit).toList();
        final limitedReelsPosts = reelsPosts.take(widget.limit).toList();
        socialMediaScreen = widget.showOnlyImages
            ? limitedImagePosts
            : [...limitedImagePosts, ...limitedReelsPosts];

        if (kDebugMode) {
          print('SocialMediaScreen after limiting: $socialMediaScreen');
        }

        setState(() {
          posts = socialMediaScreen;
          isLoading = false;
          errorMessage = ''; // Clear error message on success
        });
      } else {
        setState(() {
          isLoading = false;
          errorMessage =
              'Failed to load posts: ${response.statusCode} - ${response.body}';
        });
        throw Exception('Failed to load posts: ${response.body}');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = 'Error fetching posts: $e';
      });
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
                runAlignment: WrapAlignment.start, // Ensure tight alignment
                alignment: WrapAlignment.center,
                children: posts.map((post) {
                  print('Rendering post: ${post['id']} - ${post['media_url']}');
                  return Padding(
                    padding:
                        const EdgeInsets.all(2.0), // Add small padding to cards
                    child: SizedBox(
                      width: ResponsiveLayout.isMobile(context)
                          ? 300
                          : MediaQuery.of(context).size.width / 5,
                      child: SocialMediaCard(
                        description: post['caption'] ?? 'No description',
                        image: post['media_url'],
                        mediaType: post['media_type'],
                      ),
                    ),
                  );
                }).toList(),
              );
  }
}
