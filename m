Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA6D48F30D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jan 2022 00:38:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3FB983408;
	Fri, 14 Jan 2022 23:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4ZeU3ufacJZ; Fri, 14 Jan 2022 23:38:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91B2783396;
	Fri, 14 Jan 2022 23:38:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 710A01BF42E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DD9240891
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDhZXxHSsvjH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 23:38:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 279AD40888
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642203520; x=1673739520;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sp3nCkLJze1qOHAhDu/KwIhTUbwrzmcBqmhIVdQ39iE=;
 b=E8cg+8Qx08T4nVP5ax99vQRsS/gEUbbR2KDVvLtkeeDguVM/Q9bJxQR2
 l7oRGjXQ3HfaSMcaESIRFCWP1RsV4CpbuynuKOWLm3vfB+2fM7UB4ZL2e
 V3B658r5kBPm8xe2zCtffIH8NiA0Upncf4lv306NK2Lsd9vJs6/gl5hi8
 ivTK35dEkZ9fTRVSLKguGtmBA2+Vd2AdAJ/Lk9wqaIoP2ccz3O165YQ6F
 QjT/5Camb1KLvApW6it9QNiktDbDk54nyUMHQh9MW+LZJvC3hqLfQI6p4
 2yqUK8y4Wv357Z9nQXCsyikhzsVNKX4j1U5iI45F/t2XN1XhNeNwbG3qc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="307692791"
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="307692791"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 15:38:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="475950746"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 15:38:39 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jan 2022 15:38:39 -0800
Message-Id: <20220114233839.67979-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: fix IPIP and SIT TSO offload
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver was avoiding offload for IPIP (at least) frames due to
parsing the inner header offsets incorrectly when trying to check
lengths.

This length check works for VXLAN frames but fails on IPIP frames
because skb_transport_offset points to the inner header in IPIP
frames, which meant the subtraction of transport_header from
inner_network_header returns a negative value (-20).

With the code before this patch, everything continued to work, but GSO
was being used to segment, causing throughputs of 1.5Gb/s per thread.
After this patch, throughput is more like 10Gb/s per thread for IPIP
traffic.

Fixes: e94d44786693 ("ice: Implement filter sync, NDO operations and bump version")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
--
Testing Hints: test IPIP tunnel and VXLAN tunnel, both should use TSO.
---
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 25 +++++++++++++------
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index d981dc6f2323..85a612838a89 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -568,6 +568,7 @@ struct ice_tx_ctx_desc {
 			(0x3FFFFULL << ICE_TXD_CTX_QW1_TSO_LEN_S)
 
 #define ICE_TXD_CTX_QW1_MSS_S	50
+#define ICE_TXD_CTX_MIN_MSS	64
 
 #define ICE_TXD_CTX_QW1_VSI_S	50
 #define ICE_TXD_CTX_QW1_VSI_M	(0x3FFULL << ICE_TXD_CTX_QW1_VSI_S)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 73c61cdb036f..105b62b5e7cb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8540,6 +8540,7 @@ ice_features_check(struct sk_buff *skb,
 		   struct net_device __always_unused *netdev,
 		   netdev_features_t features)
 {
+	bool gso = skb_is_gso(skb);
 	size_t len;
 
 	/* No point in doing any of this if neither checksum nor GSO are
@@ -8552,24 +8553,32 @@ ice_features_check(struct sk_buff *skb,
 	/* We cannot support GSO if the MSS is going to be less than
 	 * 64 bytes. If it is then we need to drop support for GSO.
 	 */
-	if (skb_is_gso(skb) && (skb_shinfo(skb)->gso_size < 64))
+	if (gso && (skb_shinfo(skb)->gso_size < ICE_TXD_CTX_MIN_MSS))
 		features &= ~NETIF_F_GSO_MASK;
 
-	len = skb_network_header(skb) - skb->data;
+	len = skb_network_offset(skb);
 	if (len > ICE_TXD_MACLEN_MAX || len & 0x1)
 		goto out_rm_features;
 
-	len = skb_transport_header(skb) - skb_network_header(skb);
+	len = skb_network_header_len(skb);
 	if (len > ICE_TXD_IPLEN_MAX || len & 0x1)
 		goto out_rm_features;
 
 	if (skb->encapsulation) {
-		len = skb_inner_network_header(skb) - skb_transport_header(skb);
-		if (len > ICE_TXD_L4LEN_MAX || len & 0x1)
-			goto out_rm_features;
+		/* this must work for vxlan frames AND IPIP/SIT frames, and in
+		 * the case of IPIP frames, the transport header pointer is
+		 * after the inner header! So check to make sure that this
+		 * is a GRE or UDP_TUNNEL frame before doing that math.
+		 */
+		if (gso && (skb_shinfo(skb)->gso_type &
+			    (SKB_GSO_GRE | SKB_GSO_UDP_TUNNEL))) {
+			len = skb_inner_network_header(skb) -
+			      skb_transport_header(skb);
+			if (len > ICE_TXD_L4LEN_MAX || len & 0x1)
+				goto out_rm_features;
+		}
 
-		len = skb_inner_transport_header(skb) -
-		      skb_inner_network_header(skb);
+		len = skb_inner_network_header_len(skb);
 		if (len > ICE_TXD_IPLEN_MAX || len & 0x1)
 			goto out_rm_features;
 	}

base-commit: f1f62d37baf6f3ca96f3edb6f888bf90fe57cef2
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
