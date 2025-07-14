#!/bin/sh

fontforge  -lang=ff -c 'Open($1); Generate($2)' scriven.sfd Scriven.otf
fontforge  -lang=ff -c 'Open($1); Generate($2)' scriven.sfd Scriven.woff2
cp Scriven.otf ~/.local/share/fonts/
cp Scriven.woff2 ../smithkm.github.io/runes/
#fc-cache -f -v
fontimage \
    -o docs/scriven.png \
    --pixelsize 128 \
    --text "Scriven᛫ᛋᚳᚱᛁᚢ︆ᛖᚾ" \
    --pixelsize 32 \
    --text "0123456789!?(){}[]& ◇‍[ ]‍◇ ¶" \
    --text "ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz" \
    --text "ᚠᚡᚢᚣᚤᚥᚦᚧᚨᚩᚪᚫᚬᚭᚮᚯᚰᚱᚲᚳᚴᚵᚶᚷᚸᚹᚺᚻᚼᚽᚾᚿᛀᛁᛂᛃᛄᛅᛆᛇᛈᛉᛊᛋᛌᛍᛎᛏᛐᛑᛒᛓᛔᛕᛖᛗᛘᛙᛚᛛᛜᛝᛞᛟᛠᛡᛢᛣᛤᛥᛦᛧᛨᛩᛪᛱᛲᛳᚢ︆ ᛫︆᛬᛭" \
    --text "  " \
    --text "∴" \
    --text "Sphinx of black quartz, heedst thou my pleading and judgest my vow." \
    --text "◇‍[ᛋᛕᚹᛁᚾᛣ᛫ᚩᚠ᛫ᛒ︀ᛚᚫᚳᛱ᛫ᚴᚢᚫᚱ︀ᛏᛉ᛫ᚹᛝᛞᛥ᛫ᚦᚩᚢ᛫ᛗᚣ᛫ᛕᛚᛠᛞᛁᛟ᛫ᚫᚾᛞ᛫ᛄᚢᛞᚷᛖᛥ᛫ᛗᚣ᛫ᚢ︆ᚩᚻ]‍◇" \
    --text "           " \
    --text "           " \
    --text "󱥂󱤴󱤧󱤑󱦐K󱦒e󱦒w󱦒i󱦒n󱦒󱦑。󱤿󱤆󱤧󱥔󱥩󱤑󱤆。" \
Scriven.otf
zip -r scriven.zip Scriven.otf Scriven.woff2  README.md LICENSE.md docs/
