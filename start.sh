if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Asifasif6625/mission-.git /mission-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mission-
fi
cd /mission-
pip3 install -U -r requirements.txt
echo "Starting Autofilter-bot...."
python3 bot.py
