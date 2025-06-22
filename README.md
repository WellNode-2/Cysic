# Cysic Verifier Monitor

Simple script to run and monitor the verifier process.
If the process stops, the script will automatically restart it and send a Telegram notification.

# Verifier Upgrade
Replace 0x-YourRewardAddressHere with your actual wallet address.
~~~
curl -L https://github.com/cysic-labs/cysic-phase3/releases/download/v1.0.0/setup_linux.sh \
> ~/setup_linux.sh && \
bash ~/setup_linux.sh 0x-YourRewardAddressHere
~~~

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
