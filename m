Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2E72A4840
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Nov 2020 15:34:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ED0F920762;
	Tue,  3 Nov 2020 14:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRyNfzBZFBuw; Tue,  3 Nov 2020 14:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C00020554;
	Tue,  3 Nov 2020 14:34:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03F6D1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 14:34:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E73352052C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 14:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onOKaV8eAe9Z for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 14:34:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id 38510203E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 14:34:20 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A3EXmJF138127;
 Tue, 3 Nov 2020 14:34:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=JKnotgRu96OPvF2rkP3E1OBszY+MyTDyQnCctIIckJc=;
 b=CsS6NrEKGD+/dZWmmKXd62gA502me3mgOKKq6DoZfQHHrHOZeZ6fpRgO2ObDt+gywBh6
 6opOInNXGIFYSVrM+osrLw4/3o876KQ6oO4nG5xzppcU8+hgi5tp1Ep/KPWnASbAajvl
 ug74t5lU37teYr58VazN4m+50xknME46VR44jzi8II7y20s5HlAOjXEZ1eTHYq5R9Y7A
 a841h08N0yrQE3gYyPIdvgd094TxoD+1el5CUmLo7Mup2RBP4mbSYrBLrIztAKcubXjy
 aqxHxabmk4p4Uj4HV4OWF99GytN9aVX2wDu0ICsAkdlKdpepA8R+by/NnHvPMd3b7Ndj RQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 34hhb21jg9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 03 Nov 2020 14:34:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A3ETjQ0041192;
 Tue, 3 Nov 2020 14:32:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 34hvrvxk3s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Nov 2020 14:32:15 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0A3EW841023781;
 Tue, 3 Nov 2020 14:32:14 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Nov 2020 06:32:08 -0800
Date: Tue, 3 Nov 2020 17:32:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: jesus.sanchez-palencia@intel.com
Message-ID: <20201103143201.GA1477350@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9793
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=924 suspectscore=3 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011030101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9793
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 suspectscore=3
 clxscore=1011 mlxlogscore=920 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011030102
Subject: [Intel-wired-lan] [bug report] igb: Add support for ETF offload
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Jesus Sanchez-Palencia,

The patch 3048cf84d152: "igb: Add support for ETF offload" from Jul
3, 2018, leads to the following static checker warning:

	drivers/net/ethernet/intel/igb/igb_main.c:1862 igb_save_txtime_params()
	warn: array off by one? 'adapter->tx_ring[queue]'

drivers/net/ethernet/intel/igb/igb_main.c
  1854  static int igb_save_txtime_params(struct igb_adapter *adapter, int queue,
  1855                                    bool enable)
  1856  {
  1857          struct igb_ring *ring;
  1858  
  1859          if (queue < 0 || queue > adapter->num_tx_queues)
                                       ^^
I feel like this should be >= instead.

  1860                  return -EINVAL;
  1861  
  1862          ring = adapter->tx_ring[queue];
  1863          ring->launchtime_enable = enable;
  1864  
  1865          return 0;
  1866  }
  1867  
  1868  static int igb_save_cbs_params(struct igb_adapter *adapter, int queue,
  1869                                 bool enable, int idleslope, int sendslope,
  1870                                 int hicredit, int locredit)
  1871  {
  1872          struct igb_ring *ring;
  1873  
  1874          if (queue < 0 || queue > adapter->num_tx_queues)
                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Here too.

  1875                  return -EINVAL;
  1876  
  1877          ring = adapter->tx_ring[queue];
  1878  
  1879          ring->cbs_enable = enable;
  1880          ring->idleslope = idleslope;
  1881          ring->sendslope = sendslope;
  1882          ring->hicredit = hicredit;
  1883          ring->locredit = locredit;
  1884  
  1885          return 0;
  1886  }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
