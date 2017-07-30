# !/bin/bash
# Code by: //Agent-Smith;
#	   //Agent-2k40;
# DarkBunny
#_______________________________________________


. ./Setup/Log.sh --source-only
. ./Setup/Lhost.sh --source-only
. ./Setup/Lport.sh --source-only
. ./Setup/Folder.sh --source-only
. ./Setup/File_Name.sh --source-only
. ./Setup/Creator.sh --source-only


Expython(){


export -f Log;
export -f Lhost;
export -f Lport;
export -f Folder;
export -f File_Name;
export -f Creator;


gnome-terminal -x bash -c '\
	# Recebe IP
	Lhost;\

	# Recebe Porta
	Lport;\

	# Recebe o caminho do arquivo
	Folder;\

	# Recebe o nome do arquivo
	File_Name;\

	# Inicia criacao do payload
	Creator;\

	exec bash'
}

Expython;
