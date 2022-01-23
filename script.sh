#!/bin/bash
ping -c1 www.google.com > /dev/null
if [ $? -eq 0 ]
  then 
    echo "www.google.com is available!" 
    exit 0
  else
    echo "www.google.com is not available"
fi

