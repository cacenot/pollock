package br.com.pollock.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author fernando
 */
public class Util {
    public static boolean isValidEmailAddress(String email) {
        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        Pattern p = java.util.regex.Pattern.compile(ePattern);
        Matcher m = p.matcher(email);
        return m.matches();
    }

    public static String hashSenha(String senha) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest algorithm = MessageDigest.getInstance("SHA-256");
        byte messageDigestSenhaAdmin[] = algorithm.digest(senha.getBytes("UTF-8"));

        StringBuilder hexStringSenhaAdmin = new StringBuilder();
        for (byte b : messageDigestSenhaAdmin) {
            hexStringSenhaAdmin.append(String.format("%02X", 0xFF & b));
        }
        senha = hexStringSenhaAdmin.toString();
        return senha;
    }

    public static String maiuscula(String string) {
        String mais = "";
        String tudo = "";
        String maiuscula2 = "";
        String posicao = "" + string.charAt(0);//pega a primeira letra que sera maiuscula
        String pos = posicao.toUpperCase();    //transforma em maiuscula
        int tamanho = string.length();//ve o tamanho da frase
        for (int i = 1; i < string.length(); i++) {  //coloca o for de acordo com o tamanho
            mais = mais + string.charAt(i); //acrescenta as letras
            if (string.charAt(i) == ' ') {  //se houver um espaço a próxima vai ser transformada em maisucula.
                String maiuscula = "" + string.charAt(i + 1);//pega a próxima apos o espaço  
                maiuscula2 = maiuscula.toUpperCase();       //transforma em maiuscula.
                mais = mais + maiuscula2;//acrescenta a maiuscula a palavra completa, que se chama mais
                i = i + 1; //soma um, pois uma letra minuscula foi substituida e ja foi acrescentada                                 
            }
        }
        tudo = pos + mais;
        return tudo;
    }
}
