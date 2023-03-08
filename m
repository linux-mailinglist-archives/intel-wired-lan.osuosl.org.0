Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C46866B04A7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 11:37:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 425708187F;
	Wed,  8 Mar 2023 10:37:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 425708187F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678271836;
	bh=denJYlBd1HsRCeIXNsjJrHM4DsJWFG6nLkiB+HieqRs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=313czQ9b1Uu79k7ZuehLeZhp/arxxmO1/ZRH0Rm3dk8evmFd/VP3iUqjHvx5alPCp
	 +cMDZlmJ6r9IxfUBQZNcOgQOKqOoWnM8yZuyrewQJRsBBl7T6shgKB8v4A6I7YPnT6
	 TkRRZ8s7TJMwUklBgInzk7fDdSkYLNtRmHP+gpod8zr6bEis5GvvmvQH4QlYxhHQsF
	 Kz7FjZEKyHp0Ew5hfLmctqIQKg4Cidg7xBKTOn+Jqrfkm8Pf1zqUEu2p9Fkikx3UHw
	 BX6J45+33Ocn+qu4CjDHx01sNrtN3n0dhRCrQzy5NKwzNeejSEs257+0azjgl2xF11
	 F7rCMgPj3IIKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ELSG8QxGlL-5; Wed,  8 Mar 2023 10:37:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1A9D81A4E;
	Wed,  8 Mar 2023 10:37:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1A9D81A4E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA8111BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82EC140BB6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:36:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82EC140BB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id etGCseL1jY5r for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 10:36:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B99A400B9
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B99A400B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:36:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="334835444"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="334835444"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 02:36:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="676930122"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="676930122"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga002.jf.intel.com with ESMTP; 08 Mar 2023 02:36:54 -0800
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Mar 2023 11:36:51 +0100
Message-Id: <20230308103651.794904-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678271816; x=1709807816;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M340OowOC+EeZNXaScjk0hpSjvhxrXEwsWliWR59joI=;
 b=eHjQjKT/FmbCyiiWUMfMZKRqySLhE+Zrq+2osVyQTyAPsvTiUjzBlCVS
 g5ZSB+kfIunJQfhMmKKQLrFIjK1obkMOwohab6kUTHObfXghQjza9gKmx
 9rUDxYrKGwDj9OBpIcsOkDL7xTz2n4WJp+gEtKD0eIyJr1DBk4N+RE/vY
 58xrLI9x1sftbrbeHJUu41Ia4+xeG/WUcW0I37H3mmHIKaU3ssGYMO2xw
 zAG+44Ws5sZdtd//z6m7rl+RDP5CmTncJmUmSTOybX6nh46OkqnMaI0Ep
 mXZBaavKaE3B9nguthK38ZLxzoBZcVIEIuneyKeeEXTNcbRFznMfcnEm0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eHjQjKT/
Subject: [Intel-wired-lan] [PATCH net-next v2] igb: refactor
 igb_ptp_adjfine_82580 to use diff_by_scaled_ppm
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
Cc: Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Driver's .adjfine interface functions use adjust_by_scaled_ppm and
diff_by_scaled_ppm introduced in commit 1060707e3809
("ptp: introduce helpers to adjust by scaled parts per million")
to calculate the required adjustment in a concise manner,
but not igb_ptp_adjfine_82580.
Fix it by introducing IGB_82580_BASE_PERIODand changing function logic
to use diff_by_scaled_ppm.

Fixes: 1060707e3809 ("ptp: introduce helpers to adjust by scaled parts per million")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
v2: Changing target to net-queue and reflowing commit message
to fit 75 characters per line.
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 6f471b91f562..405886ee5261 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -67,6 +67,7 @@
 #define INCVALUE_82576_MASK		GENMASK(E1000_TIMINCA_16NS_SHIFT - 1, 0)
 #define INCVALUE_82576			(16u << IGB_82576_TSYNC_SHIFT)
 #define IGB_NBITS_82580			40
+#define IGB_82580_BASE_PERIOD		0x800000000
 
 static void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter);
 static void igb_ptp_sdp_init(struct igb_adapter *adapter);
@@ -209,17 +210,11 @@ static int igb_ptp_adjfine_82580(struct ptp_clock_info *ptp, long scaled_ppm)
 	struct igb_adapter *igb = container_of(ptp, struct igb_adapter,
 					       ptp_caps);
 	struct e1000_hw *hw = &igb->hw;
-	int neg_adj = 0;
+	bool neg_adj;
 	u64 rate;
 	u32 inca;
 
-	if (scaled_ppm < 0) {
-		neg_adj = 1;
-		scaled_ppm = -scaled_ppm;
-	}
-	rate = scaled_ppm;
-	rate <<= 13;
-	rate = div_u64(rate, 15625);
+	neg_adj = diff_by_scaled_ppm(IGB_82580_BASE_PERIOD, scaled_ppm, &rate);
 
 	inca = rate & INCVALUE_MASK;
 	if (neg_adj)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
