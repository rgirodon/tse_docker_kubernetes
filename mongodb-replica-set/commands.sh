#!/bin/sh

docker compose up --detach

docker compose down

sudo rm -rf data/mongo1/*
sudo rm -rf data/mongo2/*
sudo rm -rf data/mongo3/*