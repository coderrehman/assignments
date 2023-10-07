import 'dart:io';
import 'dart:math';

class Quesandans {
  var ques1 = {
    '1': 'What does KFC stand for?',
    '2': 'What street does the British prime minister live on?',
    '3': 'Mycology is the study of what?',
    '4': 'In what year did the Berlin Wall fall?',
    '5':
        'Which TV show features Tommy Shelby, Alfie Solomons, and Luca Changretta?',
    '6': 'Who founded Amazon?',
    '7': 'What is Batman’s butler called?',
    '8': 'Jimmy Page formed which rock band?',
    '9': 'On what date is Independence Day in the USA?',
    '10': 'What is a female donkey called?',
    '11': 'In Greek mythology, who was the father of Zeus?',
    '12': 'What is the currency of Denmark?',
    '13': 'Arachnophobia is the fear of what?',
    '14': 'Which volcano destroyed the city of Pompeii?',
    '15': 'Alastair Cook plays which sport?',
    '16': 'Who wrote ‘The Hunger Games’?',
    '17': 'Which car manufacturer’s badge features a cross and a snake?',
    '18':
        'An optometrist specializes in treating which part of the human body?',
    '19': 'What is the tallest building in the world?',
    '20': 'Who is Liverpool Airport named after?',
    '21': 'Hund is the German word for which animal?',
    '22': 'In the TV show ‘Friends’, what doesn’t Joey share?',
    '23': 'How many consonants are there in the English alphabet?',
    '24': 'Tom Cruise is a follower of which religion?',
    '25': 'What kind of word reads the same backwards and forwards?',
    '26': '‘The Girl with the Dragon Tattoo’ is a novel by which author?',
    '27': 'The Great Red Spot is a storm on which planet?',
    '28': 'Which football club plays its home games at Craven Cottage?',
    '29': 'How many lines are there in a sonnet?',
    '30':
        'Which band had a UK number one hit in 1979 with ‘Message in a Bottle’?',
    '31': 'Fe is the chemical symbol for which element?',
    '32': 'In what year did the French Revolution begin?',
    '33': 'What is the holy book of Judaism?',
    '34':
        'Desdemona, Iago, and Cassio are all characters in which Shakespeare play?',
    '35': 'What does USB stand for?',
    '36': 'Who was the Chancellor of Germany from 2005 to 2021?',
    '37':
        'Osteoporosis is a condition that weakens which parts of the human body?',
    '38': 'According to Beyonce, what did Becky have?',
    '39': 'Which major river runs through the English city of Nottingham?',
    '40': 'What is the tiger called in Yann Martel’s ‘Life of Pi’?',
    '41': 'Whose assassination led to the beginning of World War One?',
    '42': 'What animal features in the logo for the World Wildlife Fund?',
    '43': 'In what year was The Gunpowder Plot?',
    '44': 'Which sea borders the north of Turkey?',
    '45': 'Who voices Bowser in ‘The Super Mario Bros. Movie’?',
    '46': 'Digbeth and Edgbaston are suburbs of which British city?',
    '47': 'How many chambers does the human heart have?',
    '48': 'In which sport is the Stanley Cup contested?',
    '49': 'Which US agency has the motto “Fidelity, Bravery, Integrity”?',
    '50': 'Apache, Chinook, and Black Hawk are types of what military vehicle?'
  };
  var ans1 = {
    '1': 'Kentucky Fried Chicken',
    '2': 'Downing Street',
    '3': 'Fungi',
    '4': '1989',
    '5': 'Peaky Blinders',
    '6': 'Jeff Bezos',
    '7': 'Alfred',
    '8': 'Led Zeppelin',
    '9': 'July 4th',
    '10': 'A jenny',
    '11': 'Kronos',
    '12': 'Danish Krone',
    '13': 'Spiders',
    '14': 'Mount Vesuvius',
    '15': 'Cricket',
    '16': 'Suzanne Collins',
    '17': 'Alfa Romeo',
    '18': 'Eyes',
    '19': 'Burj Khalifa',
    '20': 'John Lennon',
    '21': 'Dog',
    '22': 'Food',
    '23': '21',
    '24': 'Scientology',
    '25': 'Palindrome',
    '26': 'Stieg Larsson',
    '27': 'Jupiter',
    '28': 'Fulham F.C.',
    '29': '14',
    '30': 'The Police',
    '31': 'Iron',
    '32': '1789',
    '33': 'Torah',
    '34': 'Othello',
    '35': 'Universal serial bus',
    '36': 'Angela Merkel',
    '37': 'Bones',
    '38': 'Good hair',
    '39': 'River Trent',
    '40': 'Richard Parker',
    '41': 'Franz Ferdinand',
    '42': 'Panda',
    '43': '1605',
    '44': 'Black Sea',
    '45': 'Jack Black',
    '46': 'Birmingham',
    '47': '4',
    '48': 'Ice hockey',
    '49': 'FBI',
    '50': 'Helicopter'
  };
}

int randomno() {
  int max = 50;
  int randomNumber = Random().nextInt(max) + 1;
  String qsno1 = randomNumber.toString();
  var randqs = Quesandans();
  var qsasked = randqs.ques1[qsno1];
  print("YOUR QUESTION IS | $qsasked |");
  return randomNumber;
}

answer(String? userAnswer, String randomQuestionNumber) {
  Quesandans answer = Quesandans();
  var correctAnswer = answer.ans1[randomQuestionNumber];

  if (userAnswer == correctAnswer) {
    print("Correct!");
    return true;
  } else {
    print("Incorrect. The correct answer is: $correctAnswer");
    return false;
  }
}

void starttask1() {
  int score = 0;
  int totalQuestions = 20;
  for (int i = 0; i < totalQuestions; i++) {
    print("START GAME");
    print("type yes or no");
    var des1 = stdin.readLineSync();

    bool con1 = des1 == "yes";
    bool con2 = des1 == "no";
    if (con1) {
      int randomNumber = randomno();
      print("Enter your answer:");
      String? anss1 = stdin.readLineSync();
      if (answer(anss1, randomNumber.toString())) {
        score++;
      }
    }
  }

  double percentage = (score / totalQuestions) * 100;

  print("Total correct answers: $score out of $totalQuestions");
  print("Percentage: $percentage%");
  if (percentage > 50) {
    print("buyaaahhhhh");
  }

  print("Do you want to play again? (yes/no)");
  var playAgain = stdin.readLineSync();
  if (playAgain == "yes") {
    starttask1();
  } else {
    print("getlost");
  }
}

void main() {
  starttask1();
}
