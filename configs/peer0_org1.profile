export CORE_PEER_ID=peer0.org1.bupttest.com 
export CORE_PEER_ADDRESS=peer0.org1.bupttest.com:7051
export CORE_PEER_CHAINCODEADDRESS=peer0.org1.bupttest.com:7052
export CORE_PEER_CHAINCODELISTENADDRESS=0.0.0.0:7052
export CORE_PEER_GOSSIP_EXTERNALENDPOINT=peer0.org1.bupttest.com:7051
export CORE_PEER_GOSSIP_BOOTSTRAP= peer0.org1.bupttest.com:7051
export CORE_PEER_LOCALMSPID=Org1MSP
export CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
export CORE_VM_DOCKER_HOSTCONFIG_NETWORKMODE=e2e_default
export CORE_LOGGING_LEVEL=DEBUG
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_GOSSIP_USELEADERELECTION=true
export CORE_PEER_GOSSIP_ORGLEADER=false
export CORE_PEER_PROFILE_ENABLED=true
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/peer/crypto-config/peerOrganizations/org1.bupttest.com/users/Admin@org1.bupttest.com/msp
export CORE_PEER_TLS_CERT_FILE=/etc/hyperledger/fabric/peer/crypto-config/peerOrganizations/org1.bupttest.com/peers/peer0.org1.bupttest.com/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/etc/hyperledger/fabric/peer/crypto-config/peerOrganizations/org1.bupttest.com/peers/peer0.org1.bupttest.com/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/peer/crypto-config/peerOrganizations/org1.bupttest.com/peers/peer0.org1.bupttest.com/tls/ca.crt



 volumes:
        - /var/run/:/host/var/run/
        - ../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp:/etc/hyperledger/fabric/msp
        - ../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls:/etc/hyperledger/fabric/tls

