import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;
  bool _isLoading = true;
  bool _showControls = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    );

    await _controller.initialize();
    setState(() => _isLoading = false);
    _controller.play();
  }

  void _togglePlayPause() {
    setState(() {
      _controller.value.isPlaying ? _controller.pause() : _controller.play();
    });
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
                  else
                    GestureDetector(
                      onTap: () =>
                          setState(() => _showControls = !_showControls),
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),

                  // Play/Pause Controls
                  if (!_isLoading && _showControls)
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

              // Text Content Section
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Video Title',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Published on: October 10, 2023',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Nullam euismod, nisl eget aliquam ultricies, nunc nisl '
                      'aliquet nunc, quis aliquam nisl nunc eu nisl. '
                      'Nullam euismod, nisl eget aliquam ultricies, nunc nisl '
                      'aliquet nunc, quis aliquam nisl nunc eu nisl.',
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
