Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED00ABC1F3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 17:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B438C81CBA;
	Mon, 19 May 2025 15:15:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NcplPUHV1FI2; Mon, 19 May 2025 15:15:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19EEB82129
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747667739;
	bh=U+1mtcb8aF83i2PKitkrCcqUezyHh6t5nkXNq7U3nxM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Go+Js1QNqggHMVAZgvWda9Fvq6HkK4vfKQ7gydTYLO/kD3t60Dzf+5bZ5OWcTbUxP
	 pPn0Rt4Qi5JBo5ScQSsxtkYSPaAl3hQMuGclE2nLHjD37vcIec4nPUgl5n96jwj7Gm
	 y1hzczd1R76spWfiIYZFIb6HiUttteWlx8POaRmigHPNSynUQO9m2rdm7aDetKB/6j
	 apc5IK/Sgo+2GB1WXsQg3IErqL62Koyu54BcKockSIk8vMkIOSQ2sJDmS0w+6FHofw
	 fcGWbl2VhrEkF9iC1s3bSJMeFw3PahlMQQR6v9cllp0mCUo2dpI/ngr1IQY4EY7rCK
	 T3+PkecnXpY8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19EEB82129;
	Mon, 19 May 2025 15:15:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C54E193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7266981DBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SEtxSkMoxMiR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 07:20:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C331180DF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C331180DF0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C331180DF0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:49 +0000 (UTC)
X-CSE-ConnectionGUID: j0fVZ1x5Q/iItpl2lMJcBA==
X-CSE-MsgGUID: BrLK9EPqT6iE85nr4YFvdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="72030732"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="72030732"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:20:49 -0700
X-CSE-ConnectionGUID: l3aQ8PL6RPCeyb9Q+1Wl4A==
X-CSE-MsgGUID: R3MQYpjIStiebB3dOM0Dbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139798817"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa007.jf.intel.com with ESMTP; 19 May 2025 00:20:47 -0700
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
Date: Mon, 19 May 2025 03:19:07 -0400
Message-Id: <20250519071911.2748406-4-faizal.abdul.rahim@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 19 May 2025 15:15:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747639250; x=1779175250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cn7+DmmLvHcmgm6wbwcw12IySau9IeuVUICgR6NNYb0=;
 b=BuSroHSxwvESz43soQjIouHOBfrDLK2yWZuj+SyF63Tf91YDnjDIaI7+
 ilphLhuVk688eeqm6Ow4tAP5D5GR5EZVoH6O68Hj6AGGGLLGi02qmHZzE
 Qk21nKIsWdAnvqZFzrw+meOC/Td94gTRl72hycGXwZVHxyW4R2jLXTicc
 EhSKdo+ph8X6uxjrOgHNYhz/t9mrNqtEyJ7a/A4u9EW+McchzMUi0xUAK
 +HvdIzqn9DKirEWDzpcQZEmmW2kV55qAUAD0IeSzz9kwKyXUoZT70yWMu
 F14Kfm6IPvzbjVMmOvfnIMOsnqpZp8MolYBQnnpWZ+Ev+fR1+k2srKvfy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BuSroHSx
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/7] igc: refactor TXDCTL
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

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Refactor TXDCTL macro handling to use FIELD_PREP and GENMASK macros.
This prepares the code for adding a new TXDCTL priority field in an
upcoming patch.

Verified that the macro values remain unchanged before and after
refactoring.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 15 ++++++++++-----
 drivers/net/ethernet/intel/igc/igc_main.c |  6 ++----
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index db1e2db1619e..daab06fc3f80 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -493,13 +493,18 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
 /* Receive Software Flush */
 #define IGC_RXDCTL_SWFLUSH		0x04000000
 
-#define IGC_TXDCTL_PTHRESH		8
-#define IGC_TXDCTL_HTHRESH		1
-#define IGC_TXDCTL_WTHRESH		16
+#define IGC_TXDCTL_PTHRESH_MASK		GENMASK(4, 0)
+#define IGC_TXDCTL_HTHRESH_MASK		GENMASK(12, 8)
+#define IGC_TXDCTL_WTHRESH_MASK		GENMASK(20, 16)
+#define IGC_TXDCTL_QUEUE_ENABLE_MASK	GENMASK(25, 25)
+#define IGC_TXDCTL_SWFLUSH_MASK		GENMASK(26, 26)
+#define IGC_TXDCTL_PTHRESH(x)		FIELD_PREP(IGC_TXDCTL_PTHRESH_MASK, (x))
+#define IGC_TXDCTL_HTHRESH(x)		FIELD_PREP(IGC_TXDCTL_HTHRESH_MASK, (x))
+#define IGC_TXDCTL_WTHRESH(x)		FIELD_PREP(IGC_TXDCTL_WTHRESH_MASK, (x))
 /* Ena specific Tx Queue */
-#define IGC_TXDCTL_QUEUE_ENABLE		0x02000000
+#define IGC_TXDCTL_QUEUE_ENABLE		FIELD_PREP(IGC_TXDCTL_QUEUE_ENABLE_MASK, 1)
 /* Transmit Software Flush */
-#define IGC_TXDCTL_SWFLUSH		0x04000000
+#define IGC_TXDCTL_SWFLUSH		FIELD_PREP(IGC_TXDCTL_SWFLUSH_MASK, 1)
 
 #define IGC_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4f1a8bc006c6..f3a312c9413b 100644
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

