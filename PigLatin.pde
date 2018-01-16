public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)  {
for(int i = 0; i < sWord.length(); i ++) {
  char letter = sWord.charAt(i);
  if (letter == 'a' || letter == 'e' ||letter == 'i' ||letter == 'o' ||letter == 'u' ) {
    return i; 
  }

}

	return -1;
}

public String pigLatin(String sWord){
if (sWord.length() > 0) {
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
  if(findFirstVowel(sWord) == 0) {
    return sWord + "way";
  }
  if(sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u') {
    return sWord.substring(2,sWord.length()) + "quay";
  }
  if(sWord.charAt(0) != 'a' && sWord.charAt(0) != 'o' &&sWord.charAt(0) != 'i' && sWord.charAt(0) != 'e' && sWord.charAt(0) != 'u' &&  findFirstVowel(sWord) != -1) {
    return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
}
	
		return "ERROR!";
	

}