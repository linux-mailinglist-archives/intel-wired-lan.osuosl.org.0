Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 511B3C41F5C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 00:32:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1519F80ECB;
	Fri,  7 Nov 2025 23:32:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lnw4zlIrs759; Fri,  7 Nov 2025 23:32:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47AD980EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762558349;
	bh=HwTQ4qAEX8fvF/eICOMLiDvDz8KYEnCOIUDxF9EjxZs=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jKT8BXykasLDXZPSMZ6KtxTV/mJthQfr3PgOgaogV2P4fYJ8dOIxgyJQkvTaLh89U
	 mkYpBiNOn5AXEf6Hinjdwc6LYaZ9zUFfo0JCBcipXOsdGjKTj4FfjANX7GFzEHjHEI
	 k3efjl3QHIpsdj6Qw68bQ5gOeHx/NglzD3YqzTvnz0Y391vVSxOQMLObgUy44EaxqU
	 17MVJmuwnXWgSVe6VpXf5a85VNJi0rjJ1r+K2JRUubZ89vfS+/Io5Njcql4rtopJ+I
	 CumbyNk1iHWBFbuOeW7RkKRgTFd+z66z8BTjP1UcvKFial4P/LyeXGDHxUZrelh1eZ
	 +dVAd12tyDuLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47AD980EAE;
	Fri,  7 Nov 2025 23:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 071C025D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB65080EB0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kyNtVLvjQNmv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7C36C80EB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C36C80EB1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C36C80EB1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
X-CSE-ConnectionGUID: 4PKbCfmiTgeXFNSeTSmJJA==
X-CSE-MsgGUID: Eo2Qk6YxRmKoeXLk5gK5+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64628779"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="64628779"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:19 -0800
X-CSE-ConnectionGUID: WM0s870YRjO6JbW8+KQknA==
X-CSE-MsgGUID: 6hAAyEEJQoKl1yXkpmqFGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218815422"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:20 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 07 Nov 2025 15:31:47 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-jk-refactor-queue-stats-v3-3-771ae1414b2e@intel.com>
References: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
In-Reply-To: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=6236;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=EQAahnXoyrp7krmViaFOhEY1ysqkWVOk6YWWnIx3TLU=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhky+xsaNWvlcfOxztRfmKcj7dPS0WZoLsBrLVhkbyL1xc
 ri77HtHKQuDGBeDrJgii4JDyMrrxhPCtN44y8HMYWUCGcLAxSkAE9F4wPBXqslH7sOPdQdnLnQN
 5Q/wT7dbrjtxnlswT+K2rpnVN10uMzLsPxrd3sLd9cN26lX9t84+KTf2FrnozJSoqSk+flLyljk
 PAA==
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762558342; x=1794094342;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=EQAahnXoyrp7krmViaFOhEY1ysqkWVOk6YWWnIx3TLU=;
 b=OwIOqEWGkTlpBV+KYbFahyEUOf0GcL15LSVGghZtQ/r0WuCYyLgBpZzJ
 BJyscAzyYSfQgGfKcqWjdCRz48O0GZA/UM4VVdQpfUBcHxPGxfizuBVah
 Ehmcjccx+hUkjlpEmZRFJbf4SyMs/qi0Ws4cWhBc2lBt/uiEMer5y9Pos
 nrdoTtvOt25LD41QV5mRn0tAfmyQR15VOvn4Mto0EzOI5gPiEQG3sZn8Y
 bYASgvT8/yjvi2soT8/SJ/nrLXXDO16aBfvrjsmZF2Mkrb9lvg7OiIqLQ
 nnmBlzyRA2bpAnGm8+F2eWf5HwDi+guTtRuzzFdRrLQspmBYkLZ4ypvXq
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OwIOqEWG
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/9] ice: use cacheline groups
 for ice_tx_ring structure
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice ring structure was reorganized by commit 65124bbf980c ("ice:
Reorganize tx_buf and ring structs"), and later split into a separate
ice_tx_ring structure by commit e72bba21355d ("ice: split ice_ring onto
Tx/Rx separate structs").

The ice_tx_ring structure has comments left over from this reorganization
and split indicating which fields are supposed to belong to which
cachelines. Unfortunately, these comments are almost completely incorrect.

 * Cacheline 1 spans from the start of the structure to the vsi pointer.
   This cacheline is correct, and appears to be the only one that is.

 * Cacheline 2 spans from the DMA address down to the xps_state field. The
   comments indicate it should end at the rcu head field.

 * Cacheline 3 spans from the ice_channel pointer to the end of the struct,
   and completely contains what is marked as a separate 4th cacheline.

The use of such comments to indicate cache lines is error prone. It is
extremely likely that the comments will become out of date with future
refactors. Instead, use __cacheline_group_(begin|end)_aligned() which is
more explicit. It guarantees that members between the cacheline groups will
be in distinct cache lines through the use of padding. It additionally
enables compile time assertions to help prevent new fields from drastically
re-arranging the cache lines.

There are two main issues if we just replace the existing comments with
cache line group markers. First, the spinlock_t tx_lock field is 24 bytes
on most kernels, but is 64 bytes on CONFIG_DEBUG_LOCK_ALLOC kernels.
Ideally we want to place this field at the start of a cacheline so that
other fields in the group don't get split across such a debug kernel. While
optimizing such a debug kernel is not a priority, doing this makes the
assertions around the cacheline a bit easier to understand.

Remove the out-of-date cacheline comments, and add __cacheline_group
annotations. These are set to match the existing layout instead of matching
the original comments. The only change to layout is to re-order the tx_lock
to be the start of cacheline 3, and move txq_teid to avoid a 4-byte gap in
the layout.

Ideally, we should profile the Tx hot path and figure out which fields go
together and re-arrange the cacheline groups, possibly along "read_mostly",
"readwrite" and "cold" groupings similar to the idpf driver. This has been
left as an exercise for a later improvement.

Finally, add annotations which check the cacheline sizes. For cacheline 3,
we enforce that tx_lock is in this cacheline group, and only check the size
if CONFIG_DEBUG_LOCK_ALLOC is disabled. These are primarily intended to
produce a compiler failure if developers add or re-arrange fields in a way
that accidentally causes a group to exceed one cacheline.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h | 32 +++++++++++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c |  1 +
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 8b9247535fcb..78fed538ea0f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -319,7 +319,7 @@ static inline void ice_rx_ring_struct_check(void)
 }
 
 struct ice_tx_ring {
-	/* CL1 - 1st cacheline starts here */
+	__cacheline_group_begin_aligned(cl1);
 	struct ice_tx_ring *next;	/* pointer to next ring in q_vector */
 	void *desc;			/* Descriptor ring memory */
 	struct device *dev;		/* Used for DMA mapping */
@@ -328,7 +328,9 @@ struct ice_tx_ring {
 	struct ice_q_vector *q_vector;	/* Backreference to associated vector */
 	struct net_device *netdev;	/* netdev ring maps to */
 	struct ice_vsi *vsi;		/* Backreference to associated VSI */
-	/* CL2 - 2nd cacheline starts here */
+	__cacheline_group_end_aligned(cl1);
+
+	__cacheline_group_begin_aligned(cl2);
 	dma_addr_t dma;			/* physical address of ring */
 	struct xsk_buff_pool *xsk_pool;
 	u16 next_to_use;
@@ -340,15 +342,18 @@ struct ice_tx_ring {
 	u16 xdp_tx_active;
 	/* stats structs */
 	struct ice_ring_stats *ring_stats;
-	/* CL3 - 3rd cacheline starts here */
 	struct rcu_head rcu;		/* to avoid race on free */
 	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State */
+	__cacheline_group_end_aligned(cl2);
+
+	__cacheline_group_begin_aligned(cl3);
+	spinlock_t tx_lock;
 	struct ice_channel *ch;
 	struct ice_ptp_tx *tx_tstamps;
-	spinlock_t tx_lock;
-	u32 txq_teid;			/* Added Tx queue TEID */
-	/* CL4 - 4th cacheline starts here */
 	struct ice_tstamp_ring *tstamp_ring;
+
+	u32 txq_teid;			/* Added Tx queue TEID */
+
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
@@ -356,8 +361,23 @@ struct ice_tx_ring {
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
 	u16 quanta_prof_id;
+	__cacheline_group_end_aligned(cl3);
 } ____cacheline_internodealigned_in_smp;
 
+static inline void ice_tx_ring_struct_check(void)
+{
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_tx_ring, cl1, SMP_CACHE_BYTES);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_tx_ring, cl2, SMP_CACHE_BYTES);
+
+	CACHELINE_ASSERT_GROUP_MEMBER(struct ice_tx_ring, cl3, tx_lock);
+#ifndef CONFIG_DEBUG_LOCK_ALLOC
+	/* spinlock_t is larger on DEBUG_LOCK_ALLOC kernels, so do not check
+	 * the size in that case.
+	 */
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_tx_ring, cl3, SMP_CACHE_BYTES);
+#endif
+}
+
 static inline bool ice_ring_ch_enabled(struct ice_tx_ring *ring)
 {
 	return !!ring->ch;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4731dbaca9de..645a2113e8aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5917,6 +5917,7 @@ static int __init ice_module_init(void)
 	int status = -ENOMEM;
 
 	ice_rx_ring_struct_check();
+	ice_tx_ring_struct_check();
 
 	pr_info("%s\n", ice_driver_string);
 	pr_info("%s\n", ice_copyright);

-- 
2.51.0.rc1.197.g6d975e95c9d7

