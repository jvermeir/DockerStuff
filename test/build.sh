#!/bin/bash

vagrant destroy -f
cat ~/.ssh/known_hosts | sed 's/^192.168.168.169.*//' > ~/.ssh/known_hosts
rm -rf .vagrant
vagrant up

