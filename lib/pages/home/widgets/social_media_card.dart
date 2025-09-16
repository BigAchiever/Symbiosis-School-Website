import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';
import 'package:video_player/video_player.dart';

class SocialMediaCard extends StatefulWidget {
  final String description;
  final String image; // Network URL for both image and video
  final String mediaType; // Added to differentiate between IMAGE and VIDEO

  const SocialMediaCard({
    super.key,
    required this.description,
    required this.image,
    required this.mediaType,
  });

  @override
  _SocialMediaCardState createState() => _SocialMediaCardState();
}

class _SocialMediaCardState extends State<SocialMediaCard> {
  bool isHovered = false;
  VideoPlayerController? _controller;
  bool isPlaying = false;
  bool isMuted = false;

  @override
  void initState() {
    super.initState();
    if (widget.mediaType == 'VIDEO') {
      _controller = VideoPlayerController.network(widget.image)
        ..initialize().then((_) {
          setState(() {});
          _controller?.setLooping(true); // Keep looping enabled
        }).catchError((error) {
          print('Video initialization error: $error');
        });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_controller != null) {
      setState(() {
        isPlaying = !isPlaying;
        if (isPlaying) {
          _controller?.play();
        } else {
          _controller?.pause();
        }
      });
    }
  }

  void _toggleMute() {
    if (_controller != null) {
      setState(() {
        isMuted = !isMuted;
        _controller?.setVolume(isMuted ? 0.0 : 1.0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border(
            bottom: BorderSide(
              color: isHovered ? Colors.black : Colors.grey.withOpacity(0.4),
              width: isHovered ? 4 : 1,
            ),
            left: BorderSide(
              color: isHovered ? Colors.black : Colors.grey.withOpacity(0.4),
              width: isHovered ? 4 : 1,
            ),
            right: BorderSide(
              color: isHovered ? Colors.black : Colors.grey.withOpacity(0.4),
              width: 1,
            ),
            top: BorderSide(
              color: isHovered ? Colors.black : Colors.grey.withOpacity(0.4),
              width: 1,
            ),
          ),
        ),
        width: ResponsiveLayout.isMobile(context) ? 300 : size.width / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12.0, top: 12.0),
                    child: widget.mediaType == 'VIDEO' && _controller != null
                        ? _controller!.value.isInitialized
                            ? AspectRatio(
                                aspectRatio: _controller!.value.aspectRatio,
                                child: VideoPlayer(_controller!),
                              )
                            : const Center(child: CircularProgressIndicator())
                        : CachedNetworkImage(
                            imageUrl: widget.image,
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) {
                              print(
                                  'Image load error for ${widget.image}: $error');
                              return const Icon(Icons.error);
                            },
                          ),
                  ),
                ),
                if (widget.mediaType == 'VIDEO' && _controller != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            size: 40,
                            isPlaying
                                ? Icons.pause_circle_outlined
                                : Icons.play_arrow_outlined,
                            color: Colors.grey,
                          ),
                          onPressed: _togglePlayPause,
                        ),
                        IconButton(
                          icon: Icon(
                            size: 40,
                            isMuted ? Icons.volume_off : Icons.volume_up,
                            color: Colors.grey,
                          ),
                          onPressed: _toggleMute,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.description,
                textAlign: TextAlign.start,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Dan Sirf",
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
