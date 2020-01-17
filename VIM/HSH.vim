"$CONFIG/nvim/hsh.vim
echo "This is BASH History Cleaner!"
"Main Program
sort u
%s?^\/.*\n??ge
%s/^\..*\n//ge
%s/^cd.*\n//ge
%s/^rm.*\n//ge
%s/^ln.*\n//ge
%s/^cp.*\n//ge
%s/^vi.*\n//ge
%s/^mv.*\n//ge
%s/^tar.*\n//ge
%s/^scp.*\n//ge
%s/^rof.*\n//ge
%s/^gcl.*\n//ge
%s/^w3m.*\n//ge
%s/^man.*\n//ge
%s/^grep.*\n//ge
%s/^make.*\n//ge
%s/^less.*\n//ge
%s/^go get.*\n//ge
%s/^go run.*\n//ge
%s/^go build.*\n//ge
%s/^.*latex.*\n//ge
%s/^ir[rs]si.*\n//ge
%s/^e[cx]i[rt].*\n//ge
%s/^dpkg -[bex].*\n//ge
%s/^ar[ai][ai]2c.*\n//ge
