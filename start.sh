if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Infinityworl/alive /alive
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /alive
fi
cd /alive
pip3 install -U -r requirements.txt
echo "Starting aliveBot...."
python3 bot.py
