base=lcorbel-report

default:
	pdflatex '\nonstopmode \input $(base)'
clean:
	rm -f *.aux *.dvi *.log *~ *.ps *.o *~ core *.nav *.out *.snm *.toc

# Type du compilateur
CC = gcc

# Options du compilateur (2e ligne = avec débogage)
CFLAG = -O -c -Wall -I.
#CFLAG = -g -c -Wall -I.

# Options pour l'édition des liens (2e ligne = avec débogage)
OFLAG = -O -o
#OFLAG = -g -o

# Nom du fichier exécutable destinataire
EXEC = carre

# Nom des fichiers sources
SRC = carre.c

# Nom des bibliothèques a utiliser
LIB = -lm

# Nom des fichiers objets
OBJ = $(SRC:c=o)

# Action du MakeFile (make <nom exécutable>)
$(EXEC) : $(OBJ)
	$(CC) $(OFLAG) $(EXEC) $(OBJ) $(LIB)

# Action de conversion des fichiers .c et des fichiers .o
.c.o :
	$(CC) $(CFLAG) $<
