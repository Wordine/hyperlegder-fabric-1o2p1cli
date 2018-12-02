


RUN mkdir -p /var/hyperledger/production $FABRIC_CFG_PATH
COPY payload/orderer /usr/local/bin
ADD payload/sampleconfig.tar.bz2 $FABRIC_CFG_PATH/
EXPOSE 7050#指定7050端口与外界交互

#environment
#设置环境变量FABRIC_CFG_PATH=/etc/hyperledger/fabric
#FABRIC_CFG_PATH是Fabric配置文件存放目录，Fabric启动时，程序默认从FABRIC_CFG_PATH搜索需要的配置文件。
FABRIC_CFG_PATH /etc/hyperledger/fabric
ORDERER_GENERAL_LOGLEVEL=debug
ORDERER_GENERAL_LISTENADDRESS=0.0.0.0
ORDERER_GENERAL_GENESISMETHOD=file

#genesis.block
ORDERER_GENERAL_GENESISFILE=/var/hyperledger/orderer/orderer.genesis.block

#MSP
ORDERER_GENERAL_LOCALMSPID=OrdererMSP
ORDERER_GENERAL_LOCALMSPDIR=/var/hyperledger/orderer/msp

# enabled TLS
ORDERER_GENERAL_TLS_ENABLED=true
ORDERER_GENERAL_TLS_PRIVATEKEY=/var/hyperledger/orderer/tls/server.key
ORDERER_GENERAL_TLS_CERTIFICATE=/var/hyperledger/orderer/tls/server.crt
ORDERER_GENERAL_TLS_ROOTCAS=[/var/hyperledger/orderer/tls/ca.crt]

ORDERER_KAFKA_RETRY_SHORTINTERVAL=1s
ORDERER_KAFKA_RETRY_SHORTTOTAL=30s
ORDERER_KAFKA_VERBOSE=true

    volumes:
    - ../channel-artifacts/genesis.block:/var/hyperledger/orderer/orderer.genesis.block
    - ../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp:/var/hyperledger/orderer/msp
    - ../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/:/var/hyperledger/orderer/tls

