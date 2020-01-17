"$CONFIG/nvim/ascii.vim
echo "This is ASCII program!"
"Digraphs
%s/İ/\\I{}/ge
%s/ı/\\i{}/ge
%s/ȷ/\\j{}/ge
%s/Ł/\\L{}/ge
%s/ł/\\l{}/ge
%s/Ø/\\O{}/ge
%s/ø/\\o{}/ge
%s/Æ/\\AE{}/ge
%s/æ/\\ae{}/ge
%s/Œ/\\OE{}/ge
%s/œ/\\oe{}/ge
%s/ß/\\ss{}/ge
%s/Þ/\\TH{}/ge
%s/þ/\\th{}/ge
%s/Ð/\\DH{}/ge
%s/ð/\\dh{}/ge

%s/Â/\\\^{A}/ge
%s/â/\\\^{a}/ge
%s/Ê/\\\^{E}/ge
%s/ê/\\\^{e}/ge
%s/Î/\\\^{I}/ge
%s/î/\\\^{i}/ge
%s/Ô/\\\^{O}/ge
%s/ô/\\\^{o}/ge
%s/Û/\\\^{U}/ge
%s/û/\\\^{u}/ge

%s/Á/\\'{A}/ge
%s/á/\\'{a}/ge
%s/Ć/\\'{C}/ge
%s/ć/\\'{c}/ge
%s/É/\\'{E}/ge
%s/é/\\'{e}/ge
%s/Í/\\'{I}/ge
%s/í/\\'{i}/ge
%s/Ń/\\'{N}/ge
%s/ń/\\'{n}/ge
%s/Ó/\\'{O}/ge
%s/ó/\\'{o}/ge
%s/Ś/\\'{S}/ge
%s/ś/\\'{s}/ge
%s/Ú/\\'{U}/ge
%s/ú/\\'{u}/ge
%s/Ý/\\'{Y}/ge
%s/ý/\\'{y}/ge
%s/Ź/\\'{Z}/ge
%s/ź/\\'{z}/ge

%s/À/\\`{A}/ge
%s/à/\\`{a}/ge
%s/È/\\`{E}/ge
%s/è/\\`{e}/ge
%s/Ì/\\`{I}/ge
%s/ì/\\`{i}/ge
%s/Ò/\\`{O}/ge
%s/ò/\\`{o}/ge
%s/Ù/\\`{U}/ge
%s/ù/\\`{u}/ge

%s/Č/\\v{C}/ge
%s/č/\\v{c}/ge
%s/Š/\\v{S}/ge
%s/š/\\v{s}/ge
%s/Ž/\\v{Z}/ge
%s/ž/\\v{z}/ge

%s/Ã/\\~{A}/ge
%s/ã/\\~{a}/ge
%s/Ñ/\\~{N}/ge
%s/ñ/\\~{n}/ge
%s/Õ/\\~{O}/ge
%s/õ/\\~{o}/ge

%s/Ĥ/\\d{H}/ge
%s/ĥ/\\d{h}/ge
%s/Ŝ/\\d{S}/ge
%s/ŝ/\\d{s}/ge

%s/Å/\\r{A}/ge
%s/å/\\r{a}/ge
%s/Ů/\\r{U}/ge
%s/ů/\\r{u}/ge

%s/Ő/\\H{O}/ge
%s/ő/\\H{o}/ge
%s/Ű/\\H{U}/ge
%s/ű/\\H{u}/ge

%s/Ą/\\k{A}/ge
%s/ą/\\k{a}/ge
%s/Ę/\\k{E}/ge
%s/ę/\\k{e}/ge

%s/Ċ/\\\.{C}/ge
%s/ċ/\\\.{c}/ge
%s/Ė/\\\.{E}/ge
%s/ė/\\\.{e}/ge
%s/Ġ/\\\.{G}/ge
%s/ġ/\\\.{g}/ge
%s/Ż/\\\.{Z}/ge
%s/ż/\\\.{z}/ge

%s/Ç/\\c{C}/ge
%s/ç/\\c{c}/ge
%s/Ş/\\c{S}/ge
%s/ş/\\c{s}/ge
%s/Ţ/\\c{T}/ge
%s/ţ/\\c{t}/ge

%s/Ä/\\"{A}/ge
%s/ä/\\"{a}/ge
%s/Ë/\\"{E}/ge
%s/ë/\\"{e}/ge
%s/Ï/\\"{I}/ge
%s/ï/\\"{i}/ge
%s/Ö/\\"{O}/ge
%s/ö/\\"{o}/ge
%s/Ü/\\"{U}/ge
%s/ü/\\"{u}/ge

%s/Ā/\\={A}/ge
%s/ā/\\={a}/ge
%s/Ē/\\={E}/ge
%s/ē/\\={e}/ge
%s/Ī/\\={I}/ge
%s/ī/\\={i}/ge
%s/Ō/\\={O}/ge
%s/ō/\\={o}/ge
%s/Ū/\\={U}/ge
%s/ū/\\={u}/ge

%s/Ă/\\u{A}/ge
%s/ă/\\u{a}/ge
%s/Ĕ/\\u{E}/ge
%s/ĕ/\\u{e}/ge
%s/Ğ/\\u{G}/ge
%s/ğ/\\u{g}/ge
%s/Ĭ/\\u{I}/ge
%s/ĭ/\\u{i}/ge
%s/Ŏ/\\u{O}/ge
%s/ŏ/\\u{o}/ge
%s/Ŭ/\\u{U}/ge
%s/ŭ/\\u{u}/ge
echo "Process Finished!"
