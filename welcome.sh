 #!/bin/sh
    # dynamische MOTD
    # Aufruf in /etc/profile (letzte Zeile)
    
    
#   sudo nano /etc/profile am ende hinzufügen mit sh /yourpath/datei.SH
#
    #Terminal clean
        clear
    # Datum & Uhrzeit
    DATUM=`date +"%A, %e %B %Y"`
    # Hostname
    HOSTNAME=`hostname -f`
    # letzter Login
    LAST1=`last -2 -a | awk 'NR==2{print $3}'`    # Wochentag
    LAST2=`last -2 -a | awk 'NR==2{print $5}'`    # Tag
    LAST3=`last -2 -a | awk 'NR==2{print $4}'`    # Monat
    LAST4=`last -2 -a | awk 'NR==2{print $6}'`    # Uhrzeit
    LAST5=`last -2 -a | awk 'NR==2{print $10}'`    # Remote-Computer
    # Uptime
    UP0=`cut -d. -f1 /proc/uptime`
    UP1=$(($UP0/86400))        # Tage
    UP2=$(($UP0/3600%24))        # Stunden
    UP3=$(($UP0/60%60))        # Minuten
    UP4=$(($UP0%60))        # Sekunden
    # Durchschnittliche Auslasung
    LOAD1=`cat /proc/loadavg | awk '{print $1}'`    # Letzte Minute
    LOAD2=`cat /proc/loadavg | awk '{print $2}'`    # Letzte 5 Minuten
    LOAD3=`cat /proc/loadavg | awk '{print $3}'`    # Letzte 15 Minuten
    # Temperatur
    TEMP=`vcgencmd measure_temp | cut -c "6-9"`
 LAST3=`last -2 -a | awk 'NR==2{print $4}'`    # Monat
    LAST4=`last -2 -a | awk 'NR==2{print $6}'`    # Uhrzeit
    LAST5=`last -2 -a | awk 'NR==2{print $10}'`    # Remote-Computer
    # Uptime
    UP0=`cut -d. -f1 /proc/uptime`
    UP1=$(($UP0/86400))        # Tage
    UP2=$(($UP0/3600%24))        # Stunden
    UP3=$(($UP0/60%60))        # Minuten
    UP4=$(($UP0%60))        # Sekunden
    # Durchschnittliche Auslasung
    LOAD1=`cat /proc/loadavg | awk '{print $1}'`    # Letzte Minute
    LOAD2=`cat /proc/loadavg | awk '{print $2}'`    # Letzte 5 Minuten
    LOAD3=`cat /proc/loadavg | awk '{print $3}'`    # Letzte 15 Minuten
    # Temperatur
    TEMP=`vcgencmd measure_temp | cut -c "6-9"`
    # Speicherbelegung
    DISK1=`df -h | grep 'dev/root' | awk '{print $2}'`    # Gesamtspeicher
    DISK2=`df -h | grep 'dev/root' | awk '{print $3}'`    # Belegt
    DISK3=`df -h | grep 'dev/root' | awk '{print $4}'`    # Frei
    # Arbeitsspeicher
    RAM1=`free -h -g | grep 'Mem' | awk '{print $2}'`    # Total
    RAM2=`free -h -g | grep 'Mem' | awk '{print $3}'`    # Used
    RAM3=`free -h -g | grep 'Mem' | awk '{print $4}'`    # Free
    RAM4=`free -h -g | grep 'Swap' | awk '{print $3}'`    # Swap used
    # IP-Adressen ermitteln
    if ( ifconfig | grep -q "eth0" ) ; then IP_LAN=`ip address show dev eth0 scope global | awk '/inet / {split($2,var,"/"); print var$ ; else IP_LAN="---" ; fi ;
    if ( ifconfig | grep -q "wlan0" ) ; then IP_WLAN=`ifconfig wlan0 | grep "inet Adresse" | cut -d ":" -f 2 | cut -d " " -f 1` ; else$
     echo ""
     echo ""
    LAST3=`last -2 -a | awk 'NR==2{print $4}'`    # Monat
    LAST4=`last -2 -a | awk 'NR==2{print $6}'`    # Uhrzeit
    LAST5=`last -2 -a | awk 'NR==2{print $10}'`    # Remote-Computer
    # Uptime
    UP0=`cut -d. -f1 /proc/uptime`
    UP1=$(($UP0/86400))        # Tage
    UP2=$(($UP0/3600%24))        # Stunden
    UP3=$(($UP0/60%60))        # Minuten
    UP4=$(($UP0%60))        # Sekunden
    # Durchschnittliche Auslasung
    LOAD1=`cat /proc/loadavg | awk '{print $1}'`    # Letzte Minute
    LOAD2=`cat /proc/loadavg | awk '{print $2}'`    # Letzte 5 Minuten
    LOAD3=`cat /proc/loadavg | awk '{print $3}'`    # Letzte 15 Minuten
    # Temperatur
    TEMP=`vcgencmd measure_temp | cut -c "6-9"`
    # Speicherbelegung
    DISK1=`df -h | grep 'dev/root' | awk '{print $2}'`    # Gesamtspeicher
    DISK2=`df -h | grep 'dev/root' | awk '{print $3}'`    # Belegt
    DISK3=`df -h | grep 'dev/root' | awk '{print $4}'`    # Frei
    # Arbeitsspeicher
    RAM1=`free -h -g | grep 'Mem' | awk '{print $2}'`    # Total
    RAM2=`free -h -g | grep 'Mem' | awk '{print $3}'`    # Used
    RAM3=`free -h -g | grep 'Mem' | awk '{print $4}'`    # Free
    RAM4=`free -h -g | grep 'Swap' | awk '{print $3}'`    # Swap used
    # IP-Adressen ermitteln
    if ( ifconfig | grep -q "eth0" ) ; then IP_LAN=`ip address show dev eth0 scope global | awk '/inet / {split($2,var,"/"); print var$
` ; else IP_LAN="---" ; fi ;
    if ( ifconfig | grep -q "wlan0" ) ; then IP_WLAN=`ifconfig wlan0 | grep "inet Adresse" | cut -d ":" -f 2 | cut -d " " -f 1` ; else$
     echo ""
     echo ""
