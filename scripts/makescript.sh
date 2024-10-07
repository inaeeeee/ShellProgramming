#!/bin/bash
# makescript.sh tool.sh
# -> /root/scripts/tools.sh
#   #!/bin/bash
# -> chmode 700 /root/scripts/tools.sh

if [ $# -ne 1 ] ; then
    echo "Usage: $0 <scriptfile>"
    exit 1
fi 
SCRIPTFILE=$1
SCRIPTBASE=/root/shell

cat << EOF >> $SCRIPTFILE
#!/bin/bash


EOF
chmod 700 $SCRIPTFILE
