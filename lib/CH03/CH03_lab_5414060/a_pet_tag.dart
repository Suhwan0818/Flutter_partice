import 'dart:io';

void main(List<String> args) {
  String pet;
  String spayed;

  stdout.write("Enter the pet type (cat or dog): ");
  pet = stdin.readLineSync()!;
  stdout.write("Has the pet been spayed or neutered (y/n)? ");
  spayed = stdin.readLineSync()!;
}
