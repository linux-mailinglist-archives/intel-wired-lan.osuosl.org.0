Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3665227EAEF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Sep 2020 16:29:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9850851CC;
	Wed, 30 Sep 2020 14:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u_v_anF2obk3; Wed, 30 Sep 2020 14:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D26085A84;
	Wed, 30 Sep 2020 14:29:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F059A1BF407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Sep 2020 14:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C5EA72010D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Sep 2020 14:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gnq0zkixFK0p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Sep 2020 14:29:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 84BE31FC94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Sep 2020 14:29:40 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08UETZa3081569;
 Wed, 30 Sep 2020 14:29:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=j1nC7rhTuTsQp9LBhBOFVUplDPU9yogi7ZgMQY1CyxE=;
 b=rXLM10sypYZlw5Grzn6g43ijjjjUHnqFejUPJzD7mvm9JGOpcvnJQ1ZD5JxzYM1s9TRK
 rlIQ41Jg2AChz/cIngaBhwWlI7qT+lP6ntTpUwQs/fqagAYHSVGU/B3PGSLj2O+XpH4a
 TqimIdV6XWe6BN7YVnT6R+4Q+TuAdH+257DSV95JTg9kLfbJmBaSuf/Fg1H9WBc6KHo/
 5T568LgWbUaAAEaR5R4/e47qxEnXDPmYCg4aJS0NrGXm0M5fPujRh7baSCziAYaXods/
 7lHDYte72yKm98y4C/PRzGynzWz+aez3rDooef5ltszmqS5OOkji/uTuAumrn4nsEW6C nQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 33swkm0u2t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 30 Sep 2020 14:29:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08UEOtrr164154;
 Wed, 30 Sep 2020 14:29:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 33uv2feuw4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Sep 2020 14:29:33 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08UETVql031950;
 Wed, 30 Sep 2020 14:29:31 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 30 Sep 2020 07:29:30 -0700
Date: Wed, 30 Sep 2020 17:29:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: sven.auhagen@voleatech.de
Message-ID: <20200930142925.GA650848@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9759
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 adultscore=0
 suspectscore=3 malwarescore=0 bulkscore=0 mlxlogscore=874 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009300115
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9759
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 phishscore=0
 suspectscore=3 mlxlogscore=861 clxscore=1011 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009300116
Subject: [Intel-wired-lan] [bug report] igb: add XDP support
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

Hello Sven Auhagen,

The patch 9cbc948b5a20: "igb: add XDP support" from Sep 2, 2020,
leads to the following static checker warning:

	drivers/net/ethernet/intel/igb/igb_main.c:8427 igb_run_xdp()
	error: (-2147483647) too low for ERR_PTR

drivers/net/ethernet/intel/igb/igb_main.c
  2897  static int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
  2898  {
  2899          struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
  2900          int cpu = smp_processor_id();
  2901          struct igb_ring *tx_ring;
  2902          struct netdev_queue *nq;
  2903          u32 ret;
  2904  
  2905          if (unlikely(!xdpf))
  2906                  return IGB_XDP_CONSUMED;
  2907  
  2908          /* During program transitions its possible adapter->xdp_prog is assigned
  2909           * but ring has not been configured yet. In this case simply abort xmit.
  2910           */
  2911          tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
  2912          if (unlikely(!tx_ring))
  2913                  return -ENXIO;
                        ^^^^^^^^^^^^^^
This is only supposed to return error codes like IGB_XDP_CONSUMED.
The return here we get converted to a positive eventually it will
trigger an Oops, because it's no long an IS_ERR() nor a NULL.

  2914  
  2915          nq = txring_txq(tx_ring);
  2916          __netif_tx_lock(nq, cpu);
  2917          ret = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
  2918          __netif_tx_unlock(nq);
  2919  
  2920          return ret;
  2921  }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
