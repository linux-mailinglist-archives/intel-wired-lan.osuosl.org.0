Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FB8D45D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 18:53:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E6262034B;
	Fri, 11 Oct 2019 16:53:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2r3zEiS6dWbl; Fri, 11 Oct 2019 16:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3FD07204C2;
	Fri, 11 Oct 2019 16:53:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5835B1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51771888E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ID7NwiyN8RM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 16:53:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00190b01.pphosted.com (mx0a-00190b01.pphosted.com
 [67.231.149.131])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 837908888D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:53:21 +0000 (UTC)
Received: from pps.filterd (m0050093.ppops.net [127.0.0.1])
 by m0050093.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x9BGqPvT026811; Fri, 11 Oct 2019 17:53:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=jan2016.eng;
 bh=zBGTGkcfEG6S4mh4K120OykZ8BrPvzZ0nezdzboqCKA=;
 b=LyDE0Ij2gnfiquoGWzg43MOQTCkpizA1s76PfA1jWKYQl+ZiUK13pcxJR7I/mI8lHD9K
 MtFAIOH2ozbs7DFe1WSQGVKNNcuXwcvqhCIyYm7mz0BPdrNDVSzepR8BHF2yEn0sfVRC
 q2HYNgxRr53h1F2c70KOxhIlblrVu+g3SV5UPp+K/b1uYwU4eW1w/cVB88SbIpMM/nZ0
 HyfsAMYnt5D1bqkMkruREVQjxNdsrLoFkeGJvW/JfOyMdMqcO7Lue2UozyTd6fGQ+TIG
 iD3+JDLdIiLwclLVgXyq6+gYSg62BhTPSVj6zHvd+Dc9EDEjihk7k/Ssz4oRME1VI3g4 2g== 
Received: from prod-mail-ppoint3 (prod-mail-ppoint3.akamai.com [96.6.114.86]
 (may be forged))
 by m0050093.ppops.net-00190b01. with ESMTP id 2vejer391e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 17:53:14 +0100
Received: from pps.filterd (prod-mail-ppoint3.akamai.com [127.0.0.1])
 by prod-mail-ppoint3.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x9BGlek9014974; Fri, 11 Oct 2019 12:53:13 -0400
Received: from prod-mail-relay14.akamai.com ([172.27.17.39])
 by prod-mail-ppoint3.akamai.com with ESMTP id 2veph1c4e1-1;
 Fri, 11 Oct 2019 12:53:13 -0400
Received: from bos-lpwg1 (bos-lpwg1.kendall.corp.akamai.com [172.29.171.203])
 by prod-mail-relay14.akamai.com (Postfix) with ESMTP id 3DA2F8122C; 
 Fri, 11 Oct 2019 16:53:13 +0000 (GMT)
Received: from johunt by bos-lpwg1 with local (Exim 4.86_2)
 (envelope-from <johunt@akamai.com>)
 id 1iIyAg-0005EV-KL; Fri, 11 Oct 2019 12:53:42 -0400
From: Josh Hunt <johunt@akamai.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Fri, 11 Oct 2019 12:53:39 -0400
Message-Id: <1570812820-20052-3-git-send-email-johunt@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570812820-20052-1-git-send-email-johunt@akamai.com>
References: <1570812820-20052-1-git-send-email-johunt@akamai.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110148
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_10:2019-10-10,2019-10-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 impostorscore=0
 bulkscore=0 spamscore=0 adultscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 clxscore=1015 mlxscore=0 mlxlogscore=999 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1910110149
Subject: [Intel-wired-lan] [PATCH v3 2/3] ixgbe: Add UDP segmentation
 offload support
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

Repost from a series by Alexander Duyck to add UDP segmentation offload
support to the igb driver:
https://lore.kernel.org/netdev/20180504003916.4769.66271.stgit@localhost.localdomain/

CC: Alexander Duyck <alexander.h.duyck@intel.com>
CC: Willem de Bruijn <willemb@google.com>
Suggested-by: Alexander Duyck <alexander.h.duyck@intel.com>
Signed-off-by: Josh Hunt <johunt@akamai.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 1ce2397306b9..6c9edd272c7a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7946,6 +7946,7 @@ static int ixgbe_tso(struct ixgbe_ring *tx_ring,
 	} ip;
 	union {
 		struct tcphdr *tcp;
+		struct udphdr *udp;
 		unsigned char *hdr;
 	} l4;
 	u32 paylen, l4_offset;
@@ -7969,7 +7970,8 @@ static int ixgbe_tso(struct ixgbe_ring *tx_ring,
 	l4.hdr = skb_checksum_start(skb);
 
 	/* ADV DTYP TUCMD MKRLOC/ISCSIHEDLEN */
-	type_tucmd = IXGBE_ADVTXD_TUCMD_L4T_TCP;
+	type_tucmd = (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) ?
+		      IXGBE_ADVTXD_TUCMD_L4T_UDP : IXGBE_ADVTXD_TUCMD_L4T_TCP;
 
 	/* initialize outer IP header fields */
 	if (ip.v4->version == 4) {
@@ -7999,12 +8001,20 @@ static int ixgbe_tso(struct ixgbe_ring *tx_ring,
 	/* determine offset of inner transport header */
 	l4_offset = l4.hdr - skb->data;
 
-	/* compute length of segmentation header */
-	*hdr_len = (l4.tcp->doff * 4) + l4_offset;
-
 	/* remove payload length from inner checksum */
 	paylen = skb->len - l4_offset;
-	csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
+
+	if (type_tucmd & IXGBE_ADVTXD_TUCMD_L4T_TCP) {
+		/* compute length of segmentation header */
+		*hdr_len = (l4.tcp->doff * 4) + l4_offset;
+		csum_replace_by_diff(&l4.tcp->check,
+				     (__force __wsum)htonl(paylen));
+	} else {
+		/* compute length of segmentation header */
+		*hdr_len = sizeof(*l4.udp) + l4_offset;
+		csum_replace_by_diff(&l4.udp->check,
+				     (__force __wsum)htonl(paylen));
+	}
 
 	/* update gso size and bytecount with header size */
 	first->gso_segs = skb_shinfo(skb)->gso_segs;
@@ -10190,6 +10200,7 @@ ixgbe_features_check(struct sk_buff *skb, struct net_device *dev,
 	if (unlikely(mac_hdr_len > IXGBE_MAX_MAC_HDR_LEN))
 		return features & ~(NETIF_F_HW_CSUM |
 				    NETIF_F_SCTP_CRC |
+				    NETIF_F_GSO_UDP_L4 |
 				    NETIF_F_HW_VLAN_CTAG_TX |
 				    NETIF_F_TSO |
 				    NETIF_F_TSO6);
@@ -10198,6 +10209,7 @@ ixgbe_features_check(struct sk_buff *skb, struct net_device *dev,
 	if (unlikely(network_hdr_len >  IXGBE_MAX_NETWORK_HDR_LEN))
 		return features & ~(NETIF_F_HW_CSUM |
 				    NETIF_F_SCTP_CRC |
+				    NETIF_F_GSO_UDP_L4 |
 				    NETIF_F_TSO |
 				    NETIF_F_TSO6);
 
@@ -10907,7 +10919,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			    IXGBE_GSO_PARTIAL_FEATURES;
 
 	if (hw->mac.type >= ixgbe_mac_82599EB)
-		netdev->features |= NETIF_F_SCTP_CRC;
+		netdev->features |= NETIF_F_SCTP_CRC | NETIF_F_GSO_UDP_L4;
 
 #ifdef CONFIG_IXGBE_IPSEC
 #define IXGBE_ESP_FEATURES	(NETIF_F_HW_ESP | \
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
