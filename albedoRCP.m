a=serial('COM13')
clear a
if ~isempty(instrfind)
    fclose(instrfind);
    delete(instrfind);
end
a=serial('COM13')
fopen(a);
fgets(a)


