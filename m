Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mETeNZk0A2oA1gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFD7522004
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2025640D5E;
	Tue, 12 May 2026 14:09:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J_yAwkjtYGky; Tue, 12 May 2026 14:09:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EC8940DDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778594961;
	bh=SbGXofhvTyiTPYNqh9kaRmUghAu6uqBJd/8mjd9wtic=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8VghpRvXIo6Xr6H/mfCXkDrO1S1yOn7LjXQl7h8V4ee5UBWmqjk2yAoSjZ7U3080f
	 YNcLBCjJ9WcDQNt/Bv8bZ5tFnFdqfEp18Bu2jSnHWA6D4MBBrK11tR0O5iCNhRZCEl
	 0gHtMDZxyZd5laFzVI7F+7AzLFww9ZJO5WG8XYMPlDMbjPdWeR9m/78iI1KIww2i5O
	 jNHxP7qwWZ1R+l0KJ7g+Ish3Kc+drXU88QxhMopt+yLllQ2yNiaiLBWGMF41mZB0xq
	 q8bnhStehqNT1uwakdNPxtpPNNJ0uvR72GWvvhUGlzNKFZBUCZrcnM38z2v7TsFHH5
	 XFOOoMOZwVz9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EC8940DDB;
	Tue, 12 May 2026 14:09:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 902F315F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E38C60DAD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lD0fe88zXuTi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 14:09:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 81F0F60DA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81F0F60DA6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81F0F60DA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:19 +0000 (UTC)
X-CSE-ConnectionGUID: p2Qe5tDST5uvvizoUHLFmw==
X-CSE-MsgGUID: zVa6uD1pTnSgtTCb9rlJHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="96929680"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="96929680"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:09:19 -0700
X-CSE-ConnectionGUID: op5ukAZsQem+bchG3sP8tQ==
X-CSE-MsgGUID: kFNpEySKQO2WW/mgGEvckQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="275892500"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 12 May 2026 07:09:18 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Simon Horman <horms@kernel.org>
Date: Tue, 12 May 2026 16:09:03 +0200
Message-ID: <20260512140904.4105236-8-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
References: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594959; x=1810130959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XhjYF6YgT7wG4QoZpcdRqG5xDSZ6EcbpZMT/yoo8tAs=;
 b=lI/i22KnITg0Z5E3J8Vl4LGYYLAp1ibbHVcroui4li/MxANh2sHkswkR
 jmLbO7FeUxPiJU/VCRoIxx3AzlP4uIViCqAqfweNSDXXl8kMw+gkcjG9D
 LmBcbqEDvWyAVRtvFsEuld2foTXLi1Ym98+WoVMzxO6cc5FSs5FPu0Vsh
 j0Y4rqaOX1kLr0FnlXvDkL8MiTpAJT47eueERk0Lsy9HtfTld70FCqBkH
 IZieBTKgI6ABEAtvRZFIalrfBOowChQv90ALl7vN+pPc3977UsfUB93iV
 WYCrOXoiV07KAO68UFDHCKukNzdqB0Xil5biJtuFh+z6qdq9XBtTyr+kk
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lI/i22Kn
Subject: [Intel-wired-lan] [PATCH iwl-next v2 7/8] ixgbe: limit ITR decrease
 in latency mode to prevent ACK overdrive
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
X-Rspamd-Queue-Id: 5DFD7522004
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: Alexander Duyck <alexander.h.duyck@intel.com>

When operating in latency mode and the computed ITR is lower than the
current setting, the algorithm can reduce the interrupt rate too
aggressively in a single step.  For a TCP workload this means the ACK
stream (a latency-sensitive, low-packet-rate workload) can drive the
moderation down to very high interrupt rates, starving CPU time from
the sender side.

After the speed-based ITR calculation is complete, check whether the
result is in latency mode and would decrease below the current setting.
If so, limit the decrease to at most IXGBE_ITR_ADAPTIVE_MIN_INC (2 us)
per update.  This ensures the number of interrupts grows by no more
than 2x per adjustment step for latency-class workloads, dialling in
smoothly rather than overshooting.

Signed-off-by: Alexander Duyck <alexander.h.duyck@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index aea76b3..ba7b013 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2888,6 +2888,17 @@ static void ixgbe_update_itr(struct ixgbe_q_vector *q_vector,
 		break;
 	}
 
+	/* In the case of a latency specific workload only allow us to
+	 * reduce the ITR by at most 2us. By doing this we should dial
+	 * in so that our number of interrupts is no more than 2x the number
+	 * of packets for the least busy workload. So for example in the case
+	 * of a TCP workload the ACK packets being received would set the
+	 * interrupt rate as they are a latency specific workload.
+	 */
+	if ((itr & IXGBE_ITR_ADAPTIVE_LATENCY) && itr < ring_container->itr)
+		itr = max_t(unsigned int, itr,
+			    ring_container->itr - IXGBE_ITR_ADAPTIVE_MIN_INC);
+
 clear_counts:
 	/* write back value */
 	ring_container->itr = itr;
-- 
2.52.0

