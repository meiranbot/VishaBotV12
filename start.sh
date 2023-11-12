if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/meiranbot/VishaBotV12.git /VishaBotV12
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VishaBotV12
fi
cd /VishaBotV12
pip3 install -U -r requirements.txt
echo "Starting VishaBotV12...."
python3 bot.py
