Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDTMFKag32kEWwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 16:28:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6EE405463
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 16:28:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FB3B4B53E;
	Wed, 15 Apr 2026 14:28:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GgoiTNEHn8ma; Wed, 15 Apr 2026 14:28:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E02834B2D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776263330;
	bh=OcZDITMIuszZw8Rk9/XENma4MVinhqEcJqCy5y9ZdC0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eEddseY7Yj83BxrkpoYjoH6/DoqWZ5t4Q/Nli4zYwUHLTKG4vJpDF6ibE3ZByow9+
	 p5WvqvFkXJhWX8E6XUYiroRJlCo7Pve0Q2loUMCtDqGZHmAB/qHFoqnQQs2Snlbznn
	 KsEa7UI41+v3x0ssWfwuRmLlJVUA15OacDNbaE6SQe3N0wJz68v0ReMPUjHg4PeZkR
	 vI/vOXLsU/ohc5jvFwW5Qm+1YQE/8tDB2/wX/q4yEmxNpwQSeDD0VIBDZtGEKme9ve
	 KveXHHJVa6SnRC9l2Xo4YHfN8EOsh/YJWvpij9n+nho6Q6wqNcKfiAyE5zhY98bGSM
	 hu3ngSRjVj+Og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E02834B2D7;
	Wed, 15 Apr 2026 14:28:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D2217283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7C2D4AF73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gr95nognu6PK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 14:28:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B95C54B08F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B95C54B08F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B95C54B08F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:45 +0000 (UTC)
X-CSE-ConnectionGUID: 7K5yiF+VSfKyilbjddlI7w==
X-CSE-MsgGUID: 1iRrIEQjRnK8/WuKtoMecQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77423729"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77423729"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 07:28:45 -0700
X-CSE-ConnectionGUID: p8WwbvmeQryNK1OaKDX03Q==
X-CSE-MsgGUID: LFzYkiuVSZuRDUCnJd0bmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="234467829"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa003.jf.intel.com with ESMTP; 15 Apr 2026 07:28:43 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 15 Apr 2026 16:28:36 +0200
Message-ID: <20260415142841.3222399-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
References: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776263325; x=1807799325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GUF4ORCJjHX1uOeyka72W243jz1bbjHEIX86BDqtL08=;
 b=nDdDUI5kNjOW8zdwoPmL/eBlW6q3GxuvnhVudc1gJB9uOgMK0d/qVHcW
 DiJtK/eVvxGf590rUHu3JZgTNJQvOrxObU/IrEXQhlc+ji744cYdT2Ngs
 76E6QVcIacXxURkKvcd3/cIDzMOBYP+mHSZXXL0ctoLF5YECxNcmc7iOs
 MgSfZCk0oaRrSudxM6cgY7hOVD06Rhcg8QBPI8pVkckQbr6iEFgdQ9mIM
 Wbi99VnfUTxlmnsYRG9ZCUGl+0AG8NF0lVyMLezE6BEx9as2V6XeasU0M
 FQJcCxkuoEl2i05T4CFKD7DE0fXp08V9p9L8Sa1hgjhS2npQf6FnFdxfG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nDdDUI5k
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/6] ixgbe: fix SWFW semaphore
 timeout for X550 family
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AA6EE405463
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

According to FW documentation, the most time-consuming FW operation is
Shadow RAM (SR) dump which takes up to 3.2 seconds.  For X550 family
devices the module-update FW command can take over 4.5 s.  The default
semaphore loop runs 200 iterations with a 5 ms sleep each, giving a
maximum wait of 1 s -- not "200 ms" as previously stated in error.
This is insufficient for X550 family FW update operations and causes
spurious EBUSY failures.

Extend the SW/FW semaphore timeout from 1 s to 5 s (1000 iterations x
5 ms) for all three X550 variants: ixgbe_mac_X550, ixgbe_mac_X550EM_x,
and ixgbe_mac_x550em_a.  All three share the same FW and exhibit the
same worst-case latency.  Use three explicit mac.type comparisons rather
than a range check so future MAC additions are not inadvertently
captured.

The timeout variable is set immediately before the loop so the intent
is clear, with an inline comment stating the resulting maximum delay.

Fixes: 030eaece2d77 ("ixgbe: Add x550 SW/FW semaphore support")
Suggested-by: Soumen Karmakar <soumen.karmakar@intel.com>
Suggested-by: Marta Plantykow <marta.a.plantykow@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
v2 -> v3:
 - Add Reviewed-by: Simon Horman, Reviewed-by: Jacob Keller; no code
   change (Jacob suggested read_poll_timeout() but accepted as-is).

v1 -> v2:
 - Squash with 0015 (X550EM extension); fix commit message ("200ms" was
   wrong, actual default is 1 s); replace >= / <= range check with three
   explicit mac.type == comparisons per Tony Nguyen.

 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index e67e2fe..a3c8f51 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -577,6 +577,15 @@ int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
 
 	swmask |= swi2c_mask;
 	fwmask |= swi2c_mask << 2;
+	/* Extend to 5 s (1000 x 5 ms) for X550 family; default is 1 s
+	 * (200 x 5 ms).  FW SR-dump takes up to 3.2 s; module-update up
+	 * to 4.5 s.
+	 */
+	if (hw->mac.type == ixgbe_mac_X550 ||
+	    hw->mac.type == ixgbe_mac_X550EM_x ||
+	    hw->mac.type == ixgbe_mac_x550em_a)
+		timeout = 1000;
+
 	for (i = 0; i < timeout; i++) {
 		/* SW NVM semaphore bit is used for access to all
 		 * SW_FW_SYNC bits (not just NVM)
-- 
2.52.0
