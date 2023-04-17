# Даден е текстовият файл planets.txt, който съдържа информация за гравитационно
# закръглените обекти в дадена слънчева система. На всеки ред има информация за точно един обект
# в следните колони, разделени с ’;’:
# • име на обекта
# • тип на обекта (един знак)
# – Т - земен тип
# – G - газов гигант
# – I - леден гигант
# • средно разстояние на обекта до локалната звезда
# • маса на обекта (относителна величина)
# • обем на обекта (относителна величина)
# • плътност (g/cm3
# )
# • средна орбитална скорост (km/s)
# Първият ред във файла e header, който описва имената на колоните.
# Данните за обектите не са сортирани.
# Намерете и изведете разделени с таб името и масата на обекта, който е едновременно:
# • най-близкият до локалната звезда
# • от същия тип като типа на най-далечният до локалната звезда обект
# Примерен входен файл:
# name;type;distance;mass;volume;density;speed
# earth;T;1.00000011;1;1;5.52;29.7859
# mars;T;1.52366231;0.107;0.151;3.94;24.1309
# saturn;G;9.53707032;95;763.62;0.7;9.6724
# mercury;T;0.38709893;0.055;0.056;5.43;47.8725
# venus;T;0.72333199;0.815;0.857;5.24;35.0214
# jupiter;G;5.20336301;318;1321.3;1.33;13.0697
# neptune;I;30.06896348;17;57.747;1.76;5.4778
# uranus;I;19.19126393;14.5;63.102;1.3;6.8352

cat planets.txt | sort -k3n -t ';' | grep $(sort -k3nr -t ';' planets.txt | head -n 1 | cut -d ';' -f2) | head -n 1 | tr ';' ' ' | awk '{print $1 "\t" $4}'
#or
cat planets.txt | tail -n +2 | sort -k3nr -t ';' | head -n1 | awk -F ';' '{print $2}' | xargs -I{} awk -F ';' '{if ($2=="{}") print $0}' planets.txt | sort -k3n -t ';' | head -n1 | awk -F ';' '{print $1 "\t" $4}'

