import 'package:flutter/material.dart';
import '../models/models.dart';

class QuestionScreen extends StatefulWidget {
  final List<Question> questions;
  const QuestionScreen({super.key, required this.questions,});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  int? selectedOptionIndex;
  bool isAnswered = false;

  void _submitAnswer() {
    if (selectedOptionIndex == null) return;

    setState(() {
      isAnswered = true;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        currentIndex++;
        selectedOptionIndex = null;
        isAnswered = false;
      });
    }); 
  }

  //Navigating to next question after a delay
  
  @override
  Widget build(BuildContext context) {
    if (currentIndex >= widget.questions.length) {
      return const Scaffold(
        body: Center(child: Text('Quiz Completed!'),),
      );
    }

    Question currentQuestion = widget.questions[currentIndex];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                      Text(
                        "${currentIndex + 1} of 10",
                        style: const TextStyle(fontSize: 18),
                      ),
                      //const Spacer(),
                      const Text(
                        "01:40",
                        style:  TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: LinearProgressIndicator(
                    value: 0.1,
                    minHeight: 10,
                    backgroundColor: Color(0xFF006399),
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF934171)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: const Color(0xFF006399),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        currentQuestion.question,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      ...List.generate(currentQuestion.choices.length, (index) {
                        return ListTile(
                          title: Text(currentQuestion.choices[index]),
                          leading: Radio<int>(
                            value: index,
                            groupValue: selectedOptionIndex,
                            onChanged: (value) {
                              setState(() {
                                selectedOptionIndex = value;
                              });
                            },
                          ),
                          trailing: isAnswered
                              ? Icon(
                                  index == currentQuestion.correctAnswer
                                      ? Icons.check
                                      : Icons.close,
                                  color: index == currentQuestion.correctAnswer
                                      ? Colors.green
                                      : Colors.red,
                                )
                              : null,
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFF006399),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: _submitAnswer,
                    child: const Text("Submit"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
