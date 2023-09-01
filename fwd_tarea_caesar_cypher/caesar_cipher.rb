def  cipher(c, base, offset)
    (((c.ord - base) + offset) % 26 + base).chr
  end
  
  def caesar_cipher(s, offset)
    if s.nil? || s.empty?
      return ""    
    end
    s.chars.map do |c|
      case
      when c.match(/[a-z]/)
        cipher(c, 'a'.ord, offset)
      when c.match(/[A-Z]/)
        cipher(c, 'A'.ord, offset)
      else
       c
      end
    end.join('')
  end
  texto ="What a string!"
  cipher_text = caesar_cipher(texto,5)
  p cipher_text       