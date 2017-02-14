program carre_magique;
uses crt;

const	
	tailletab=5;
type 		
		  tableau=array[1..tailletab, 1..tailletab] of integer;

procedure placement_1( var actualI:integer; var actualJ:integer;var tab1:tableau); //placement du 1 
var 
	i,j:integer;
		
begin
	for i:= 1 to tailletab do
	begin
		for j := 1 to tailletab do
		begin
		    tab1[i][j] := 0;
			
		end;
		writeln();
	end;
	actualI := tailletab div 2;   		// actual sont les variables qui définissent le placement des axes XY au moment T
	actualJ := tailletab div 2 + 1;		// div pour prendre la valeur arrondie vers le bas d'un entier
    tab1[actualI][actualJ] := 1;
		
	
	
end;
procedure remplissage1(var actualI:integer; var actualJ:integer; var cpt:integer; var tab1:tableau);		// condition de la procédure,cpt stockage valeur

																						// position des chiffres sur les valeurs 0 
VAR
i,j:integer;
begin
	FOR i:=1 to tailletab do
	begin
		FOR j:=1 to tailletab do
			begin
				tab1[i][j]:=0;
			end;
			writeln();
	end;
	cpt:=1;
		while(cpt<tailletab*tailletab+1) do
			begin
				actualI:=actualI-1;
				actualJ:=actualJ+1;
			IF(actualI < 1) then
				begin
				actualI:=tailletab;
				end;
				IF(actualJ > tailletab) then
					begin
					actualJ := 1;
					end;
			while(tab1[actualI][actualJ] <> 0) do
				begin
				actualI:=actualI-1;
				actualJ:=actualJ-1;
			IF(actualI < 1) then
				begin
				actualI:=tailletab;
				end;
			IF(actualJ > tailletab) then
				begin
				actualJ:= 1;
				end;
			IF(actualJ < 1) then
				begin
				actualJ:=tailletab;
				end;
			end;
			tab1[actualI][actualJ] := cpt;
			cpt:=cpt+1;
		end;
end;
	
	
procedure affichage (tab1:tableau);

var 
	i,j:integer;
begin
	for i:= 1 to tailletab do
	begin
		for j := 1 to tailletab do
		begin
			
		    write(tab1[i][j]);
			write('  ');
		end;
		writeln();
	end;
end;
		
		



var 
	 tab2: array[1..tailletab, 1..tailletab] of integer;
	 i, j, actualI,actualJ,cpt:integer;

begin
  clrscr;
	placement_1(actualI,actualJ,tab2);
	remplissage1(actualI,actualJ,cpt,tab2);	//appel de la procedure
	affichage(tab2);
	writeln;
    readln;
end.

	
									
	
	{ precision algo tiré de thibaud sans modification car manque de temps 
//ALGO: Carremagique
//BUT: Fabriquer un carre magique
//ENTREE: matrice de 5sur5
//SORTIE: Carremagique fonctionnel
CONST
TAILLE :ENTIER <-5
Type
Matrice= tableau[1..TAILLE,1..TAILLE] de ENTIER
//BUT: Créer le tableau, le remplir de 0 et placer le 1
//ENTREE:Matrice de 5sur5
//SORTIE: Matrice remplis de 0 avec le 1 placé au bon endroit
PROCEDURE Initialisation(VAR TMagique:Matrice;VAR placeI:ENTIER;VAR placeJ:ENTIER)
    VAR
        i:ENTIER
        j:ENTIER
DEBUT
POUR i DE 1 A TAILLE FAIRE
DEBUT
POUR j DE 1 A TAILLE FAIRE
DEBUT
   TMagique[i][j]<-0
FIN
ECRIRE
FIN
placeI <- TAILLE DIV 2
placeJ <- TAILLE DIV 2 + 1
    TMagique[placeI][placeJ]<-1
FIN


//BUT: Positionner les chiffres de façon à creer un carré magique
//ENTREE: Matrice remplis de 0 avec le 1 place au bon endroit
//SORTIE: Carremagique fonctionnel mais non affiché
PROCEDURE Pos_chiffres(VAR placeJ:ENTIER;VAR placeI:ENTIER;VAR compteur:ENTIER;VAR TMagique:Matrice)
VAR
i,j:ENTIER
DEBUT
POUR i DE 1 A TAILLE FAIRE
DEBUT
POUR j DE 1 A TAILLE FAIRE
DEBUT
TMagique[i][j]<-0
FIN
ECRIRE
FIN
compteur<-1
TANT QUE(compteur<TAILLE*TAILLE+1) FAIRE
DEBUT
placeI<-placeI-1
placeJ<-placeJ+1
ALORS(placeI < 1) ALORS
DEBUT
placeI<-TAILLE
FIN
ALORS(placeJ > TAILLE) ALORS
DEBUT
placeJ <- 1
FIN
TANT QUE(Tmagique[placeI][placeJ] <> 0) FAIRE
DEBUT
placeI<-placeI-1
placeJ<-placeJ-1
ALORS(placeI < 1) ALORS
DEBUT
placeI<-TAILLE
FIN
ALORS(placeJ > TAILLE) ALORS
DEBUT
placeJ<- 1
FIN
ALORS(placeJ < 1) ALORS
DEBUT
placeJ<-TAILLE
FIN
FIN
Tmagique[placeI][placeJ] <- compteur
compteur<-compteur+1
FIN
FIN

//BUT: Afficher le carremagique fonctionnel
//ENTREE: Carremagique fonctionnel mais non affiché
//SORTIE: Carremagique fonctionnel et affiche a l'ecran
PROCEDURE AffichTabFinis(TMagique:Matrice)
VAR
i,j:ENTIER
DEBUT
POUR i DE 1 A TAILLE FAIRE
DEBUT
POUR j DE 1 A TAILLE FAIRE
DEBUT
ECRIRE(Tmagique[i][j])
ECRIRE('  ')
FIN
ECRIRE
FIN
FIN

VAR
tab: tableau[1..TAILLE, 1..TAILLE] de ENTIER
i,j,placeI,placeJ,compteur:ENTIER
DEBUT
    Initialisation(tab,PlaceI,placeJ)
Pos_Chiffres(PlaceI,PlaceJ,compteur,tab)
AffichTabFinis(tab)
FIN.

}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
