#!/bin/bash

echo "📜 Tempo Node Logs"
echo "1) Live logs"
echo "2) Last 100 lines"
read -p "Choose: " choice

case $choice in
  1) docker logs -f tempo-node ;;
  2) docker logs --tail 100 tempo-node ;;
  *) echo "Invalid option" ;;
esac
