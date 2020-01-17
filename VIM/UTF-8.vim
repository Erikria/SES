"$CONFIG/nvim/utf-8.vim
echo "This is UTF-8 program!"
"Digraphs
%s/\\I{}/İ/ge
%s/\\i{}/ı/ge
%s/\\j{}/ȷ/ge
%s/\\L{}/Ł/ge
%s/\\l{}/ł/ge
%s/\\O{}/Ø/ge
%s/\\o{}/ø/ge
%s/\\AE{}/Æ/ge
%s/\\ae{}/æ/ge
%s/\\OE{}/Œ/ge
%s/\\oe{}/œ/ge
%s/\\ss{}/ß/ge
%s/\\TH{}/Þ/ge
%s/\\th{}/þ/ge
%s/\\DH{}/Ð/ge
%s/\\dh{}/ð/ge

%s/\\\^{A}/Â/ge
%s/\\\^{a}/â/ge
%s/\\\^{E}/Ê/ge
%s/\\\^{e}/ê/ge
%s/\\\^{I}/Î/ge
%s/\\\^{i}/î/ge
%s/\\\^{O}/Ô/ge
%s/\\\^{o}/ô/ge
%s/\\\^{U}/Û/ge
%s/\\\^{u}/û/ge

%s/\\'{A}/Á/ge
%s/\\'{a}/á/ge
%s/\\'{C}/Ć/ge
%s/\\'{c}/ć/ge
%s/\\'{E}/É/ge
%s/\\'{e}/é/ge
%s/\\'{I}/Í/ge
%s/\\'{i}/í/ge
%s/\\'{N}/Ń/ge
%s/\\'{n}/ń/ge
%s/\\'{O}/Ó/ge
%s/\\'{o}/ó/ge
%s/\\'{S}/Ś/ge
%s/\\'{s}/ś/ge
%s/\\'{U}/Ú/ge
%s/\\'{u}/ú/ge
%s/\\'{Y}/Ý/ge
%s/\\'{y}/ý/ge
%s/\\'{Z}/Ź/ge
%s/\\'{z}/ź/ge

%s/\\`{A}/À/ge
%s/\\`{a}/à/ge
%s/\\`{E}/È/ge
%s/\\`{e}/è/ge
%s/\\`{I}/Ì/ge
%s/\\`{i}/ì/ge
%s/\\`{O}/Ò/ge
%s/\\`{o}/ò/ge
%s/\\`{U}/Ù/ge
%s/\\`{u}/ù/ge

%s/\\v{C}/Č/ge
%s/\\v{c}/č/ge
%s/\\v{S}/Š/ge
%s/\\v{s}/š/ge
%s/\\v{Z}/Ž/ge
%s/\\v{z}/ž/ge

%s/\\~{A}/Ã/ge
%s/\\~{a}/ã/ge
%s/\\~{N}/Ñ/ge
%s/\\~{n}/ñ/ge
%s/\\~{O}/Õ/ge
%s/\\~{o}/õ/ge

%s/\\d{H}/Ĥ/ge
%s/\\d{h}/ĥ/ge
%s/\\d{S}/Ŝ/ge
%s/\\d{s}/ŝ/ge

%s/\\r{A}/Å/ge
%s/\\r{a}/å/ge
%s/\\r{U}/Ů/ge
%s/\\r{u}/ů/ge

%s/\\H{O}/Ő/ge
%s/\\H{o}/ő/ge
%s/\\H{U}/Ű/ge
%s/\\H{u}/ű/ge

%s/\\k{A}/Ą/ge
%s/\\k{a}/ą/ge
%s/\\k{E}/Ę/ge
%s/\\k{e}/ę/ge

%s/\\\.{C}/Ċ/ge
%s/\\\.{c}/ċ/ge
%s/\\\.{E}/Ė/ge
%s/\\\.{e}/ė/ge
%s/\\\.{G}/Ġ/ge
%s/\\\.{g}/ġ/ge
%s/\\\.{Z}/Ż/ge
%s/\\\.{z}/ż/ge

%s/\\c{C}/Ç/ge
%s/\\c{c}/ç/ge
%s/\\c{S}/Ş/ge
%s/\\c{s}/ş/ge
%s/\\c{T}/Ţ/ge
%s/\\c{t}/ţ/ge

%s/\\"{A}/Ä/ge
%s/\\"{a}/ä/ge
%s/\\"{E}/Ë/ge
%s/\\"{e}/ë/ge
%s/\\"{I}/Ï/ge
%s/\\"{i}/ï/ge
%s/\\"{O}/Ö/ge
%s/\\"{o}/ö/ge
%s/\\"{U}/Ü/ge
%s/\\"{u}/ü/ge

%s/\\={A}/Ā/ge
%s/\\={a}/ā/ge
%s/\\={E}/Ē/ge
%s/\\={e}/ē/ge
%s/\\={I}/Ī/ge
%s/\\={i}/ī/ge
%s/\\={O}/Ō/ge
%s/\\={o}/ō/ge
%s/\\={U}/Ū/ge
%s/\\={u}/ū/ge

%s/\\u{A}/Ă/ge
%s/\\u{a}/ă/ge
%s/\\u{E}/Ĕ/ge
%s/\\u{e}/ĕ/ge
%s/\\u{G}/Ğ/ge
%s/\\u{g}/ğ/ge
%s/\\u{I}/Ĭ/ge
%s/\\u{i}/ĭ/ge
%s/\\u{O}/Ŏ/ge
%s/\\u{o}/ŏ/ge
%s/\\u{U}/Ŭ/ge
%s/\\u{u}/ŭ/ge
echo "Process Finished!"
