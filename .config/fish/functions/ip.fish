function ip
  ifconfig | grep "broadcast" | awk '{print $2}'
end
