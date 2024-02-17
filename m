Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC7A858C66
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 02:05:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EA3042144;
	Sat, 17 Feb 2024 01:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xweBUpRfDgTZ; Sat, 17 Feb 2024 01:05:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F17141F5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708131933;
	bh=/9sTKSd4eHHg5Te4cmBc94MDttvn1uAdjqC/LLSbe2M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vV37q1wI9r8wPdMIHrl94Zk6A3TEjSpf6Ujb/QTr+JyIU/xvrzYn6UWG3F0VnGjje
	 5Q3zFtZxPM0GBBt3BbDuNwR6ZcLkhkagdVKuVX+o0Hh9Nzl39OluJz6yo5I9taMk08
	 mNstGEA9t8dtY97Ukdz52LKQKt6+GawtLWXev2ZuVjLqf3l0yqwrPOjfAezkOX0See
	 jLRgWmcYxSJyjoq1gMFUc6/t3+zhrapKvNbGm6ASOt+zEvkIihF9aG4PDulw6qvNaz
	 mCCprVaSEM67JorldjfpCe+aGHF4vm1tA68A0jtU6wCcS4KK62MebXlAP7EfyWFkgH
	 EFDf2t7qWXZeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F17141F5D;
	Sat, 17 Feb 2024 01:05:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7ACA91BF263
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 01:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9EB2F41CDD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 01:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1H2F_gdr5QvE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 01:05:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A11BA41CE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A11BA41CE6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A11BA41CE6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 01:05:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="13671709"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="13671709"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 17:05:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="3953427"
Received: from unknown (HELO vcostago-mobl3.lan) ([10.125.18.63])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 17:05:22 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Feb 2024 17:04:53 -0800
Message-ID: <20240217010455.58258-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240217010455.58258-1-vinicius.gomes@intel.com>
References: <20240217010455.58258-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708131929; x=1739667929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ivnHudNctr+yr4ZcagAZOnpK2Hrl418Jm+Umryp/9E8=;
 b=bj/P4p+SKT+NSKNUIL1CbYVpJLDpCIuiK8gbVS8CRKzO5kZV7+0RLvoN
 bYMTvAjWLi63AZgFGkhjKcUnC1+pSlTMdZXDDcL7+A1vLRyBYlw2Wh8AL
 QsVHzKC6PjNV447dO7cMitiav3wU7KyPXr449WN1JvYIh+m4OZRGNewuA
 /eRJFTiN6+8BkfrkIABkel6SiP5BwptF3waeRfj2G6GG1xseBoh+mwvdQ
 hXqi9nvcIczF6X25TsQHVXPHUz0C62B8W4Prjpe0/JkwMT7fmy5KgEGIg
 AVo2yzNGbIyHYPecX3P6gjg5GUAwrOMSycQGgT/GemIiggzEvtB4qZ2uN
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bj/P4p+S
Subject: [Intel-wired-lan] [iwl-net v1 1/2] igc: Fix missing time sync events
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

As both (1) and (3) will clear the interrupt cause, if an interrupt
happens between (1) and (3) it will be ignored, causing events to be
missed.

Remove the extra clear in (3).

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
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

