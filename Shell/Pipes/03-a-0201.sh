#Сортирайте /etc/passwd числово по поле UserID.
#(Открийте разликите с лексикографската сортировка)

cat /etc/passwd | sort -n -k 3 --field-separator ':'
