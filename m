Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E57A9E7E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBDD460B89;
	Mon, 28 Apr 2025 06:03:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GefBoXkiqHm3; Mon, 28 Apr 2025 06:03:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4820F60B6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820216;
	bh=f3ZCCt30xDDG/XtKIKwwVvcd/f9Ylrwn3N9catKxlmc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ktMF5jKm20kMhtpPSxuL/iPZFL4Z2QkmJWYbrfEDbyHs2sP2gjqTZk/UjPuPLc+hU
	 550ayzM7Pn6Imc0rFa4L8hZdtXGbGvpiggMQdP2mzJ6NE/EQBttXfqoIibqPGLzB/J
	 PXGm6IMhiUqNuNCvOtKeBcipfE6mfqNDT4CrnDPpfaHC15IHALYT4iZJznz4hsVYzg
	 g37dndigTu6D0brKQlxTFQ8aTwL7vaZIL7eF0dpM7o4a77y0pSD0MKB0D+H6IefOEI
	 t+7RrU5+4V+pWL0KrBimPoAOiobSiJEZv6B04RwR5Jfp3nsyQoDJrEOiDN7CjovHrJ
	 A4gOmOwiN5KFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4820F60B6D;
	Mon, 28 Apr 2025 06:03:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1AB87194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 006CF60B7C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fa9dyc0aI973 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6043660B79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6043660B79
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6043660B79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:33 +0000 (UTC)
X-CSE-ConnectionGUID: LpBQISjwRPS/RUCszjUq2Q==
X-CSE-MsgGUID: tSq1xE3+RLS7ZmFOMP8fHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064617"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064617"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:34 -0700
X-CSE-ConnectionGUID: MNq7LqucQVCwYbZseCh3PQ==
X-CSE-MsgGUID: kKBHL5XaQna9TZ6tL/LZEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340764"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:31 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 28 Apr 2025 02:02:20 -0400
Message-Id: <20250428060225.1306986-4-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820214; x=1777356214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pS4q/Yjxbmtc0fCQ3ldogllC9oASKz4SUbDlI70Yroo=;
 b=cHxiehA+NYkhg0le5XKv1mlbs6jWeCUVuuigvTUf414bHgmddecU6CAi
 dDI5VqGRbOQyD1SHnBdeTKa0kJ1/EgkH9yv8Kfk8GXfQmSA7aoG7M7tHb
 l7aQuGeDQuj0/P3V7CYIyUSwdjs2cR3hbhL01R5aljiyru1zoo3zQXF/l
 edfS2F9b0pHQ1XifaDfs+kZcQnQgn5tbVsCWYksJjZUojy+RBiE+TN9Vu
 2focc2rp3MYsCdVHkMNxUNrjSPzk9EvL1FuXlQppm8nizOS3XBbHHetdU
 n0ZIH24hcvIjAZt1hCEm0wMgtzK8eiTEEBzmayxxvntrDGMIy8ErE6r9x
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cHxiehA+
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/8] igc: refactor TXDCTL
 macros to use FIELD_PREP and GEN_MASK
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

Refactor TXDCTL macro handling to use FIELD_PREP and GENMASK macros.
This prepares the code for adding a new TXDCTL priority field in an
upcoming patch.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 16 +++++++++++-----
 drivers/net/ethernet/intel/igc/igc_main.c |  6 ++----
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index bc37cc8deefb..4e44304b0608 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -487,16 +487,22 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
  */
 #define IGC_RX_PTHRESH			8
 #define IGC_RX_HTHRESH			8
-#define IGC_TXDCTL_PTHRESH		8
-#define IGC_TXDCTL_HTHRESH		1
 #define IGC_RX_WTHRESH			4
-#define IGC_TXDCTL_WTHRESH		16
 
+#define IGC_TXDCTL_PTHRESH_MASK		GENMASK(4, 0)
+#define IGC_TXDCTL_HTHRESH_MASK		GENMASK(12, 8)
+#define IGC_TXDCTL_WTHRESH_MASK		GENMASK(20, 16)
+#define IGC_TXDCTL_QUEUE_ENABLE_MASK	GENMASK(25, 25)
+#define IGC_TXDCTL_SWFLUSH_MASK		GENMASK(26, 26)
+
+#define IGC_TXDCTL_PTHRESH(x)		FIELD_PREP(IGC_TXDCTL_PTHRESH_MASK, (x))
+#define IGC_TXDCTL_HTHRESH(x)		FIELD_PREP(IGC_TXDCTL_HTHRESH_MASK, (x))
+#define IGC_TXDCTL_WTHRESH(x)		FIELD_PREP(IGC_TXDCTL_WTHRESH_MASK, (x))
 /* Additional Transmit Descriptor Control definitions */
 /* Ena specific Tx Queue */
-#define IGC_TXDCTL_QUEUE_ENABLE	0x02000000
+#define IGC_TXDCTL_QUEUE_ENABLE		FIELD_PREP(IGC_TXDCTL_QUEUE_ENABLE_MASK, 1)
 /* Transmit Software Flush */
-#define IGC_TXDCTL_SWFLUSH	0x04000000
+#define IGC_TXDCTL_SWFLUSH		FIELD_PREP(IGC_TXDCTL_SWFLUSH_MASK, 1)
 
 #define IGC_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 725c8f0b9f3d..86716fabf6a9 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -749,11 +749,9 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
 	wr32(IGC_TDH(reg_idx), 0);
 	writel(0, ring->tail);
 
-	txdctl |= IGC_TXDCTL_PTHRESH;
-	txdctl |= IGC_TXDCTL_HTHRESH << 8;
-	txdctl |= IGC_TXDCTL_WTHRESH << 16;
+	txdctl |= IGC_TXDCTL_PTHRESH(8) | IGC_TXDCTL_HTHRESH(1) |
+		  IGC_TXDCTL_WTHRESH(16) | IGC_TXDCTL_QUEUE_ENABLE;
 
-	txdctl |= IGC_TXDCTL_QUEUE_ENABLE;
 	wr32(IGC_TXDCTL(reg_idx), txdctl);
 }
 
-- 
2.34.1

