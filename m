Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DC01C9FBF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 02:43:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C34F87287;
	Fri,  8 May 2020 00:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b_fQnVl1tF9Z; Fri,  8 May 2020 00:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13B5E87A69;
	Fri,  8 May 2020 00:43:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98A9A1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8C41220434
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zrD8leNTRo2N for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 00:43:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CE8820455
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:35 +0000 (UTC)
IronPort-SDR: ujI1PUhqWaNS7mcYzqlbHk0psE3XGBcl3gNXb5CABvsuJHHJTUwtECr22+ETKJy9ylDd22YEkF
 uDvHJnkwHelQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 17:43:34 -0700
IronPort-SDR: CzYUDgr48fd1q1lHeF8iwkZ1/pP5aJYQFrzMnuyg6SML6AmfaQI/gp1sgZyP5pLrOPE9cbVzRT
 TcqRFMJ0xrMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="249468780"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2020 17:43:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 17:41:13 -0700
Message-Id: <20200508004113.39725-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S41 15/15] ice: Rename build_ctob to
 ice_build_ctob
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

To make the function easier to identify as being part of the ice driver,
prepend ice to the function name.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 11 ++++++-----
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  4 ++--
 4 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index fb4e4c529e2d..e3b72368af3c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1664,7 +1664,8 @@ ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
 		 */
 		while (unlikely(size > ICE_MAX_DATA_PER_TXD)) {
 			tx_desc->cmd_type_offset_bsz =
-				build_ctob(td_cmd, td_offset, max_data, td_tag);
+				ice_build_ctob(td_cmd, td_offset, max_data,
+					       td_tag);
 
 			tx_desc++;
 			i++;
@@ -1684,8 +1685,8 @@ ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
 		if (likely(!data_len))
 			break;
 
-		tx_desc->cmd_type_offset_bsz = build_ctob(td_cmd, td_offset,
-							  size, td_tag);
+		tx_desc->cmd_type_offset_bsz = ice_build_ctob(td_cmd, td_offset,
+							      size, td_tag);
 
 		tx_desc++;
 		i++;
@@ -1716,8 +1717,8 @@ ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
 
 	/* write last descriptor with RS and EOP bits */
 	td_cmd |= (u64)ICE_TXD_LAST_DESC_CMD;
-	tx_desc->cmd_type_offset_bsz = build_ctob(td_cmd, td_offset, size,
-						  td_tag);
+	tx_desc->cmd_type_offset_bsz =
+			ice_build_ctob(td_cmd, td_offset, size, td_tag);
 
 	/* Force memory writes to complete before letting h/w know there
 	 * are new descriptors to fetch.
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 9d6512f96b8c..1ba97172d8d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -232,8 +232,8 @@ int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring)
 
 	tx_desc = ICE_TX_DESC(xdp_ring, i);
 	tx_desc->buf_addr = cpu_to_le64(dma);
-	tx_desc->cmd_type_offset_bsz = build_ctob(ICE_TXD_LAST_DESC_CMD, 0,
-						  size, 0);
+	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TXD_LAST_DESC_CMD, 0,
+						      size, 0);
 
 	/* Make certain all of the status bits have been updated
 	 * before next_to_watch is written.
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index af0fca5b91ff..58ff58f0f972 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -22,7 +22,7 @@ ice_test_staterr(union ice_32b_rx_flex_desc *rx_desc, const u16 stat_err_bits)
 }
 
 static inline __le64
-build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
+ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
 {
 	return cpu_to_le64(ICE_TX_DESC_DTYPE_DATA |
 			   (td_cmd    << ICE_TXD_QW1_CMD_S) |
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 8279db15e870..1e9cc550ec98 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -986,8 +986,8 @@ static bool ice_xmit_zc(struct ice_ring *xdp_ring, int budget)
 
 		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_to_use);
 		tx_desc->buf_addr = cpu_to_le64(dma);
-		tx_desc->cmd_type_offset_bsz = build_ctob(ICE_TXD_LAST_DESC_CMD,
-							  0, desc.len, 0);
+		tx_desc->cmd_type_offset_bsz =
+			ice_build_ctob(ICE_TXD_LAST_DESC_CMD, 0, desc.len, 0);
 
 		xdp_ring->next_to_use++;
 		if (xdp_ring->next_to_use == xdp_ring->count)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
