Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6ED4C89E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 09:46:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2BE4B86773;
	Thu, 20 Jun 2019 07:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YjECDwNsMVFA; Thu, 20 Jun 2019 07:46:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E24986959;
	Thu, 20 Jun 2019 07:46:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3766E1BF584
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 07:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29A8386773
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 07:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7iHIem21SdU6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 07:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 83B8885606
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 07:46:24 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5K7iEg5106287;
 Thu, 20 Jun 2019 07:46:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=HeDvOiHTlIzrzy+0pchL+wla87Ud5RbdxU4a4YmC+QY=;
 b=mPUBrfwj+jL6UupTstk8/onXFOCjt1/7+L7mTVwzNJIP+59ELUwv7KC45rB+7/2Hf8wu
 vPHRJGomfgvH3uGEOlWt1aGlaGA7qmfcC3uaNW+ez7H1ZYLZDmatomZ4ZtkPrVVK8Kli
 gfN2C6EleamX+JB2uxJkq6LDQnc8V/h0amWqdcKMAgzw2C0cp/3KAh9/UgstHVIrU4HG
 MRPK56f5DvDhWObOLs7sp8bmTVMcHVNn9/zpSAqhGJYjMAXT2OPKQ/dQK02f7LXZIh2i
 CP1FzfpYjPiV2zL/8xXULer/I6x64hvwIsdpZHpXz2AEnAFZEi2WvJYSnktretM9nVYl Rg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2t7809ffev-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 07:46:21 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5K7ju2P138441;
 Thu, 20 Jun 2019 07:46:20 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2t77yng31n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 07:46:20 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5K7kJTQ002911;
 Thu, 20 Jun 2019 07:46:19 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 20 Jun 2019 00:45:22 -0700
Date: Thu, 20 Jun 2019 10:45:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: mitch.a.williams@intel.com
Message-ID: <20190620074516.GA12233@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9293
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=841
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906200059
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9293
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=879 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906200059
Subject: [Intel-wired-lan] [bug report] iavf: allow null RX descriptors
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

Hello Mitch Williams,

This is a semi-automatic email about new static checker warnings.

The patch efa14c398582: "iavf: allow null RX descriptors" from May
14, 2019, leads to the following Smatch complaint:

    drivers/net/ethernet/intel/iavf/iavf_txrx.c:1533 iavf_clean_rx_irq()
    warn: variable dereferenced before check 'rx_buffer' (see line 1526)

drivers/net/ethernet/intel/iavf/iavf_txrx.c
  1515  
  1516                  size = (qword & IAVF_RXD_QW1_LENGTH_PBUF_MASK) >>
  1517                         IAVF_RXD_QW1_LENGTH_PBUF_SHIFT;
  1518  
  1519                  iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
  1520                  rx_buffer = iavf_get_rx_buffer(rx_ring, size);
  1521  
  1522                  /* retrieve a buffer from the ring */
  1523                  if (skb)

skb is non-NULL so ignore this path.

  1524                          iavf_add_rx_frag(rx_ring, rx_buffer, skb, size);
  1525			else if (ring_uses_build_skb(rx_ring))
  1526				skb = iavf_build_skb(rx_ring, rx_buffer, size);
                                                              ^^^^^^^^^
  1527			else
  1528				skb = iavf_construct_skb(rx_ring, rx_buffer, size);
                                                                  ^^^^^^^^^
These functions both dereference "rx_buffer" and might set skb to NULL.

  1529	
  1530			/* exit if we failed to retrieve a buffer */
  1531			if (!skb) {
  1532				rx_ring->rx_stats.alloc_buff_failed++;
  1533				if (rx_buffer)
                                ^^^^^^^^^^^^^
If "rx_buffer" is NULL then we would already have crashed.

  1534					rx_buffer->pagecnt_bias++;
  1535				break;

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
