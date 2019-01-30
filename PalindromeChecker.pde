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

public boolean palindrome(String word){
  word = depunctuate(word);
  if(reverse(word).equals(word)){
    return true;
  } else {
  return false;
  }
}

public String reverse(String str){
    String sNew = new String();
    String element = new String();
    
    for(int i = str.length() - 1; i >= 0; i--){
      element = str.substring(i, i + 1);
      
      if(Character.isLetter(str.charAt(i)) == true){
        sNew += element;
      }
    }
    
    return sNew;
}

public String depunctuate(String str){
  String depunctuated = new String();
  String element = new String();
  
  for(int i = 0; i < str.length(); i++){
      element = str.substring(i, i + 1);
      element = element.toLowerCase();
      
      if(Character.isLetter(str.charAt(i)) == true){
        depunctuated += element;
      }
    }
    
  return depunctuated;
}
