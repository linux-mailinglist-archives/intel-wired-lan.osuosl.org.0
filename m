Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 111E8D1C5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 01:03:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CD2E87C99;
	Wed,  9 Oct 2019 23:03:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RkSivgJY2vix; Wed,  9 Oct 2019 23:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 951C78793F;
	Wed,  9 Oct 2019 23:03:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E7B61BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 23:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A4D8883B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 23:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jln0qxxt5kFU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 23:03:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00190b01.pphosted.com (mx0a-00190b01.pphosted.com
 [67.231.149.131])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B1DAD883D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 23:03:06 +0000 (UTC)
Received: from pps.filterd (m0122332.ppops.net [127.0.0.1])
 by mx0a-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x99M2fgL031771; Wed, 9 Oct 2019 23:06:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=jan2016.eng;
 bh=DTUx7h+FOQEVSS27yd8sOubL1TyJVrRYo1RK2FpYArQ=;
 b=oTKMBwpUOfPv6fKQKvnw5X09nmkQ2thyWde76//dEWMRirLWt1YPkqYWd5SvtYSmkoy6
 VEkeJ67yccsi5P/SnvT1CThWbpNbiJFJ03Q7gdeeDmQ5CT3qPC4POw72Td9/oTPbXCZA
 gTTId3TIguAvzz+T/ht1JHb6j+VjVFaUl7XKlHOow09ageV98V1btaQJfr4NWitiN5Nw
 dtUVd6ALyLF9+5KY3pJvMtGL2UrIeRwelXlei7wS4eOt3wtMi2sHeJxeddGNYlGF06gm
 kmBBnKWUi2iSJb9epX0eV9TSMrdQ4wFff4W9BgYt86glY+bVC2RQxIVFIvdFktb6ALLW 1A== 
Received: from prod-mail-ppoint6 (prod-mail-ppoint6.akamai.com [184.51.33.61]
 (may be forged))
 by mx0a-00190b01.pphosted.com with ESMTP id 2vek7jg65n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 09 Oct 2019 23:06:19 +0100
Received: from pps.filterd (prod-mail-ppoint6.akamai.com [127.0.0.1])
 by prod-mail-ppoint6.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x99M3X8J010637; Wed, 9 Oct 2019 18:06:18 -0400
Received: from prod-mail-relay14.akamai.com ([172.27.17.39])
 by prod-mail-ppoint6.akamai.com with ESMTP id 2vepgwda9q-1;
 Wed, 09 Oct 2019 18:06:16 -0400
Received: from bos-lpwg1 (bos-lpwg1.kendall.corp.akamai.com [172.29.171.203])
 by prod-mail-relay14.akamai.com (Postfix) with ESMTP id 99AB381422; 
 Wed,  9 Oct 2019 22:06:09 +0000 (GMT)
Received: from johunt by bos-lpwg1 with local (Exim 4.86_2)
 (envelope-from <johunt@akamai.com>)
 id 1iIK6Q-0003zF-HY; Wed, 09 Oct 2019 18:06:38 -0400
From: Josh Hunt <johunt@akamai.com>
To: netdev@vger.kernel.org, willemb@google.com,
 intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 18:06:17 -0400
Message-Id: <1570658777-13459-4-git-send-email-johunt@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570658777-13459-1-git-send-email-johunt@akamai.com>
References: <1570658777-13459-1-git-send-email-johunt@akamai.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-09_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=948
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090173
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-09_10:2019-10-08,2019-10-09 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 mlxlogscore=980 adultscore=0 bulkscore=0
 priorityscore=1501 lowpriorityscore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1910090173
Subject: [Intel-wired-lan] [PATCH 3/3] i40e: Add UDP segmentation offload
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
Cc: Alexander Duyck <alexander.h.duyck@intel.com>,
 Josh Hunt <johunt@akamai.com>
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
index e3f29dc8b290..0b32f04a6255 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2960,10 +2960,16 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
 
 	/* remove payload length from inner checksum */
 	paylen = skb->len - l4_offset;
-	csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
 
-	/* compute length of segmentation header */
-	*hdr_len = (l4.tcp->doff * 4) + l4_offset;
+	if (skb->csum_offset == offsetof(struct tcphdr, check)) {
+		csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
+		/* compute length of segmentation header */
+		*hdr_len = (l4.tcp->doff * 4) + l4_offset;
+	} else {
+		csum_replace_by_diff(&l4.udp->check, (__force __wsum)htonl(paylen));
+		/* compute length of segmentation header */
+		*hdr_len = sizeof(*l4.udp) + l4_offset;
+	}
 
 	/* pull values out of skb_shinfo */
 	gso_size = skb_shinfo(skb)->gso_size;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
