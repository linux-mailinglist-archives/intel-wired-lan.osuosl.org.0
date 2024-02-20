Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5EB85CC54
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 00:57:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2BFB416DA;
	Tue, 20 Feb 2024 23:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LIUOpgV0hi3v; Tue, 20 Feb 2024 23:57:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2585E41624
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708473447;
	bh=gUIMiEEvUdUwF65RCp1D99AZLQlpHZZc1JgjVvcd/Fc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jzLilTicZHXUvoeFPW2txzdfq/dV3yv5ePHbzZ8YYpNsYhD5NDSCd+/m/q9qNb2WC
	 dejXKXUfphaNElMHUknIjIt1RSKAue64fiFPHRI5ZNWDH+/I4gMcroII52SZK/v1O4
	 m9CVZDkQM/Ep1q9H/ai3iDjmKPVMD3oIaYmIwjQqvmgMbKFZaqqoiBEzsVv0myJ5M+
	 1gvOTNJF/iBV2SslSKE4B4lXqkMPZg+1Fozo12OagCDMGlKRSzOv+b/6F4wNfWIyYr
	 y02cUyBwNIkkuYVv1dj7cm7bVE39PylcAtvghvOXoDkZbdQm0R7+EgVYCIAVdzgZ+E
	 OdcYsOO5oKIUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2585E41624;
	Tue, 20 Feb 2024 23:57:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1ED7F1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15F494043A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wf7FvUMq3Ncq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 23:57:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF63E405E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF63E405E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF63E405E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20041762"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="20041762"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:57:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="5092387"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.83])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:57:19 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 15:57:10 -0800
Message-ID: <20240220235712.241552-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240220235712.241552-1-vinicius.gomes@intel.com>
References: <20240220235712.241552-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708473442; x=1740009442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ndy7ThxenZxil/rvXJUUjRiW8Z85XoIMMBuihvffwjI=;
 b=MLgU1ouvNeUBJ5IAwENziWYKC0xsR1zL5RssoibqQy+r87ce+66Xtx8u
 u+0Su0eTYkhamSxGxZ+1FKI1Yzmdt1T+8pJurgXSLS9PqpChNYO6JR+cZ
 8lG4jhSYwhDhCSKvCLdvNXxHLS8FmsFT8IeOrnfDIUzoa+aK+k8KhXzYK
 fkyFymFZWumAwmwoOCZLfUxE2plVHrCxQQyR7NdbE0pePnBHhAy2WomaM
 BpwEPqQFOzPDN8Ylp1Kd6BbxbK5fJGn96qnIWJo6276G4iP5hH4ZscHlz
 o3yll1PcQ1+vNCgRhOY/Q3ER8T2mjWF7A19M7CDPwd4Og0foGnZs9bly3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MLgU1ouv
Subject: [Intel-wired-lan] [iwl-net v2 1/2] igc: Fix missing time sync events
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
Cc: sasha.neftin@intel.com, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 netdev@vger.kernel.org, richardcochran@gmail.com, kurt@linutronix.de,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix "double" clearing of interrupts, which can cause external events
or timestamps to be missed.

The IGC_TSIRC Time Sync Interrupt Cause register can be cleared in two
ways, by either reading it or by writing '1' into the specific cause
bit. This is documented in section 8.16.1.

The following flow was used:
 1. read IGC_TSIRC into 'tsicr';
 2. handle the interrupts present in 'tsirc' and mark them in 'ack';
 3. write 'ack' into IGC_TSICR;

As both (1) and (3) will clear the interrupt cause, if the same
interrupt happens again between (1) and (3) it will be ignored,
causing events to be missed.

Remove the extra clear in (3).

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
Tested-by: Kurt Kanzenbach <kurt@linutronix.de> # Intel i225
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba8d3fe186ae..39b6a8d64de3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5302,25 +5302,22 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 
 static void igc_tsync_interrupt(struct igc_adapter *adapter)
 {
-	u32 ack, tsauxc, sec, nsec, tsicr;
 	struct igc_hw *hw = &adapter->hw;
+	u32 tsauxc, sec, nsec, tsicr;
 	struct ptp_clock_event event;
 	struct timespec64 ts;
 
 	tsicr = rd32(IGC_TSICR);
-	ack = 0;
 
 	if (tsicr & IGC_TSICR_SYS_WRAP) {
 		event.type = PTP_CLOCK_PPS;
 		if (adapter->ptp_caps.pps)
 			ptp_clock_event(adapter->ptp_clock, &event);
-		ack |= IGC_TSICR_SYS_WRAP;
 	}
 
 	if (tsicr & IGC_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
 		igc_ptp_tx_tstamp_event(adapter);
-		ack |= IGC_TSICR_TXTS;
 	}
 
 	if (tsicr & IGC_TSICR_TT0) {
@@ -5334,7 +5331,6 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
 		wr32(IGC_TSAUXC, tsauxc);
 		adapter->perout[0].start = ts;
 		spin_unlock(&adapter->tmreg_lock);
-		ack |= IGC_TSICR_TT0;
 	}
 
 	if (tsicr & IGC_TSICR_TT1) {
@@ -5348,7 +5344,6 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
 		wr32(IGC_TSAUXC, tsauxc);
 		adapter->perout[1].start = ts;
 		spin_unlock(&adapter->tmreg_lock);
-		ack |= IGC_TSICR_TT1;
 	}
 
 	if (tsicr & IGC_TSICR_AUTT0) {
@@ -5358,7 +5353,6 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
 		event.index = 0;
 		event.timestamp = sec * NSEC_PER_SEC + nsec;
 		ptp_clock_event(adapter->ptp_clock, &event);
-		ack |= IGC_TSICR_AUTT0;
 	}
 
 	if (tsicr & IGC_TSICR_AUTT1) {
@@ -5368,11 +5362,7 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
 		event.index = 1;
 		event.timestamp = sec * NSEC_PER_SEC + nsec;
 		ptp_clock_event(adapter->ptp_clock, &event);
-		ack |= IGC_TSICR_AUTT1;
 	}
-
-	/* acknowledge the interrupts */
-	wr32(IGC_TSICR, ack);
 }
 
 /**
-- 
2.43.2

