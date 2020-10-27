function charnum = char_counter(fname, character)
    fid = fopen(fname, 'rt');
    
    if fid < 0 || ischar(character) == false
        charnum = -1;
        return
    end
    
    line = fgets(fid);
    charnum = sum(character == line);
    while ischar(line) == true
        line = fgets(fid);
        charnum = charnum + sum(character == line);
    end
    
    fclose(fid);
end