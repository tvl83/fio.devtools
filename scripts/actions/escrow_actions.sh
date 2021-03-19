#!/usr/bin/env bash

#PW5JYfsuij34Dm9bf1Zw5v6PkVYny7xVcb4tSjCq2WL1MUzgdU3xD

clio wallet unlock -n fio --password PW5JYfsuij34Dm9bf1Zw5v6PkVYny7xVcb4tSjCq2WL1MUzgdU3xD

# Set holder account
#echo 'Setting holder public key to: FIO6WTy7KBarFzVbhmwDuR1BbV33QVpuEZirvfwsHBUZ1b4aGrJNm'
#clio -u http://localhost:8889 push action fio.escrow sethldacct '{"public_key":"FIO6WTy7KBarFzVbhmwDuR1BbV33QVpuEZirvfwsHBUZ1b4aGrJNm"}' -p fio.escrow@active

# set initial marketplace config
#echo 'Creating marketplace called "marketplace" with a commission fee of 15% and a flat 5FIO listing fee'
#clio -u http://localhost:8889 push action fio.escrow setmrkplcfg '{"marketplace":"market",
#"owner":"5ufabtv13hv4",
# "owner_public_key":"FIO77rFFByyLycsrbC5tH1CXqddZdgkDuTYDbCc2BoGp5hdnU59f7",
# "commissionfee":22,
# "listingfee":15,
# "duration": 30,
# "warn_days":2}' -p 5ufabtv13hv4@active

# remove marketplace
#clio -u http://localhost:8889 push action fio.escrow rmmrkplcfg '{"actor":"5ufabtv13hv4", "marketplace":"market"}' -p 5ufabtv13hv4@active

#echo 'change settings'
#clio -u http://localhost:8889 push action fio.escrow setmkpcomfee '{"actor":"5ufabtv13hv4", "marketplace":"market", "fee": "6"}' -p 5ufabtv13hv4@active
#clio -u http://localhost:8889 push action fio.escrow setmkplstfee '{"actor":"5ufabtv13hv4", "marketplace":"market", "fee": "5000000000"}' -p 5ufabtv13hv4@active
#clio -u http://localhost:8889 push action fio.escrow setmkplstdur '{"actor":"5ufabtv13hv4", "marketplace":"market", "listing_dur": "400"}' -p 5ufabtv13hv4@active
#clio -u http://localhost:8889 push action fio.escrow setmkpwrntm  '{"actor":"5ufabtv13hv4", "marketplace":"market", "warn_days": "300"}' -p 5ufabtv13hv4@active

# list domains for sale
echo 'listing domains for sale'
clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"blah", "sale_price":"300000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"anchor", "sale_price":"49000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"blah", "sale_price":"88000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"doctor", "sale_price":"44000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"anchor", "sale_price":"32000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain1", "sale_price":"1000000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain2", "sale_price":"1866000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain3", "sale_price":"2568000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain4", "sale_price":"123000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"google", "sale_price":"3000000000000", "marketplace":"market", "notif_address":""}' -p wjeo4abnk4c2@active

#echo 'removing one listing'
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"anchor"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"awesome"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"thomas"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"blah"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"doctor"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain1"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain2"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain3"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain4"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"google"}' -p wjeo4abnk4c2@active
#echo 'buying domain'
#clio -u http://localhost:8889 push action fio.escrow buydomain '{"buyer":"g4oc1qkysew2", "fio_domain":"anchor", "marketplace":"market"}' -p g4oc1qkysew2@active
#clio -u http://localhost:8889 push action fio.escrow buydomain '{"buyer":"g4oc1qkysew2", "fio_domain":"thomas", "marketplace":"market"}' -p g4oc1qkysew2@active
#
#clio -u http://localhost:8889 push action -j fio.token fio.balance '{"fio_public_key":"FIO8PR2TcJAJ1UASYmkmVa8Fi2J2dNvwLJ4qkeAcE3ebgDbPDMx6F"}' -p g4oc1qkysew2@active
#
#curl -s -XPOST http://fio-devnet.eosblocksmith.io/v1/chain/get_fio_balance -d '{
#  "fio_public_key": "FIO8PR2TcJAJ1UASYmkmVa8Fi2J2dNvwLJ4qkeAcE3ebgDbPDMx6F"
#}'

#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"awesome"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"thomas"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"blah"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"doctor"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"anchor"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain1"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain2"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain3"}' -p wjeo4abnk4c2@active
#clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain4"}' -p wjeo4abnk4c2@active