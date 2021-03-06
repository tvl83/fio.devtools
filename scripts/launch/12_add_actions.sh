# this script sets all actions not added in the controller.cpp init_database method.
# we add actions in the controller.cpp that are necessary for the genesis of a test network (all actions used by the bios
# node at genesis (for creation of accounts, setting of contracts, establishment of currency, transfer of currency, producer registration,
# producer voting, and other startup needs are added to the controller .
# and the rest are added here so that we do not have to revision the controller code every time
# we add a new action to fio.

host='localhost:8889'

# we run the first 15 so that we can test after the fork deadline, and prove the new logic is being used
./clio -u http://$host push action eosio addaction '{"action":"approve","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"cancel","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"invalidate","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"exec","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"propose","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"unapprove","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"addaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"remaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"remalladdr","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"renewdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"renewaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"addbundles","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"burnexpired","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"xferdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"xferaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"setfeemult","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"bundlevote","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"setfeevote","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"bytemandfee","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"updatefees","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"mandatoryfee","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"tpidclaim","contract":"fio.treasury","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"bpclaim","contract":"fio.treasury","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"updateclock","contract":"fio.treasury","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"recordobt","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"trnsfiopubad","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"rejectfndreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"cancelfndreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"newfundsreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"updatebounty","contract":"fio.tpid","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"rewardspaid","contract":"fio.tpid","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"updatetpid","contract":"fio.tpid","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"execute","contract":"eosio.wrap","actor":"eosio"}' --permission eosio

# USED FOR TESTING:
./clio -u http://$host push action eosio addaction '{"action":"migrtrx","contract":"fio.reqobt","actor":"eosio"}' --permission eosio

# fio.escrow:
./clio -u http://$host push action eosio addaction '{"action":"hi","contract":"fio.escrow","actor":"eosio"}' --permission eosio
