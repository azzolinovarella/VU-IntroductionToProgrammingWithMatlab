function coded = caesar(str, shift)
    caesar_chars = ' ':'~';
    for c = 1:length(str)
        char_pos = findstr(str(c), caesar_chars);
        while char_pos + shift > 95
            shift = shift - 95;
        end
        while char_pos + shift < 0
            shift = shift + 95;
        end    
        str(c) = caesar_chars(char_pos + shift);
    end             
    coded = str;
end