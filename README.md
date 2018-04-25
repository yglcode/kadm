kadm: simple kafka admin tool

Official repo is part of https://github.com/travisjeffery/jocko. this is a local repo for quick builds and tests (not involving any broker/server code).

Basic idea is adopting current Go cmdline apps' convention by using Cobra, such as

kadm init -b/--brokers kafak1:9092,kafka2:9092

kadm topic list

kadm topic create -p 10 -r 2 topic1 topic2 topic3

kadm topic delete t1 t2 t3

kadm node ls

kadm node describe kafka1:9092

kadm group list

