Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6D794D961
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2024 02:23:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15408844E6;
	Sat, 10 Aug 2024 00:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UcCeV0GSAL6d; Sat, 10 Aug 2024 00:23:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADDB5844E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723249416;
	bh=X4qDUm6gctA4GeV+CLbS3ee9Fqia56hrry1mgRsqNUg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MrGdHraTRVEqFFcsdm0ZZWEwspoNYcnZOnFZ6eOC1D+pMS23LveYqHY4ShX6zqgrV
	 Ir6abvyqP+/yDnqtCeqLnamRQlL3y+DAXfGLRyo5m4EAR95Vztcu+G3xN2ld73RXoe
	 ZFzYzn5tyGcayXQzsZAsqdelcFZGkNngrHcVMcjPvHHapG8P3NnGD6WlkUML66M3OT
	 92mMPkIdvFP7y115S7eGmlYVNzA4K9em8N/z20I10kDoKTan1wH+qNk+4cpaLrT2TY
	 SUnHi2h/cJYBXiZ5MlzO2F8dWX62rIFKdSvoyd7EASBmVCsFKORiJWk3uq0pzrhxcV
	 Kpdd88aqy4EBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADDB5844E7;
	Sat, 10 Aug 2024 00:23:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F4CD1BF995
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 00:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BAF860615
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 00:23:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hpgP0JRHgnkU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 00:23:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9D6EE605A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D6EE605A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D6EE605A2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 00:23:32 +0000 (UTC)
X-CSE-ConnectionGUID: gzygpkMUR4uasMUfC/KwKw==
X-CSE-MsgGUID: jn1b8PpySXWxDi3T5DlTPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="21415453"
X-IronPort-AV: E=Sophos;i="6.09,277,1716274800"; d="scan'208";a="21415453"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 17:23:30 -0700
X-CSE-ConnectionGUID: hALeNo2MS9y6BvYa6G1oUw==
X-CSE-MsgGUID: QsjymVP3RR2lopvpXQjOwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,277,1716274800"; d="scan'208";a="57383188"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO vcostago-mobl3.lan)
 ([10.124.221.140])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 17:23:30 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Aug 2024 17:23:02 -0700
Message-ID: <20240810002302.2054816-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723249412; x=1754785412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gg/rzxEcE/ehEA57zkHvot1+t3aUc/Rg58im3h2dnrw=;
 b=em7NVESYrsdkQ26h9EOMyU0DuWII1kQTPWjRpLzxeoJbH+BwJdXLnI0T
 Fa+zlWAjNy3DfQcsAQNpg4lUJETXEQaR+zSc3WHOBkRaQVE0ILOO/E1XH
 VX0qVl8RT+BuC+1lNKK3DX0dmg3EXq5+RaBym/wk5m8ZWo/c8JRywXScL
 7bcmLhZjQ/fGpVyMPIlEc7lOC0/kG02yL8k5hLzqhW7HMQcfG8A5Q0r6q
 VR1MRMuMNKM093tXxOIPCdrDHMJTGhYIHS27ngtudK7jFcOtG5bPvnkax
 XBwvxrkW8hbvIOw39h0AY3aDQMm6nXqwJLfqF4vHQuHI+AzWtb2FHxRea
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=em7NVESY
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix not clearing TimeSync
 interrupts for 82580
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
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 daiweili@gmail.com, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It was reported that 82580 NICs have a hardware bug that makes it
necessary to write into the TSICR (TimeSync Interrupt Cause) register
to clear it.

Add a conditional so only for 82580 we write into the TSICR register,
so we don't risk losing events for other models.

This (partially) reverts commit ee14cc9ea19b ("igb: Fix missing time sync events").

Fixes: ee14cc9ea19b ("igb: Fix missing time sync events")
Reported-by: Daiwei Li <daiweili@gmail.com>
Closes: https://lore.kernel.org/intel-wired-lan/CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com/
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---

@Daiwei Li, I don't have a 82580 handy, please confirm that the patch
fixes the issue you are having.

 drivers/net/ethernet/intel/igb/igb_main.c | 27 ++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 11be39f435f3..edb34f67ae03 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6960,31 +6960,48 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
 static void igb_tsync_interrupt(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
-	u32 tsicr = rd32(E1000_TSICR);
+	u32 ack = 0, tsicr = rd32(E1000_TSICR);
 	struct ptp_clock_event event;
 
 	if (tsicr & TSINTR_SYS_WRAP) {
 		event.type = PTP_CLOCK_PPS;
 		if (adapter->ptp_caps.pps)
 			ptp_clock_event(adapter->ptp_clock, &event);
+		ack |= TSINTR_SYS_WRAP;
 	}
 
 	if (tsicr & E1000_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
 		schedule_work(&adapter->ptp_tx_work);
+		ack |= E1000_TSICR_TXTS;
 	}
 
-	if (tsicr & TSINTR_TT0)
+	if (tsicr & TSINTR_TT0) {
 		igb_perout(adapter, 0);
+		ack |= TSINTR_TT0;
+	}
 
-	if (tsicr & TSINTR_TT1)
+	if (tsicr & TSINTR_TT1) {
 		igb_perout(adapter, 1);
+		ack |= TSINTR_TT1;
+	}
 
-	if (tsicr & TSINTR_AUTT0)
+	if (tsicr & TSINTR_AUTT0) {
 		igb_extts(adapter, 0);
+		ack |= TSINTR_AUTT0;
+	}
 
-	if (tsicr & TSINTR_AUTT1)
+	if (tsicr & TSINTR_AUTT1) {
 		igb_extts(adapter, 1);
+		ack |= TSINTR_AUTT1;
+	}
+
+	if (hw->mac.type == e1000_82580) {
+		/* 82580 has a hardware bug that requires a explicit
+		 * write to clear the TimeSync interrupt cause.
+		 */
+		wr32(E1000_TSICR, ack);
+	}
 }
 
 static irqreturn_t igb_msix_other(int irq, void *data)
-- 
2.45.2

