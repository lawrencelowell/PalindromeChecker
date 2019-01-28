public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(onlyLetters(noCapitals(noSpaces(word))).equals(reverse(onlyLetters(noCapitals(noSpaces(word))))))
  return true;
  return false;
}
public String noCapitals(String sWord){
  return sWord.substring(0).toLowerCase();
}

public String onlyLetters(String sString){
  String beans = "";
  for(int h = 0; h < sString.length(); h++){
  if (Character.isLetter(sString.charAt(h)))
  beans = beans + sString.charAt(h);}
  return beans;
}
public String reverse(String sWord){
  String reverse = "";
  for(int i = sWord.length() - 1; i >= 0; i--) {
reverse = reverse + sWord.charAt(i); }
  return reverse;
}
public String noSpaces(String sWord){
  String reverse = "";
    for(int i = 0; i < sWord.length(); i++) {
      if(sWord.substring(i,i+1).equals(" ") == false)
reverse = reverse + sWord.charAt(i); }
  return reverse;
}


 
