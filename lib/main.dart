import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QCM Test de Vérification Logiciel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test de Vérification Logiciel'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bienvenue dans le QCM",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Auteur: Rihani Omar",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizPage()),
                  );
                },
                child: Text("Commencer le QCM"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  bool _showAnswer = false;
  List<Question> _questions = [
    // Section 1: Qu'est-ce que le génie logiciel ?
    Question(
      "Qu'est-ce que le génie logiciel ?",
      [
        "Une science exacte",
        "Une branche de l'informatique",
        "Un domaine des sciences de l'ingénieur",
      ],
      2,
    ),
    Question(
      "Pourquoi le génie logiciel est-il important ?",
      [
        "Pour assurer la qualité des logiciels",
        "Pour développer des logiciels plus rapidement",
        "Pour réduire les coûts uniquement",
      ],
      0,
    ),
    Question(
      "Lequel de ces éléments est un aspect clé du génie logiciel ?",
      [
        "La programmation orientée objet",
        "La gestion de projet",
        "Les tests unitaires",
      ],
      1,
    ),
    Question(
      "Qu'est-ce que l'intégration continue ?",
      [
        "Une méthode de codage",
        "Une pratique de développement logiciel",
        "Un outil de gestion de projet",
      ],
      1,
    ),
    Question(
      "Qu'est-ce qu'un bug logiciel ?",
      [
        "Une erreur dans le code",
        "Une fonctionnalité non documentée",
        "Une mise à jour du logiciel",
      ],
      0,
    ),
    Question(
      "Quelle est la principale raison de faire des tests logiciels ?",
      [
        "Pour trouver des bugs",
        "Pour améliorer la documentation",
        "Pour coder plus rapidement",
      ],
      0,
    ),
    Question(
      "Lequel de ces outils est utilisé pour les tests automatisés ?",
      [
        "Jenkins",
        "JUnit",
        "Docker",
      ],
      1,
    ),
    Question(
      "Quelle est la différence entre un test unitaire et un test d'intégration ?",
      [
        "Le test unitaire teste un module spécifique, le test d'intégration teste l'ensemble du système",
        "Le test unitaire teste l'intégration des composants, le test d'intégration teste les erreurs",
        "Il n'y a pas de différence",
      ],
      0,
    ),
    Question(
      "Qu'est-ce que la gestion de configuration ?",
      [
        "La gestion des versions du code",
        "La gestion de la performance du logiciel",
        "La gestion de la base de données",
      ],
      0,
    ),
    Question(
      "Qu'est-ce que l'architecture logicielle ?",
      [
        "La façon dont le code est structuré et organisé",
        "La gestion des erreurs dans le logiciel",
        "Le processus de développement agile",
      ],
      0,
    ),
    Question(
      "Quel est le but de la revue de code ?",
      [
        "Améliorer la qualité du code en le vérifiant",
        "Ajouter des commentaires dans le code",
        "Optimiser le code pour plus de rapidité",
      ],
      0,
    ),
    Question(
      "Lequel de ces éléments est une méthode agile ?",
      [
        "Waterfall",
        "Scrum",
        "V-Model",
      ],
      1,
    ),
    Question(
      "Qu'est-ce que le refactoring ?",
      [
        "Le processus de réécriture du code sans changer son comportement",
        "Le processus d'ajout de nouvelles fonctionnalités",
        "Le processus de test du logiciel",
      ],
      0,
    ),
    Question(
      "Quel est l'objectif principal des tests d'acceptation ?",
      [
        "Vérifier si le logiciel répond aux besoins des utilisateurs",
        "Vérifier la performance du logiciel",
        "Vérifier la sécurité du logiciel",
      ],
      0,
    ),
    Question(
      "Qu'est-ce que le cycle de vie du logiciel ?",
      [
        "Les étapes de développement d'un logiciel, du début à la fin",
        "Les phases de test d'un logiciel",
        "Les étapes de déploiement d'un logiciel",
      ],
      0,
    ),
    Question(
      "Qu'est-ce que le prototypage dans le développement logiciel ?",
      [
        "Créer un modèle fonctionnel du logiciel avant de le développer",
        "Développer directement le produit final",
        "Utiliser des outils de conception pour créer des prototypes graphiques",
      ],
      0,
    ),
    Question(
      "Qu'est-ce que l'UX design ?",
      [
        "La conception de l'interface utilisateur",
        "La gestion de la base de données",
        "La gestion de la performance du logiciel",
      ],
      0,
    ),
    Question(
      "Que signifie l'acronyme CI dans le développement logiciel ?",
      [
        "Continuous Integration (Intégration Continue)",
        "Customer Interaction (Interaction Client)",
        "Code Integration (Intégration du Code)",
      ],
      0,
    ),
    Question(
      "Qu'est-ce que la gestion de projet agile ?",
      [
        "Une méthode de gestion de projet flexible et itérative",
        "Une méthode de gestion stricte de projet",
        "Un logiciel de gestion de projet",
      ],
      0,
    ),
    Question(
      "Qu'est-ce que le test de charge ?",
      [
        "Tester la capacité d'un logiciel à supporter une charge élevée",
        "Tester la sécurité du logiciel",
        "Tester la compatibilité avec différents systèmes d'exploitation",
      ],
      0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QCM - Test de Vérification Logiciel'),
        centerTitle: true,
      ),
      body: _buildQuiz(),
    );
  }

  Widget _buildQuiz() {
    if (_currentQuestionIndex < _questions.length) {
      return _buildQuestion(_questions[_currentQuestionIndex]);
    } else {
      return _buildResult();
    }
  }

  Widget _buildQuestion(Question question) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Question ${_currentQuestionIndex + 1}: ${question.text}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ...List.generate(
            question.options.length,
            (index) => Card(
              elevation: 3,
              child: RadioListTile<int>(
                title: Text(
                  question.options[index],
                  style: TextStyle(fontSize: 16),
                ),
                value: index,
                groupValue: question.selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    question.selectedAnswer = value;
                    _showAnswer = true; // Affiche la réponse dès la sélection
                  });
                  _showFeedback(question, value!);
                },
              ),
            ),
          ),
          if (_showAnswer)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                question.selectedAnswer == question.correctAnswer
                    ? "Bonne réponse ! 🎉"
                    : "Mauvaise réponse. La bonne réponse est : ${question.options[question.correctAnswer]}",
                style: TextStyle(
                  fontSize: 16,
                  color: question.selectedAnswer == question.correctAnswer
                      ? Colors.green
                      : Colors.red,
                ),
              ),
            ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _showAnswer = false;
                _currentQuestionIndex++;
              });
            },
            child: Text('Suivant'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              textStyle: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  void _showFeedback(Question question, int selectedValue) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          selectedValue == question.correctAnswer
              ? "Bonne réponse !"
              : "Mauvaise réponse. La bonne réponse est : ${question.options[question.correctAnswer]}",
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Widget _buildResult() {
    int correctAnswers = 0;

    for (var question in _questions) {
      if (question.selectedAnswer == question.correctAnswer) {
        correctAnswers++;
      }
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Résultat Final',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Vous avez répondu correctement à $correctAnswers questions sur ${_questions.length}.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _currentQuestionIndex = 0;
                  for (var question in _questions) {
                    question.selectedAnswer = null;
                  }
                });
              },
              child: Text('Recommencer'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  String text;
  List<String> options;
  int correctAnswer;
  int? selectedAnswer;

  Question(this.text, this.options, this.correctAnswer);
}
