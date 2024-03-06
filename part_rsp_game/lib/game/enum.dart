const assetPath = 'assets/images';

enum InputType{
  rock,
  scissors,
  paper;

 String get path => '$assetPath/${this.name}.png'; // get 함수를 사용하니 =가 아닌 => 사용
}

enum Result{
  playerWin('Player 승리'),
  draw('무승부'),
  cpuWin('Cpu 승리');

  const Result(this.displayString);

  final String displayString;
}