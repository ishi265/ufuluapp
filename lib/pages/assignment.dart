import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({super.key});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  // Properly structured question map with clear correct answers
  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'Why is it important to observe GBV around your peers?',
      'options': [
        'To identify and support victims',
        'Because it\'s required by law',
        'To gossip about others',
      ],
      'correctIndex': 0, // First option is correct
    },
    {
      'question': 'What is the first step when you suspect GBV?',
      'options': [
        'Report to authorities',
        'Confront the perpetrator',
        'Ignore the situation',
      ],
      'correctIndex': 0, // First option is correct
    },
    {
      'question': 'Which of these is a form of GBV?',
      'options': [
        'Economic abuse',
        'Healthy disagreement',
        'Mutual separation',
      ],
      'correctIndex': 0, // First option is correct
    },
  ];

  int _currentQuestionIndex = 0;
  int? _selectedAnswerIndex;
  List<int?> _userAnswers = [];
  bool _showResults = false;
  int _correctAnswers = 0;

  @override
  void initState() {
    super.initState();
    _userAnswers = List.filled(_questions.length, null);
  }

  String get _currentQuestion => _questions[_currentQuestionIndex]['question'];
  List<String> get _currentOptions =>
      _questions[_currentQuestionIndex]['options'];
  int get _currentCorrectIndex =>
      _questions[_currentQuestionIndex]['correctIndex'];

  void _nextQuestion() {
    _userAnswers[_currentQuestionIndex] = _selectedAnswerIndex;
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _selectedAnswerIndex = _userAnswers[_currentQuestionIndex];
      }
    });
  }

  void _prevQuestion() {
    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
        _selectedAnswerIndex = _userAnswers[_currentQuestionIndex];
      }
    });
  }

  void _submitQuiz() {
    _userAnswers[_currentQuestionIndex] = _selectedAnswerIndex;
    _correctAnswers = 0;

    for (int i = 0; i < _questions.length; i++) {
      if (_userAnswers[i] == _questions[i]['correctIndex']) {
        _correctAnswers++;
      }
    }

    setState(() {
      _showResults = true;
    });
  }

  void _restartQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _selectedAnswerIndex = null;
      _userAnswers = List.filled(_questions.length, null);
      _showResults = false;
      _correctAnswers = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_showResults) {
      return _buildResultsScreen();
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Assignment One'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                value: (_currentQuestionIndex + 1) / _questions.length,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Question ${_currentQuestionIndex + 1}/${_questions.length}',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const Text(
                    '1 Point',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                _currentQuestion,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: ListView.builder(
                  itemCount: _currentOptions.length,
                  itemBuilder: (context, index) {
                    return RadioListTile<int>(
                      title: Text(_currentOptions[index]),
                      value: index,
                      groupValue: _selectedAnswerIndex,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedAnswerIndex = value;
                        });
                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _currentQuestionIndex > 0 ? _prevQuestion : null,
                    child: const Text('Previous'),
                  ),
                  if (_currentQuestionIndex < _questions.length - 1)
                    ElevatedButton(
                      onPressed:
                          _selectedAnswerIndex != null ? _nextQuestion : null,
                      child: const Text('Next'),
                    )
                  else
                    ElevatedButton(
                      onPressed:
                          _selectedAnswerIndex != null ? _submitQuiz : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Submit'),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResultsScreen() {
    double percentage = (_correctAnswers / _questions.length) * 100;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Quiz Results'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Score',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: CircularProgressIndicator(
                      value: percentage / 100,
                      strokeWidth: 10,
                      color: _getScoreColor(percentage),
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                  Text(
                    '${percentage.toStringAsFixed(0)}%',
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                '$_correctAnswers out of ${_questions.length} correct',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _restartQuiz,
                child: const Text('Retake Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getScoreColor(double percentage) {
    if (percentage >= 80) return Colors.green;
    if (percentage >= 50) return Colors.orange;
    return Colors.red;
  }
}
