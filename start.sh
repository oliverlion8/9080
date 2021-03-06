if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/oliverlion8/9080.git /9080
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria
fi
cd /9080
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
