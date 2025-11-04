Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1BAC2EB0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 02:07:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6219D81415;
	Tue,  4 Nov 2025 01:07:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nmHFd0q_rPMZ; Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5B408145A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762218443;
	bh=5339y2Tz/0Qx04z9dQLvMIxgu+jPTX5ohF6cpAfi8Rs=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rsz6gnwZsLt7YCBr3VWD3Ah6bcoL5fybzYYRpj7QfwXL/DCw9schiAqE9BmQg4N95
	 WQOlVg6V6APWlpX54IPefn0v2hYraiNndkY7G/gCz8Z3srP7izKaKTzoQgFKSWZUqw
	 qAQBEB8bOPMNaizo+Mlnp3tnuKdVNrVY2E8vwX8KleGsPbNa5CT9oWv7sqeMWp/WE/
	 PGoDKQZH08DQNxuryAJewFnlSZC2BZQU+tSCJIn5KJSYgbitlweAQCxiyb2vuQljl3
	 nXsZ+mlk1A/PhseRz2rHw9DcUKvm03bqcq21/Ezf+zyaveAbiJJwIGy4wT0CFGooKL
	 vNxiR0FrCwR2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5B408145A;
	Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 520FB278
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 531908142A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wFz7BRaLBpYm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 01:07:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8079581447
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8079581447
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8079581447
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:20 +0000 (UTC)
X-CSE-ConnectionGUID: gMN4hoq8QDaq1wztoI76KQ==
X-CSE-MsgGUID: dmnL4mkkTlq48PNp0OFUrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64190635"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64190635"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:18 -0800
X-CSE-ConnectionGUID: cnn9gmiJSvuoSLuzqhNxQQ==
X-CSE-MsgGUID: 5/OyVRGLS/K6CDVehvXkDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217828759"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:15 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 03 Nov 2025 17:06:48 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-jk-refactor-queue-stats-v1-3-164d2ed859b6@intel.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=6517;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=T8jfNkDb/siIQTO+2ZUVj1tFtHnX+vuQDLROZgcRr2M=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzOwAM6a7W+XThUKW2qJv3t3NFXvYxr/Ep8g3f9j82SK
 nry9UVKRykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABOpYmRkeF9ymfPq3bTyrznu
 WRG1uh4v5sqbzFTY0FsfxH/YVWTiDIZ/CoWPK7Md71Re6DkXG/bU6D5ft5ZHWeuXOa0Wf4MW1n3
 iAwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762218440; x=1793754440;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=T8jfNkDb/siIQTO+2ZUVj1tFtHnX+vuQDLROZgcRr2M=;
 b=EM3lHcX9lJAU+Ge1A1ixvgwJF0THtmC6mUB4CPSkNRu8FoGphF4RiRko
 TLDGF5N4VPrROECKRb+BPNBRPyY3uBHfbSsUZ585KUd4zACwgHh09pAB0
 QQA+oPJhOfYK4R0Rh9VyRAa04aYQ8AztNTQw/csvx0KhsNbBoDTGa1Tfi
 IPSXBLag3o7zXqRmoUGZsqFWwopdsYVqVzKXYiVLrwmF1Hucepi8Ew6GS
 6L6tcIw4KvFlTR4YfNx9FB3Blk/tUUx8t6ADs3OBBGjVRd4WmEWk+aKYZ
 bxzJDaTu9fH+3VLaPwdlGPAJOmMyTEeTjch8vTwAqWlWMRZQH0a8FntIh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EM3lHcX9
Subject: [Intel-wired-lan] [PATCH iwl-next 3/9] ice: use cacheline groups
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
Tx/Rx separate structs").o

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
we enforce that tx_lock is in this cacheline group, and check the size
based on whether or not the CONFIG_DEBUG_LOCK_ALLOC is enabled. Similar to
the Rx annotations, these check that the size of each cacheline group
(excluding padding) is no greater than 64 bytes. This is primarily intended
to produce compiler failures if developers add or re-arrange fields such
that cacheline groups exceed the expected 64 byte sizes on x86_64 systems.
Because the assertions check the size excluding any padding, they should
behave the same even on systems with larger L1 cacheline sizes.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h | 32 +++++++++++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c |  1 +
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 6c708caf3a91..5350eb832ee5 100644
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
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_tx_ring, cl1, 64);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_tx_ring, cl2, 64);
+
+	CACHELINE_ASSERT_GROUP_MEMBER(struct ice_tx_ring, cl3, tx_lock);
+#ifdef CONFIG_DEBUG_LOCK_ALLOC
+	/* spinlock_t is larger on DEBUG_LOCK_ALLOC kernels */
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_tx_ring, cl3, 128);
+#else
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_tx_ring, cl3, 64);
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

