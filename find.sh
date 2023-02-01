#!bin/bash/
exec=0
noexec=0
rep=0
for i in `ls`
do
	if [ -d $i ];
	then  let "rep=rep+1"	
	elif [ -x $i ];
	then
	 let "exec=exec+1"; echo "$i">>list_exec.txt
	else
	 let "noexec=noexec+1"; echo "$i">>list_noexec.txt
	fi
done
echo "Vous avez $rep dossier(s)"
echo "Vous avez $exec fichier(s) executables et $noexec fichiers non-executables!" 
echo "la liste des fichiers executables est donc list_exec.txt"

