#!/usr/bin/env python
# -*- coding: utf-8 -*-
import happybase as hb
import pyshark as ps
import os,sys
import binascii as bas
import random

def writehbase():   
   #连接hbase数据库
   connection = hb.Connection('bsaMaster')
   connection.open()
   print connection.tables()
   
   #打开数据表
   pktTable = connection.table('packet')
   
   #解析报文，批量处理每个包
   cap = ps.FileCapture("./tcp0315.pcap")
   data = ""
   #TODO:try-except
   for pkt in cap:
       with pktTable.batch() as b:
           #construct key and value
	   print pkt['ip'].src
	   n = len(pkt.layers)
           #write to hbase
           if pkt.highest_layer != 'TCP':
		#遍历tcp报文头上面的所有layer，记录tcp的payload
                for j in range(3,n):
			data = data + str(pkt[j])
		b.put(pkt['ip'].src+str(random.uniform(1,100)),{'info:payload':bas.b2a_hex(data)})
   #关闭连接
   connection.close()

#just for test
def test():
	cap = ps.FileCapture("./tcp.pcap")
	data=""
	for pkt in cap:
		#print pkt.highest_layer, pkt['ip'].src, pkt[3],pkt[3].data
		n = len(pkt.layers)
		if pkt.highest_layer != 'TCP':
			#print pkt[3].data
			#print pkt['ip'].src+str(random.uniform(1,100))
			#print pkt.highest_layer, pkt['ip'].src, type(pkt[3]),bas.b2a_hex(str(pkt[3]))
			for j in range(3,n):
				data = data + str(pkt[j])
				print "data is :", bas.b2a_hex(data)
	
if __name__ == "__main__":
	#test()
	writehbase()	

