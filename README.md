# Cysic Verifier Monitor

Simple script to run and monitor the verifier process.
If the process stops, the script will automatically restart it and send a Telegram notification.

# Edit the script
~~~
TELEGRAM_TOKEN=""
TELEGRAM_ID=""
~~~

# Run the script inside a screen session:
~~~
screen -S cysic
. cysic_monitoring.sh
~~~
