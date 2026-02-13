public class ReverseWords {
    public static void main(String[] args) {
        String str = "Java is very powerful";
        String[] words = str.split(" ");
        String result = "";

        for (int i = words.length - 1; i >= 0; i--) {
            result += words[i] + " ";
        }

        System.out.println(result.trim());
    }
}
