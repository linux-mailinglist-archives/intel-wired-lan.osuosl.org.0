Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA266FDB2A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 May 2023 11:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02DB442098;
	Wed, 10 May 2023 09:56:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02DB442098
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683712588;
	bh=BWGiFeymm9ING4Hm2USJk9ytjT8YC2CDAYamWih/o14=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u4jhTjsVKoK5Zlkoood41wfhlMWA1Ep2fGSGpg0Aza2IQ0W/LSZFrZkMiHu1VoHhN
	 cr19vxnVsMhkoeSccktVu0A/f3JDyyHDMZMuRfqJFk6B1sGDHErm2fA78wTyyweOa9
	 x/PW1GIEs1dtdIvbV0a3VTvOKpGfTE3oxWfSHajFuzeWaeSFA0TpAKSO+DpUEo+sez
	 S/Q6NoZ//IxsnNQ2z3E0TuLNrKIFG4npESILwUzBU62X1ynQ/QLPEtUrVzeDWb1oLc
	 mLwVE28oNCVAReZbQgvhRCPSfeIKCMqqalCvcMHcRrVHmeInLCAhVtqranB7vAEO+Y
	 FMzuc4FWO6psA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pBlQ9srzrNk5; Wed, 10 May 2023 09:56:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 730AD41299;
	Wed, 10 May 2023 09:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 730AD41299
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0C521BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 09:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A22C54019E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 09:56:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A22C54019E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ea3CvywAEpJV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 May 2023 09:56:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA9AE40127
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA9AE40127
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 09:56:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="349005329"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="349005329"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 02:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="702204107"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="702204107"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by fmsmga007.fm.intel.com with ESMTP; 10 May 2023 02:56:13 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 May 2023 11:59:46 +0200
Message-Id: <20230510095946.532465-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683712579; x=1715248579;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gj3Ojk+7Be6DYpCvfjreQ2WnQFmQngJYZb+pDov6YgE=;
 b=SRfssp2Effwtd3swItaqbH6jWjcndAoa1paRdp45Hpi+whNN2+lewHev
 AWhnRCtqZ0QfJeKxZwjd3qIprjbZJElH0LxHl0lwcucTu/TDY8QMl4cmO
 HScN2THgFgIJAPW6hwlKb6WvlGJ/PvpR0+fumGGsSjg+pX5oWjDKtjzya
 aq7EhTQCkPpFqIb7sNaNKn5ASnkm/btebUFirmDFqoapSYPEkSfnN5Bzt
 O2d/WMFppQp3xL6vQhmDLow/HUkb4k+UYJw7uUBTWZObBXGBKP5HIkz6d
 pabA9bZ8xI92XwYyegAD/of3wePs9Lyy0HA0xe5A9JnmZrVYeWugoFEHk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SRfssp2E
Subject: [Intel-wired-lan] [PATCH net v3] ice: Fix undersized tx_flags
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
tx_flags field that was introduced in the Fixes commit,
VLAN-related information would be discarded completely.
As such, creating a vlan and trying to run ping through
would result in no traffic passing.

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
v3: Applied review tips received on netdev: Reworded commit message,
and used already existing vlan priority mask/shift values.
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 5 ++---
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 8 +++-----
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 9 +++------
 3 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index c6d4926f0fcf..850db8e0e6b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -932,10 +932,9 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 	if ((first->tx_flags & ICE_TX_FLAGS_HW_VLAN ||
 	     first->tx_flags & ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN) ||
 	    skb->priority != TC_PRIO_CONTROL) {
-		first->tx_flags &= ~ICE_TX_FLAGS_VLAN_PR_M;
+		first->vid &= ~VLAN_PRIO_MASK;
 		/* Mask the lower 3 bits to set the 802.1p priority */
-		first->tx_flags |= (skb->priority & 0x7) <<
-				   ICE_TX_FLAGS_VLAN_PR_S;
+		first->vid |= (skb->priority << VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK;
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
index fff0efe28373..166413fc33f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -127,10 +127,6 @@ static inline int ice_skb_pad(void)
 #define ICE_TX_FLAGS_IPV6	BIT(6)
 #define ICE_TX_FLAGS_TUNNEL	BIT(7)
 #define ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN	BIT(8)
-#define ICE_TX_FLAGS_VLAN_M	0xffff0000
-#define ICE_TX_FLAGS_VLAN_PR_M	0xe0000000
-#define ICE_TX_FLAGS_VLAN_PR_S	29
-#define ICE_TX_FLAGS_VLAN_S	16
 
 #define ICE_XDP_PASS		0
 #define ICE_XDP_CONSUMED	BIT(0)
@@ -182,8 +178,9 @@ struct ice_tx_buf {
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
