Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2416D6F033F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Apr 2023 11:19:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FEF6615CD;
	Thu, 27 Apr 2023 09:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FEF6615CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682587189;
	bh=u/9k+mugmes+tmBuqClpVS3yjmJ8MSkFqsYinPkdQkg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QEMaoUHA2rFgEFd8a6Cquitmu7d4JvVnYGoYnzvLfPQJ7IY7rEt6BxLOaE4aAarO+
	 oMpejHhfWREL95nrUKMvmF25GGwIbbywmssiUAE2wqcwjmDbt0hUOUsflu7RFNwCnF
	 TfORMjkApsE51Ym/vqBAURxMPHvw++6V061QdbQXxTPjMMDL+2rhh/l8IWObjfgrNl
	 tU7HVvs9p45L/TPtO0U03x7zE7arIaKrznDAu1JDO1NzxW41aA+dXHH3JfRp+aWj5O
	 2ZbFxcITvkMTH9XCkCJhF5nTjqsbdbs5EB7cvEErcIQNCdfLzHFNVhdOD50G6QR0Sg
	 SZjrFo8351r7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hDpeUeKCp_qa; Thu, 27 Apr 2023 09:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64A91615A2;
	Thu, 27 Apr 2023 09:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64A91615A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CC121BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 09:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E59A5615C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 09:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E59A5615C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J109AUznc9F5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Apr 2023 09:19:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D018615A2
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D018615A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 09:19:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="375358838"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="375358838"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 02:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="726985055"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="726985055"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga001.jf.intel.com with ESMTP; 27 Apr 2023 02:19:40 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Apr 2023 11:23:09 +0200
Message-Id: <20230427092309.3122-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682587183; x=1714123183;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YESpmBFYD2mU5lhgONEoY9Pp/gRz1TWUdQHsmqlLpb8=;
 b=JfZpRZraVL06NEp1fn4xyjM33ZyxGwLEyGOcwWro43N3+uniKy4On8Ef
 HpuMHsu36e5UZG9lwEW1IfVsdTNOzlabHwXlp5HSZ3B3kwuj1zxhVdvnk
 IlEU/fHtlgVWYV6Jvus4P6mxSXdvpA529kfe4K/rapz28y9gcx0Rt9+P2
 2A3tGqOaCUauNZLExDcwm7+pmRFLwEhmUYYzI63EFUHGWDSHDR1/BkK0M
 8m8mqq+YVRb1IpOMZtU9f3pTATRcNkM6bSjyZaeVD2benVNmp5z5xb/yW
 XKjoO261r4WctNqksHen9JpU0DEL/H5YqbskI3qjVf7i1J5R1Lgs9nglL
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JfZpRZra
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix undersized tx_flags
 variable
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

As not all ICE_TX_FLAGS_* fit in current 16-bit limited
tx_flags field, some VLAN-related flags would not properly apply.

Fix that by refactoring tx_flags variable into flags only and
a separate variable that holds VLAN ID. As there is some space left,
type variable can fit between those two. Pahole reports no size
change to ice_tx_buf struct.

Fixes: aa1d3faf71a6 ("ice: Robustify cleaning/completing XDP Tx buffers")
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
v2: Applied review tips received on IWL, instead of changing
the size of tx_flags now it works by explicit split of flags and vid
variable 
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  6 +++---
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  8 +++-----
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 12 ++++++------
 3 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index c6d4926f0fcf..6c212d0dbef3 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -932,10 +932,10 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 	if ((first->tx_flags & ICE_TX_FLAGS_HW_VLAN ||
 	     first->tx_flags & ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN) ||
 	    skb->priority != TC_PRIO_CONTROL) {
-		first->tx_flags &= ~ICE_TX_FLAGS_VLAN_PR_M;
+		first->vid &= ~ICE_TX_VLAN_PR_M;
 		/* Mask the lower 3 bits to set the 802.1p priority */
-		first->tx_flags |= (skb->priority & 0x7) <<
-				   ICE_TX_FLAGS_VLAN_PR_S;
+		first->vid |= (skb->priority << ICE_TX_VLAN_PR_S) &
+			      ICE_TX_VLAN_PR_M;
 		/* if this is not already set it means a VLAN 0 + priority needs
 		 * to be offloaded
 		 */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4fcf2d07eb85..059bd911c51d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1664,8 +1664,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 
 	if (first->tx_flags & ICE_TX_FLAGS_HW_VLAN) {
 		td_cmd |= (u64)ICE_TX_DESC_CMD_IL2TAG1;
-		td_tag = (first->tx_flags & ICE_TX_FLAGS_VLAN_M) >>
-			  ICE_TX_FLAGS_VLAN_S;
+		td_tag = first->vid;
 	}
 
 	dma = dma_map_single(tx_ring->dev, skb->data, size, DMA_TO_DEVICE);
@@ -1998,7 +1997,7 @@ ice_tx_prepare_vlan_flags(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first)
 	 * VLAN offloads exclusively so we only care about the VLAN ID here
 	 */
 	if (skb_vlan_tag_present(skb)) {
-		first->tx_flags |= skb_vlan_tag_get(skb) << ICE_TX_FLAGS_VLAN_S;
+		first->vid = skb_vlan_tag_get(skb);
 		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
 			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
 		else
@@ -2388,8 +2387,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		offload.cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
 					(ICE_TX_CTX_DESC_IL2TAG2 <<
 					ICE_TXD_CTX_QW1_CMD_S));
-		offload.cd_l2tag2 = (first->tx_flags & ICE_TX_FLAGS_VLAN_M) >>
-			ICE_TX_FLAGS_VLAN_S;
+		offload.cd_l2tag2 = first->vid;
 	}
 
 	/* set up TSO offload */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index fff0efe28373..76a34d435025 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -127,10 +127,9 @@ static inline int ice_skb_pad(void)
 #define ICE_TX_FLAGS_IPV6	BIT(6)
 #define ICE_TX_FLAGS_TUNNEL	BIT(7)
 #define ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN	BIT(8)
-#define ICE_TX_FLAGS_VLAN_M	0xffff0000
-#define ICE_TX_FLAGS_VLAN_PR_M	0xe0000000
-#define ICE_TX_FLAGS_VLAN_PR_S	29
-#define ICE_TX_FLAGS_VLAN_S	16
+
+#define ICE_TX_VLAN_PR_M	0xe000
+#define ICE_TX_VLAN_PR_S	13
 
 #define ICE_XDP_PASS		0
 #define ICE_XDP_CONSUMED	BIT(0)
@@ -182,8 +181,9 @@ struct ice_tx_buf {
 		unsigned int gso_segs;
 		unsigned int nr_frags;	/* used for mbuf XDP */
 	};
-	u32 type:16;			/* &ice_tx_buf_type */
-	u32 tx_flags:16;
+	u32 tx_flags:12;
+	u32 type:4;			/* &ice_tx_buf_type */
+	u32 vid:16;
 	DEFINE_DMA_UNMAP_LEN(len);
 	DEFINE_DMA_UNMAP_ADDR(dma);
 };
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
