# Java Minta ZH (2007. 11. 20) megoldás - Prog 3 / WebProg - Óbudai Egyetem

https://www.youtube.com/watch?v=zjEF_fb6yoI

## Benne maradt egy kis hiba :(

A feltétválasztó a pizza méretét illetőleg még mindig null-t jelez.
Ez azért van, mert elfelejtettem a Pizza-t tartalmazó attribútumból kikérni ezt az értéket, és egy nemlétezőt írtam ki helyette.

A javítandó sor:
https://github.com/kuklinistvan/zh_megoldas_prog3_java_minta/blob/b9175ba7469777bfd7399a2a20e03d2138245f70/pizzazh/web/feltet_customization.jsp#L57
