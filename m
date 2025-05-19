Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 510DFABC1F2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 17:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 140FC60EF3;
	Mon, 19 May 2025 15:15:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rgyJ6e8tMxre; Mon, 19 May 2025 15:15:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63E3060E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747667738;
	bh=Bgdr/xJd1h7dPw8cU9tG7bS/Mi2kmhFf2lwRLpvYGdk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fCgAwrAX6WAwMYwrhYajNa118F7UBnBCbnpRFwqmXIaayb+LNHYHs2jj6f0UGOSUZ
	 rHMP5bp1R+D8g1e74v3wGvEpS1JIUp04/wmuJbF+rvYOwm40A6ueMh/qKnyRInTpZl
	 N6KdJM4H/8W+t9+pvADruoXwNVog9sVGFnw2qpK8VowzRCiozfcyOc6F5T+Qz3C7n5
	 5dzn6OMZDF74E0XA+y5hOk+j0Krgnwe/NQ6BZJ+yUeFHZSeNfcTiKsExvlqzqRK3c/
	 h8qjIpUL4dvWMk3EpqcVvomq4sRr4sXC2fppHbtCsw2pReuqpIpSIFe8zNwnIbam7T
	 gGDdyQtfU7Suw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63E3060E31;
	Mon, 19 May 2025 15:15:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E8106193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D988481DBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1vaQ2JgwZsvW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 07:20:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 396E981DEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 396E981DEA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 396E981DEA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:46 +0000 (UTC)
X-CSE-ConnectionGUID: BEBAdNCxR6mpPLVqvRLX5w==
X-CSE-MsgGUID: JiJB7gDwR7WUBuO1k9yIyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="72030722"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="72030722"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:20:46 -0700
X-CSE-ConnectionGUID: e2JBfEhJRpqWI8+/F4i1Qw==
X-CSE-MsgGUID: BU1rhTELTkaLa9me0AG04Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139798793"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa007.jf.intel.com with ESMTP; 19 May 2025 00:20:43 -0700
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 19 May 2025 03:19:06 -0400
Message-Id: <20250519071911.2748406-3-faizal.abdul.rahim@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 19 May 2025 15:15:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747639246; x=1779175246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JiyXN0SaYOPJC2/fNDPQ9eo7Bs71lNhqigdwaAiILpM=;
 b=ir0llfRXTRURwUQg73MC9pIHsyMimbABfIAidNPXOY7suVRqPCaj6n26
 qJJNsEw7+IVvDVS1tl64jvMcdCeOpItwccd1H3odbTyJGI0Dd62qIEq9r
 6MP/Yn5Vuv2/HXr+4pEmwqCvqB+hIdezzcHckvk04bgGDx94c+ISjoaTV
 1q8m6lPPnrW2JXvdjvnnT8IBaGBNnDc82sSoBBaXyjzWu5hntq/4BkaUm
 6FJSVXo2B8EVlgC0N0DhxOWF4GTIu3NzBCN9wm2CiuqVd14C2ZSlks9cK
 u2gNBb6JAHzx+vq+9ZZ2fjYmu+QWr3aVS/5cxYNpC13mQ+NCzYEuOFdMG
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ir0llfRX
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/7] igc: add DCTL prefix to
 related macros
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

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Rename macros to use the DCTL prefix for consistency with existing
macros that reference the same register. This prepares for an upcoming
patch that adds new fields to TXDCTL.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 12 ++++++------
 drivers/net/ethernet/intel/igc/igc_main.c | 12 ++++++------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 25695eada563..db1e2db1619e 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -485,17 +485,17 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
  *           descriptors until either it has this many to write back, or the
  *           ITR timer expires.
  */
-#define IGC_RX_PTHRESH			8
-#define IGC_RX_HTHRESH			8
-#define IGC_RX_WTHRESH			4
+#define IGC_RXDCTL_PTHRESH		8
+#define IGC_RXDCTL_HTHRESH		8
+#define IGC_RXDCTL_WTHRESH		4
 /* Ena specific Rx Queue */
 #define IGC_RXDCTL_QUEUE_ENABLE		0x02000000
 /* Receive Software Flush */
 #define IGC_RXDCTL_SWFLUSH		0x04000000
 
-#define IGC_TX_PTHRESH			8
-#define IGC_TX_HTHRESH			1
-#define IGC_TX_WTHRESH			16
+#define IGC_TXDCTL_PTHRESH		8
+#define IGC_TXDCTL_HTHRESH		1
+#define IGC_TXDCTL_WTHRESH		16
 /* Ena specific Tx Queue */
 #define IGC_TXDCTL_QUEUE_ENABLE		0x02000000
 /* Transmit Software Flush */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 27575a1e1777..4f1a8bc006c6 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -683,9 +683,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 
 	wr32(IGC_SRRCTL(reg_idx), srrctl);
 
-	rxdctl |= IGC_RX_PTHRESH;
-	rxdctl |= IGC_RX_HTHRESH << 8;
-	rxdctl |= IGC_RX_WTHRESH << 16;
+	rxdctl |= IGC_RXDCTL_PTHRESH;
+	rxdctl |= IGC_RXDCTL_HTHRESH << 8;
+	rxdctl |= IGC_RXDCTL_WTHRESH << 16;
 
 	/* initialize rx_buffer_info */
 	memset(ring->rx_buffer_info, 0,
@@ -749,9 +749,9 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
 	wr32(IGC_TDH(reg_idx), 0);
 	writel(0, ring->tail);
 
-	txdctl |= IGC_TX_PTHRESH;
-	txdctl |= IGC_TX_HTHRESH << 8;
-	txdctl |= IGC_TX_WTHRESH << 16;
+	txdctl |= IGC_TXDCTL_PTHRESH;
+	txdctl |= IGC_TXDCTL_HTHRESH << 8;
+	txdctl |= IGC_TXDCTL_WTHRESH << 16;
 
 	txdctl |= IGC_TXDCTL_QUEUE_ENABLE;
 	wr32(IGC_TXDCTL(reg_idx), txdctl);
-- 
2.34.1

