Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3916618B15
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:03:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8980840BC0;
	Thu,  3 Nov 2022 22:03:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8980840BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512990;
	bh=mqMrr2k6bkdIUyzwFxgJHW3I8pPkxjrSaV2GVrFtSs0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v5VBOcL3QdegAXIXt5A6IxlkAOYZKTKeRklPdgwwvfMnPIjR9ex3MrNdTVjZ9QQmM
	 UbmCmWQAqNvmS7kiq5yaWgw5y4+mzF1WbUf1xzfpjQ3p56T+eBlJeYklXubrxPGyJ6
	 I9sWLbb9hksYHqmjVqnoqG5bqRAGy/27F68Mqf5+N4YVhZLNpdaJtbX/dgXvaddWTr
	 o4kBjCK++YAKSsTrjyb49yZheN1lPCJz0sWS/SfTFwpILXAudzXT1VszPyMlLk3MNc
	 Q7P6U6CQhC/Yx8JWht877MxzX1ZnM+A6VpzBqtde7R2jGkdX+yyonHC3Yxg8hVxA4u
	 dDj4mPfRSvurQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPw3aTpS2aih; Thu,  3 Nov 2022 22:03:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6322040520;
	Thu,  3 Nov 2022 22:03:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6322040520
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 127D61BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BECE81EDC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BECE81EDC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ayW71648EGF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:01:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 285D781EDD
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 285D781EDD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:01:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="297278189"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="297278189"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480238"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480238"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:57 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:31 -0700
Message-Id: <20221103220145.1851114-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512919; x=1699048919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xphY25oeNAmZsytc68cJsBykkQ3iNAzrtOYvoN13BBM=;
 b=LnNavvfD7B/bnpX+fFUj5e7h5WJMFbumhzSnXF/nR1n4GL036Vq92sI4
 zqI8UR9u31IWKhOyGGzMdVg8kcmzC1i3tgkSpJGc8NmS3RWwzhe8thWh2
 G2m9C00GDfieqTGyQ+NAfmdqfWaXddxXYdERvRk7yKu6NE/qX+E7rPEW2
 wY/WvJaRlwkT1RG7PAD6ZjDoRzvO5HE62eKVvtrDP4TqdRW/t91rVqQ/R
 PyCv5wD4a7Jv9zitEFed11vH/lLf+keM3Kj03IFO1OHbnlUbo4Dl54EwP
 vbuEX4GFuO6gdF6i79JZhhiG0nYgBQOUe3V6pRs99sFIrntwga53Eb4da
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LnNavvfD
Subject: [Intel-wired-lan] [PATCH net-next v2 01/15] ice: Use more generic
 names for ice_ptp_tx fields
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Some supported devices have per-port timestamp memory blocks while
others have shared ones within quads. Rename the struct ice_ptp_tx
fields to reflect the block entities it works with

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
Changes since v1
* Dropped the ETH56G macro that won't be used until later patches

 drivers/net/ethernet/intel/ice/ice_ptp.c | 26 ++++++++++++------------
 drivers/net/ethernet/intel/ice/ice_ptp.h | 11 +++++-----
 2 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ba2758449183..b3bd73714291 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -648,14 +648,14 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 
 	for_each_set_bit(idx, tx->in_use, tx->len) {
 		struct skb_shared_hwtstamps shhwtstamps = {};
-		u8 phy_idx = idx + tx->quad_offset;
+		u8 phy_idx = idx + tx->offset;
 		u64 raw_tstamp, tstamp;
 		struct sk_buff *skb;
 		int err;
 
 		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
 
-		err = ice_read_phy_tstamp(&pf->hw, tx->quad, phy_idx,
+		err = ice_read_phy_tstamp(&pf->hw, tx->block, phy_idx,
 					  &raw_tstamp);
 		if (err)
 			continue;
@@ -710,7 +710,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
  * @tx: Tx tracking structure to initialize
  *
  * Assumes that the length has already been initialized. Do not call directly,
- * use the ice_ptp_init_tx_e822 or ice_ptp_init_tx_e810 instead.
+ * use the ice_ptp_init_tx_* instead.
  */
 static int
 ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
@@ -744,7 +744,7 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	u8 idx;
 
 	for (idx = 0; idx < tx->len; idx++) {
-		u8 phy_idx = idx + tx->quad_offset;
+		u8 phy_idx = idx + tx->offset;
 
 		spin_lock(&tx->lock);
 		if (tx->tstamps[idx].skb) {
@@ -757,7 +757,7 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 
 		/* Clear any potential residual timestamp in the PHY block */
 		if (!pf->hw.reset_ongoing)
-			ice_clear_phy_tstamp(&pf->hw, tx->quad, phy_idx);
+			ice_clear_phy_tstamp(&pf->hw, tx->block, phy_idx);
 	}
 }
 
@@ -798,9 +798,9 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 static int
 ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 {
-	tx->quad = port / ICE_PORTS_PER_QUAD;
-	tx->quad_offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT;
-	tx->len = INDEX_PER_PORT;
+	tx->block = port / ICE_PORTS_PER_QUAD;
+	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E822;
+	tx->len = INDEX_PER_PORT_E822;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -816,9 +816,9 @@ ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 static int
 ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
-	tx->quad = pf->hw.port_info->lport;
-	tx->quad_offset = 0;
-	tx->len = INDEX_PER_QUAD;
+	tx->block = pf->hw.port_info->lport;
+	tx->offset = 0;
+	tx->len = INDEX_PER_PORT_E810;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -851,7 +851,7 @@ static void ice_ptp_tx_tstamp_cleanup(struct ice_pf *pf, struct ice_ptp_tx *tx)
 			continue;
 
 		/* Read tstamp to be able to use this register again */
-		ice_read_phy_tstamp(hw, tx->quad, idx + tx->quad_offset,
+		ice_read_phy_tstamp(hw, tx->block, idx + tx->offset,
 				    &raw_tstamp);
 
 		spin_lock(&tx->lock);
@@ -2401,7 +2401,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 	if (idx >= tx->len)
 		return -1;
 	else
-		return idx + tx->quad_offset;
+		return idx + tx->offset;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 028349295b71..ca0fbfd71ed2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -108,8 +108,8 @@ struct ice_tx_tstamp {
  * @lock: lock to prevent concurrent write to in_use bitmap
  * @tstamps: array of len to store outstanding requests
  * @in_use: bitmap of len to indicate which slots are in use
- * @quad: which quad the timestamps are captured in
- * @quad_offset: offset into timestamp block of the quad to get the real index
+ * @block: which memory block (quad or port) the timestamps are captured in
+ * @offset: offset into timestamp block to get the real index
  * @len: length of the tstamps and in_use fields.
  * @init: if true, the tracker is initialized;
  * @calibrating: if true, the PHY is calibrating the Tx offset. During this
@@ -119,8 +119,8 @@ struct ice_ptp_tx {
 	spinlock_t lock; /* lock protecting in_use bitmap */
 	struct ice_tx_tstamp *tstamps;
 	unsigned long *in_use;
-	u8 quad;
-	u8 quad_offset;
+	u8 block;
+	u8 offset;
 	u8 len;
 	u8 init;
 	u8 calibrating;
@@ -128,7 +128,8 @@ struct ice_ptp_tx {
 
 /* Quad and port information for initializing timestamp blocks */
 #define INDEX_PER_QUAD			64
-#define INDEX_PER_PORT			(INDEX_PER_QUAD / ICE_PORTS_PER_QUAD)
+#define INDEX_PER_PORT_E822		16
+#define INDEX_PER_PORT_E810		64
 
 /**
  * struct ice_ptp_port - data used to initialize an external port for PTP
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
