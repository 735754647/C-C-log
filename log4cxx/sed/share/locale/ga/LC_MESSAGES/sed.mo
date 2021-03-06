??    U      ?  q   l      0  ?   1  ,   ,  5   Y  N   ?  7   ?  \   	  _   s	  `   ?	  u   4
  l   ?
  b     V   z  Y   ?  ~   +  ?   ?  %   :     `     w     ?     ?     ?     ?     ?       $   *     O     a     |     ?     ?  #   ?     ?     ?     ?          !     3     E  H   R     ?     ?     ?  !   ?          )  (   >     g     z  #   ?     ?     ?  $   ?          :  #   T  B   x  2   ?     ?           #     A  *   `  *   ?     ?     ?     ?  #   ?  #     &   <     c     r  ,   ?     ?     ?  -   ?          0     ?     N     d     z     ?     ?     ?  ?  ?  ?   ?  7   ?  :   ?  ?   
  A   ?  Z   ?  ?   ,  [   ?  u     ?   ?  \   0  Z   ?  ]   ?  ^   F  ?   ?      :      [     |  #   ?     ?     ?  %   ?  #        4  1   R     ?      ?     ?     ?  '   ?  +        :     W     f     |     ?     ?     ?  H   ?     ?  #          8   ,   Y      ?       ?   6   ?      ?   .   !  0   H!  "   y!  6   ?!  9   ?!  3   "  +   A"  5   m"  ?   ?"  ,   #     ?#  3   ?#  .   ?#  '   *$  +   R$  5   ~$  (   ?$     ?$     ?$  %   %  %   (%  ,   N%     {%  '   ?%  >   ?%     ?%     &  8   %&     ^&     t&     ?&     ?&     ?&     ?&     ?&     ?&     '                .   5   0   6   ,   7         1   2   /   	          D      A       U      4              O               +   '   (   C      T          
       >   =      "   8          E           M   N          *      :   J   R            -   G                        P   K   Q   @           %   3   9   ?          $   I          ;   B   !          L          H           #           &   F      S   <             )          
If no -e, --expression, -f, or --file option is given, then the first
non-option argument is taken as the sed script to interpret.  All
remaining arguments are names of input files; if no input files are
specified, then the standard input is read.

       --help     display this help and exit
       --version  output version information and exit
   --follow-symlinks
                 follow symlinks when processing in place
   --posix
                 disable all GNU extensions.
   -R, --regexp-perl
                 use Perl 5's regular expressions syntax in the script.
   -b, --binary
                 open files in binary mode (CR+LFs are not processed specially)
   -e script, --expression=script
                 add the script to the commands to be executed
   -f script-file, --file=script-file
                 add the contents of script-file to the commands to be executed
   -i[SUFFIX], --in-place[=SUFFIX]
                 edit files in place (makes backup if extension supplied)
   -l N, --line-length=N
                 specify the desired line-wrap length for the `l' command
   -n, --quiet, --silent
                 suppress automatic printing of pattern space
   -r, --regexp-extended
                 use extended regular expressions in the script.
   -s, --separate
                 consider files as separate rather than as a single continuous
                 long stream.
   -u, --unbuffered
                 load minimal amounts of data from the input files and flush
                 the output buffers more often
 %s: -e expression #%lu, char %lu: %s
 %s: can't read %s: %s
 %s: file %s line %lu: %s
 : doesn't want any addresses GNU sed version %s
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Memory exhausted No match No previous regular expression Premature end of regular expression Regular expression too big Success Trailing backslash Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... {script-only-if-no-other-script} [input-file]...

 `e' command not supported `}' doesn't want any addresses based on GNU sed version %s

 can't find label for jump to `%s' cannot remove %s: %s cannot rename %s: %s cannot specify modifiers on empty regexp cannot stat %s: %s command only uses one address comments don't accept any addresses couldn't attach to %s: %s couldn't edit %s: is a terminal couldn't edit %s: not a regular file couldn't follow symlink %s: %s couldn't open file %s: %s couldn't open temporary file %s: %s couldn't write %d item to %s: %s couldn't write %d items to %s: %s delimiter character is not a single-byte character error in subprocess expected \ after `a', `c' or `i' expected newer version of sed extra characters after command invalid reference \%d on `s' command's RHS invalid usage of +N or ~N as first address invalid usage of line address 0 missing command multiple `!'s multiple `g' options to `s' command multiple `p' options to `s' command multiple number options to `s' command no input files no previous regular expression number option to `s' command may not be zero option `e' not supported read error on %s: %s strings for `y' command are different lengths super-sed version %s
 unexpected `,' unexpected `}' unknown command: `%c' unknown option to `s' unmatched `{' unterminated `s' command unterminated `y' command unterminated address regex Project-Id-Version: sed 4.2.0
Report-Msgid-Bugs-To: bug-gnu-utils@gnu.org
POT-Creation-Date: 2009-06-27 15:08+0200
PO-Revision-Date: 2008-01-13 11:04-0500
Last-Translator: Kevin Scannell <kscanne@gmail.com>
Language-Team: Irish <gaeilge-gnulinux@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=5; plural=n==1 ? 0 : n==2 ? 1 : (n>2 && n<7) ? 2 :(n>6 && n<11) ? 3 : 4;
 
Mura bhfuil rogha -e, --expression, -f, nó --file ann, glacfar an chéad
argóint nach raibh ina rogha mar an script `sed' a léirmhíniú.  Tá gach
argóint eile an t-ainm do chomhad ionchuir; mura bhfuil comhad ann
léigh ón ghnáth-ionchur.

       --help     taispeáin an chabhair seo agus scoir
       --version  taispeáin eolas faoin leagan agus scoir
   --follow-symlinks
                 lean naisc shiombalacha má phróiseáiltear an comhad san
                  áit a bhfuil sé
   --posix
                 díchumasaigh gach feabhsúchán GNU.
   -R, --regexp-perl
                 bain úsáid as sloinn ionadaíochta atá ag Perl 5.
   -b, --binary
                 oscail comhaid sa mhód dénártha (ní phróiseáiltear CR+LFanna
                    ar bhealach speisialta)
   -e script, --expression=script
                 cuir an script leis na horduithe le rith
   -f comhad-script, --file=comhad-script
                 cuir na línte i `comhad-script' leis na horduithe le rith
   -i[IARMHÍR], --in-place[=IARMHÍR]
                 cuir eagar ar chomhaid san áit a bhfuil siad (agus déan
                 cúltaca má thugtar IARMHÍR)
   -l N, --line-length=N
                 ceap an fad timfhillte le haghaidh an ordaithe `l'
   -n, --quiet, --silent
                 stop priontáil uathoibríoch den spás patrúin
   -r, --regexp-extended
                 úsáid sloinn ionadaíochta feabhsaithe sa script.
   -s, --separate
                 féach ar chomhaid ina leith seachas mar shruth leanúnach.
   -u, --unbuffered
                 luchtaigh bloic bheaga ó na comhaid ionchuir agus sruthlaigh
                 na maoláin aschuir níos minice
 %s: -e slonn #%lu, char %lu: %s
 %s: ní féidir %s a léamh: %s
 %s: comhad %s líne %lu: %s
 Níl fáilte roimh sheoltaí le `:' GNU sed, leagan %s
 Cúltagairt neamhbhailí Ainm neamhbhailí ar aicme charachtar Carachtar neamhbhailí comhordaithe Ábhar neamhbhailí idir \{\} Is neamhbhailí an slonn ionadaíochta roimhe seo Deireadh raoin neamhbhailí Slonn ionadaíochta neamhbhailí Cuimhne ídithe Níl a leithéid ann Níl aon slonn ionadaíochta roimhe seo Deireadh le slonn ionadaíochta gan choinne Slonn ionadaíochta rómhór D'éirigh leis Cúlslais ag deireadh ( nó \( corr ) nó \) corr [ nó [^ corr \{ corr Úsáid: %s [ROGHA]... {script-mura-bhfuil-script-eile} [inchomhad]...

 níl an t-ordú `e' ar fáil Níl fáilte roimh sheoltaí le `}' bunaithe ar GNU sed, leagan %s

 níl aon fháil ar an lipéad `%s' don léim ní féidir %s a scriosadh: %s ní féidir %s a athainmniú: %s ní féidir mionathraitheoirí a shonrú le slonn bán ní féidir %s a 'stat': %s ní úsáidtear an t-ordú ach seoladh amháin níl fáilte roimh sheoltaí le nótaí tráchta níorbh fhéidir ceangal le %s: %s níorbh fhéidir %s a chur in eagar; is teirminéal é níorbh fhéidir %s a chur in eagar: ní gnáthchomhad é níorbh fhéidir nasc siombalach %s a leanúint: %s níorbh fhéidir an comhad %s a oscailt: %s níorbh fhéidir an comhad sealadach %s a oscailt: %s níorbh fhéidir %d rud a scríobh i %s: %s níorbh fhéidir %d rud a scríobh i %s: %s níorbh fhéidir %d rud a scríobh i %s: %s níorbh fhéidir %d rud a scríobh i %s: %s níorbh fhéidir %d rud a scríobh i %s: %s tá an teormharcóir ina charachtar ilbheart earráid i bhfo-phróiseas bhíothas ag súil le \ i ndiaidh `a', `c', nó `i' bhíothas ag súil le leagan `sed' níos úire carachtair breise i ndiaidh an ordaithe tagairt neamhbhailí \%d ar dheis ordú `s' ní féidir +N nó ~N a úsáid mar an chéad seoladh ní féidir an seoladh líne 0 a úsáid ordú ar iarraidh `!'-anna iomadúla an iomarca roghanna `g' i ndiaidh `s' an iomarca roghanna `p' i ndiaidh `s' an iomarca roghanna uimhriúla i ndiaidh `s' gan inchomhad níl aon slonn ionadaíochta roimhe seo ní cheadaítear nialas mar rogha uimhriúil leis an ordú `s' níl an rogha `e' ar fáil earráid ag léamh %s: %s níl aon fhad amháin ar na teaghráin leis an ordú `y' super-sed, leagan %s
 `,' gan choinne `}' gan choinne ordú anaithnid: `%c' rogha anaithnid i ndiaidh `s' `{' corr ordú `s' gan chríochnú ordú `y' gan chríochnú seoladh regex gan chríochnú 