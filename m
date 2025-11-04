Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8869C2EB06
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 02:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E21F60B9F;
	Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IEidbvDsnYCi; Tue,  4 Nov 2025 01:07:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A77D60BA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762218442;
	bh=YwxG65vl5Rsqdk8yD2CV0AfdNoqULpn8JB58+QT9C2Y=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4oTPxThZcxvKZ2mpD8Ozl/YXkzukyWfYxk+mwT0+wtP8mf7SvYE6mq3aYxtDcmENq
	 FlwKsRiwwYdvnmoZh65QFKYQcfll5hhjU2ZXXAayw0iwg0S484JqmSr9T9mL2YnUyW
	 L6eiBu4sTKUZH+KAQeWloV6OGRrMYmF9cqJgOq4L/CNAC/rRK83rbnzX1eHaq1+oAd
	 9D4N0+62nXm6g2ZiMuVsW3T1UOfaVqyax5dxrBooC2vsGpVBSL+BMhwfXtNbr8Yxak
	 eZuE4/0Jw6dzZp5gHoMcFLFZinZU8f4dAuIVx0kY/pPRMQaRNOqzVZvHOGx+JMXlzG
	 F7ZoFkQCZSAhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A77D60BA1;
	Tue,  4 Nov 2025 01:07:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 22848222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F2828142A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bc6zn8rwQbqm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 01:07:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2634F81404
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2634F81404
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2634F81404
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:19 +0000 (UTC)
X-CSE-ConnectionGUID: vrBiAwPFTrmrT1A83Ttl9w==
X-CSE-MsgGUID: 1dOgoz8qS7290rxYHCLWQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64190634"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64190634"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:18 -0800
X-CSE-ConnectionGUID: GXMhBiUnToy8XeyMgMBssQ==
X-CSE-MsgGUID: J9Eq+1uwQ8OAuM2MpeaIlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217828756"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:15 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 03 Nov 2025 17:06:47 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-jk-refactor-queue-stats-v1-2-164d2ed859b6@intel.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=6485;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=vYXOfblKU6E/r5YF7kyNk+CDg83/W3BJmW47Puu9Y1c=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzOwAPd6p0eJbp2/63FnPalH0zb4rF8yWd2/aZHrD3HO
 KZKTZLuKGVhEONikBVTZFFwCFl53XhCmNYbZzmYOaxMIEMYuDgFYCL3zjAyvHRwz3HumLnzWXRf
 2PZDlgIqyYvVDsorcfDNLr4hYrP3OyNDq9LFmS46tQ8figseLLkzZWvHykWMxokHpt7aaH0lpCe
 DEQA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762218440; x=1793754440;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=vYXOfblKU6E/r5YF7kyNk+CDg83/W3BJmW47Puu9Y1c=;
 b=he3wIg0CiYq4BtWNm2PqW12zdbivp7yGJWWEvBt75yYDb/2esLd2pTUe
 rNNGZ1ss2V0NBIP3oskd3R0ucs2LFWesi0+OmmkPO5HMWo5S0nZ1oqi1l
 HG3gyUsEbvt/FsKlRRHscZl6CHb8ZB/a2xRRdn0iw+v+D03DPG7A3LOpK
 rOZAO+DEb7dRB7JD/3UIdgkm44P6S04olKneKw9BBHgrUxgx4FTmrzQAG
 BYGmnPZip7HlycYltdXUDNT7v5dZHU4sIf+Z6LlrOgsgXkQjOsO07jqAV
 cJ6l2oc7cL2qWoUBhcj4J4w2PgCtTuj+0sc5FlqrRzvdsIbAEyYcsE7Nj
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=he3wIg0C
Subject: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: use cacheline groups
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
assertions that check the size of each group to ensure it doesn't exceed 64
bytes, the expected cache line size. The assertion checks that the size of
the group excluding any padding at the end is less than the provided size
of 64 bytes. This type of check will behave the same even on architectures
with larger cache sizes. The primary aim is to produce a warning if
developers add fields into a cacheline group which exceeds the size of the
expected 64 byte groupings.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h | 26 +++++++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_main.c |  2 ++
 2 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index e440c55d9e9f..6c708caf3a91 100644
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
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl1, 64);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl2, 64);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl3, 64);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl4, 64);
+	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl5, 64);
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

