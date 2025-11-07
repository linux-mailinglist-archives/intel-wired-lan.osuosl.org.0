Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59487C41F53
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 00:32:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DDE7606E5;
	Fri,  7 Nov 2025 23:32:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3QFXJcYF8u6X; Fri,  7 Nov 2025 23:32:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99643606E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762558348;
	bh=Cl0T6Rru8/Vdx/JEAV/j95wnfvSXDFejFkyIpCTQHPo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L/XjMJ03DDKQP8KS2G8Ljd6Q7JL3yLwOQt2DqYycCTBhd1hLKLIQG6+SCXz+9o/UP
	 9MjW5jTu8ovNYYmaHn1v8ntQOEj/dWV6e6FVMLt2LTtXq9++ZJxa5gVY294yGqIDOj
	 r3DkYFutbwB4IRQjtWCw5tRxWuXsGVvq5Ly3w7eL+hnFyHEr1n3w1UgMj8awXIUvWh
	 VbaB50CAlkoxuRaVDjHSkGMwVxpoIOF3XIH7cJ55bEoT19cQWKRN5noxLUHodm+auh
	 7Kv8w9u4H9iRIHM8a3G9LPOjRoELhhFhy1Pts4hO4taeJxusQti2e/YKpi6ixWRYR4
	 i16Ya6+i+SRrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99643606E3;
	Fri,  7 Nov 2025 23:32:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C3B9125D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF6C340146
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3EHdqGQcq5Hx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 759754007C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 759754007C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 759754007C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
X-CSE-ConnectionGUID: vH806jaLSeq8bHotS0J++A==
X-CSE-MsgGUID: cuD3d3oBTK+f5cE/NzdTMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64628778"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="64628778"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:19 -0800
X-CSE-ConnectionGUID: CWM0aMPpQCmdks2LzyfJOg==
X-CSE-MsgGUID: 3JJ/wRi0TzKbOuvc5p/EWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218815419"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:20 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 07 Nov 2025 15:31:46 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-jk-refactor-queue-stats-v3-2-771ae1414b2e@intel.com>
References: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
In-Reply-To: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=6389;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=A3cflmH1RbhN1nl/QQDNHQ8m7gWHC/i6lO1cSETg5nM=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhky+xoajmcEuO34XfajexFp6Z8r5CdxF9wx5Qm5d3Ch49
 OS0hYslOkpZGMS4GGTFFFkUHEJWXjeeEKb1xlkOZg4rE8gQBi5OAZjIrhJGhonfBS4zFDK4K61q
 qfqtUPA6+nJUz0ILOVUrqVMsqc96JjMynPtTMC0+PEX8ed/zdeWVE9rtDXOFL5gb2X+do3u2Ybk
 eMwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762558342; x=1794094342;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=A3cflmH1RbhN1nl/QQDNHQ8m7gWHC/i6lO1cSETg5nM=;
 b=SFl+59wI7Q0ACRZT06VV7RWDsO9F8R3coRHyMmWcNbp5N8lBrPhROGmq
 b9DX8KXi59G/HbwNLwRaS7J3Ev/gpEu1f3CI4n2EQPHpM2nuXj8rV/xJr
 pUXvzESB8dyWluY4Snm+waI0zUhTER1xlGc5JOqmy3QlNQOBNHkdwhC9F
 Td0OGymMCqdSRLAFC7dPr/YFn/CErVLgmbbTWJhVRRLArboGv9q1eldfS
 HBWcJSnd2LVNzppNFMjsaPdu0W2qF855l4HdQ8ong2mmOUHMFgKFfg42J
 3A/kt6VPzo0oIcKczKz/MHeVq2kYzJPb+j31mP/mFtkecy3x6yOXd2Boa
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SFl+59wI
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/9] ice: use cacheline groups
 for ice_rx_ring structure
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

The ice ring structure was reorganized back by commit 65124bbf980c ("ice:
Reorganize tx_buf and ring structs"), and later split into a separate
ice_rx_ring structure by commit e72bba21355d ("ice: split ice_ring onto
Tx/Rx separate structs")

The ice_rx_ring structure has comments left over from this prior
reorganization indicating which fields belong to which cachelines.
Unfortunately, these comments are not all accurate. The intended layout is
for x86_64 systems with a 64-byte cache.

 * Cacheline 1 spans from the start of the struct to the end of the rx_fqes
   and xdp_buf union. The comments correctly match this.

 * Cacheline 2 spans from hdr_fqes to the end of hdr_truesize, but the
   comment indicates it should end xdp and xsk union.

 * Cacheline 3 spans from the truesize field to the xsk_pool, but the
   comment wants this to be from the pkt_ctx down to the rcu head field.

 * Cacheline 4 spans from the rx_hdr_len down to the flags field, but the
   comment indicates that it starts back at the ice_channel structure
   pointer.

 * Cacheline 5 is indicated to cover the xdp_rxq. Because this field is
   aligned to 64 bytes, this is actually true. However, there is a large 45
   byte gap at the end of cacheline 4.

The use of comments to indicate cachelines is poor design. In practice,
comments like this quickly become outdated as developers add or remove
fields, or as other sub-structures change layout and size unexpectedly.

The ice_rx_ring structure *is* 5 cachelines (320 bytes), but ends up having
quite a lot of empty space at the end just before xdp_rxq.

Replace the comments with __cacheline_group_(begin|end)_aligned()
annotations. These macros enforce alignment to the start of cachelines, and
enforce padding between groups, thus guaranteeing that a following group
cannot be part of the same cacheline.

Doing this changes the layout by effectively spreading the padding at the
tail of cacheline 4 between groups to ensure that the relevant fields are
kept as separate cachelines on x86_64 systems. For systems with the
expected cache line size of 64 bytes, the structure size does not change.
For systems with a larger SMB_CACHE_BYTES size, the structure *will*
increase in size a fair bit, however we'll now guarantee that each group is
in a separate cacheline. This has an advantage that updates to fields in
one group won't trigger cacheline eviction of the other groups. This comes
at the expense of extra memory footprint for the rings.

If fields get re-arranged, added, or removed, the alignment and padding
ensure the relevant fields are kept on separate cache lines. This could
result in unexpected changes in the structure size due to padding to keep
cachelines separate.

To catch such changes during early development, add build time compiler
assertions that check the size of each group to ensure it doesn't exceed
the size of one cache line. This will produce a compile failure in the
event that new fields get added or re-arranged such that any of the cache
groups exceed one cacheline.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h | 26 +++++++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_main.c |  2 ++
 2 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index e440c55d9e9f..8b9247535fcb 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -236,7 +236,7 @@ struct ice_tstamp_ring {
 } ____cacheline_internodealigned_in_smp;
 
 struct ice_rx_ring {
-	/* CL1 - 1st cacheline starts here */
+	__cacheline_group_begin_aligned(cl1);
 	void *desc;			/* Descriptor ring memory */
 	struct page_pool *pp;
 	struct net_device *netdev;	/* netdev ring maps to */
@@ -253,8 +253,9 @@ struct ice_rx_ring {
 		struct libeth_fqe *rx_fqes;
 		struct xdp_buff **xdp_buf;
 	};
+	__cacheline_group_end_aligned(cl1);
 
-	/* CL2 - 2nd cacheline starts here */
+	__cacheline_group_begin_aligned(cl2);
 	struct libeth_fqe *hdr_fqes;
 	struct page_pool *hdr_pp;
 
@@ -262,8 +263,9 @@ struct ice_rx_ring {
 		struct libeth_xdp_buff_stash xdp;
 		struct libeth_xdp_buff *xsk;
 	};
+	__cacheline_group_end_aligned(cl2);
 
-	/* CL3 - 3rd cacheline starts here */
+	__cacheline_group_begin_aligned(cl3);
 	union {
 		struct ice_pkt_ctx pkt_ctx;
 		struct {
@@ -284,7 +286,9 @@ struct ice_rx_ring {
 	struct ice_ring_stats *ring_stats;
 
 	struct rcu_head rcu;		/* to avoid race on free */
-	/* CL4 - 4th cacheline starts here */
+	__cacheline_group_end_aligned(cl3);
+
+	__cacheline_group_begin_aligned(cl4);
 	struct ice_channel *ch;
 	struct ice_tx_ring *xdp_ring;
 	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
@@ -298,10 +302,22 @@ struct ice_rx_ring {
 #define ICE_RX_FLAGS_MULTIDEV		BIT(3)
 #define ICE_RX_FLAGS_RING_GCS		BIT(4)
 	u8 flags;
-	/* CL5 - 5th cacheline starts here */
+	__cacheline_group_end_aligned(cl4);
+
+	__cacheline_group_begin_aligned(cl5);
 	struct xdp_rxq_info xdp_rxq;
+	__cacheline_group_end_aligned(cl5);
 } ____cacheline_internodealigned_in_smp;
 
+static inline void ice_rx_ring_struct_check(void)
+{
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl1, SMP_CACHE_BYTES);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl2, SMP_CACHE_BYTES);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl3, SMP_CACHE_BYTES);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl4, SMP_CACHE_BYTES);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl5, SMP_CACHE_BYTES);
+}
+
 struct ice_tx_ring {
 	/* CL1 - 1st cacheline starts here */
 	struct ice_tx_ring *next;	/* pointer to next ring in q_vector */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b16ede1f139d..4731dbaca9de 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5916,6 +5916,8 @@ static int __init ice_module_init(void)
 {
 	int status = -ENOMEM;
 
+	ice_rx_ring_struct_check();
+
 	pr_info("%s\n", ice_driver_string);
 	pr_info("%s\n", ice_copyright);
 

-- 
2.51.0.rc1.197.g6d975e95c9d7

