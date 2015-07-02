#Assignment - plotting with goverment data

#source:http://kosis.kr/statHtml/statHtml.do?orgId=132&tblId=TX_132_2009_H1132&vw_cd=MT_ZTITLE&list_id=132_13204_007&seqNo=&lang_mode=ko&language=kor&obj_var_id=&itm_id=&conn_path=E1

n<-read.csv("C:/Users/user/Desktop/womencrime.csv")

#1st graph
n
n1<-subset(n,year==2010)
plot(n1$number,n1$religion)


#2st graph
n
n2<-subset(n,year==2006)
plot(n2$number,n2$religion)