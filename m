Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 294D3D45D5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 18:53:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4E4287F76;
	Fri, 11 Oct 2019 16:53:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RU4ed6yHTQmk; Fri, 11 Oct 2019 16:53:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0071288011;
	Fri, 11 Oct 2019 16:53:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD8091BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A5D59888EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:53:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wD7x3wlJ5jAw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 16:53:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00190b01.pphosted.com (mx0a-00190b01.pphosted.com
 [67.231.149.131])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F19D9888EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:53:35 +0000 (UTC)
Received: from pps.filterd (m0122332.ppops.net [127.0.0.1])
 by mx0a-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BGqDAm015101; Fri, 11 Oct 2019 17:53:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=jan2016.eng;
 bh=WrgzxCfSQCMoLA5JPc/oZqd8xph9TXAp92CBIBcGQLw=;
 b=NfZ5kUpLqgkEwOS90E2mmvjfcvO/I6V5IzRG+JJt2Zz1LvA0+vJj4zkPfC2qx+Rs9Muk
 PEy2UrsBR/yOqlfHCLgldycT5vx4R7FBAbb8VI+3myVTh+n0gSBFbCPn3zhCftNs1eV7
 mYlXa9Qz8sX0CDWP5/8fxvOm/LOxVXybrgPSlzGbmKEDv9xkKBof+Y5/VtZtx7JfSWxr
 1hftk/ewSrtPawRbUropqILwD8F78sp9bacVPAZZXmuqsTDu4kNo6eL9JevETMI4AEHv
 Iw62cTYAiqeiWGMiPgTowRTr4kjaSuSm4B1T+xWzGVHYy0Jy/ZQEadZ7nCzz3Wm1YfqC mA== 
Received: from prod-mail-ppoint4 (prod-mail-ppoint4.akamai.com [96.6.114.87]
 (may be forged))
 by mx0a-00190b01.pphosted.com with ESMTP id 2vjt7us39k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 17:53:30 +0100
Received: from pps.filterd (prod-mail-ppoint4.akamai.com [127.0.0.1])
 by prod-mail-ppoint4.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x9BGloDB030555; Fri, 11 Oct 2019 12:53:29 -0400
Received: from prod-mail-relay14.akamai.com ([172.27.17.39])
 by prod-mail-ppoint4.akamai.com with ESMTP id 2veph4gxku-1;
 Fri, 11 Oct 2019 12:53:28 -0400
Received: from bos-lpwg1 (bos-lpwg1.kendall.corp.akamai.com [172.29.171.203])
 by prod-mail-relay14.akamai.com (Postfix) with ESMTP id 44F6A81460; 
 Fri, 11 Oct 2019 16:53:13 +0000 (GMT)
Received: from johunt by bos-lpwg1 with local (Exim 4.86_2)
 (envelope-from <johunt@akamai.com>)
 id 1iIyAg-0005Ea-LK; Fri, 11 Oct 2019 12:53:42 -0400
From: Josh Hunt <johunt@akamai.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Fri, 11 Oct 2019 12:53:40 -0400
Message-Id: <1570812820-20052-4-git-send-email-johunt@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570812820-20052-1-git-send-email-johunt@akamai.com>
References: <1570812820-20052-1-git-send-email-johunt@akamai.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=947
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110148
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_10:2019-10-10,2019-10-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 mlxscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 suspectscore=0 mlxlogscore=971 malwarescore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1910110149
Subject: [Intel-wired-lan] [PATCH v3 3/3] i40e: Add UDP segmentation offload
 support
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
Cc: Alexander Duyck <alexander.h.duyck@intel.com>, willemb@google.com,
 Josh Hunt <johunt@akamai.com>, alexander.h.duyck@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Based on a series from Alexander Duyck this change adds UDP segmentation
offload support to the i40e driver.

CC: Alexander Duyck <alexander.h.duyck@intel.com>
CC: Willem de Bruijn <willemb@google.com>
Signed-off-by: Josh Hunt <johunt@akamai.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c |  1 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 12 +++++++++---
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6031223eafab..56f8c52cbba1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12911,6 +12911,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 			  NETIF_F_GSO_IPXIP6		|
 			  NETIF_F_GSO_UDP_TUNNEL	|
 			  NETIF_F_GSO_UDP_TUNNEL_CSUM	|
+			  NETIF_F_GSO_UDP_L4		|
 			  NETIF_F_SCTP_CRC		|
 			  NETIF_F_RXHASH		|
 			  NETIF_F_RXCSUM		|
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index e3f29dc8b290..b8496037ef7f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2960,10 +2960,16 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
 
 	/* remove payload length from inner checksum */
 	paylen = skb->len - l4_offset;
-	csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
 
-	/* compute length of segmentation header */
-	*hdr_len = (l4.tcp->doff * 4) + l4_offset;
+	if (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) {
+		csum_replace_by_diff(&l4.udp->check, (__force __wsum)htonl(paylen));
+		/* compute length of segmentation header */
+		*hdr_len = sizeof(*l4.udp) + l4_offset;
+	} else {
+		csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
+		/* compute length of segmentation header */
+		*hdr_len = (l4.tcp->doff * 4) + l4_offset;
+	}
 
 	/* pull values out of skb_shinfo */
 	gso_size = skb_shinfo(skb)->gso_size;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
