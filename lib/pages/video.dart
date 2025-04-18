import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;
  bool _isLoading = true;
  bool _showControls = false;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    try {
      _controller = VideoPlayerController.asset('images/GBV.mp4')
        ..addListener(() {
          if (_controller.value.hasError) {
            setState(() {
              _hasError = true;
              _isLoading = false;
            });
          }
        });

      await _controller.initialize();
      setState(() => _isLoading = false);
      _controller.play();
    } catch (e) {
      setState(() {
        _hasError = true;
        _isLoading = false;
      });
      debugPrint('Error initializing video: $e');
    }
  }

  void _togglePlayPause() {
    setState(() {
      _controller.value.isPlaying ? _controller.pause() : _controller.play();
    });
  }

  void _retryLoadingVideo() {
    setState(() {
      _isLoading = true;
      _hasError = false;
    });
    _initializeVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  if (_isLoading)
                    const SizedBox(
                      height: 250,
                      child: Center(child: CircularProgressIndicator()),
                    )
                  else if (_hasError)
                    Container(
                      height: 250,
                      color: Colors.grey[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error_outline,
                              size: 50, color: Colors.red),
                          const SizedBox(height: 16),
                          const Text('Failed to load video'),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: _retryLoadingVideo,
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    )
                  else
                    GestureDetector(
                      onTap: () =>
                          setState(() => _showControls = !_showControls),
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                  if (!_isLoading && !_hasError && _showControls)
                    IconButton(
                      icon: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        size: 50,
                        color: Colors.white,
                      ),
                      onPressed: _togglePlayPause,
                    ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                      child: Text(
                        "Health Relationships",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'Course Overview',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'A healthy relationship is one based on mutual respect, equality, consent, and safety—key factors in preventing GBV. In Malawi, where cultural norms sometimes reinforce gender inequality, promoting healthy relationships is crucial to reducing violence.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
