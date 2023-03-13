# Копирайте <РЕПО>/exercises/data/emp.data във вашата home директория.
# Посредством awk, използвайки копирания файл за входнни данни, изведете:

# - общия брой редове
awk 'END{print NR}' data/emp.data

# - третия ред
awk 'NR==3 {print}' data/emp.data

# - последното поле от всеки ред
awk '{print $NF}' data/emp.data

# - последното поле на последния ред
awk 'END{print $NF}' data/emp.data

# - всеки ред, който има повече от 4 полета
awk 'NF > 4 {print}' data/emp.data

# - всеки ред, чието последно поле е по-голямо от 4
awk '$NF > 4 {print}' data/emp.data

# - общия брой полета във всички редове
awk '{print NF}' data/emp.data

# - броя редове, в които се среща низът Beth
awk '/Beth/ {print}' data/emp.data | awk 'END{print NR}'

# - най-голямото трето поле и редът, който го съдържа
# - всеки ред, който има поне едно поле
# - всеки ред, който има повече от 17 знака
# - броя на полетата във всеки ред и самият ред
# - първите две полета от всеки ред, с разменени места
# - всеки ред така, че първите две полета да са с разменени места
# - всеки ред така, че на мястото на първото поле да има номер на реда
# - всеки ред без второто поле
# - за всеки ред, сумата от второ и трето поле
# - сумата на второ и трето поле от всеки ред
