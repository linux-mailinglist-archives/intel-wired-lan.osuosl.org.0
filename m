Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F086A9E7E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A620840BBD;
	Mon, 28 Apr 2025 06:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 101Ckv6O5bMq; Mon, 28 Apr 2025 06:03:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F2E640BE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820213;
	bh=C0SZsIn0mAsod1nOFmJPvDp96l+iCOCJRnHVWwiUxrk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z8lCbNrZT/OOOkE91UmOOGogHJLZzs0vJe7qrwjoIEMsSpQKSMWKb/Qhho3v024NV
	 Ir2LSySzmOkBi2zd3WxN/a4P3by2mr/JiHbSZeBglLSQSJZVre7qkLOvvMP/UCwaGT
	 dG9QbVS/w+nSBJkjipEOyL0GSSVQCP7tsu7l3W7+nI4ffPK7XwfF+t/YkIwnA+FH6Q
	 mYLTq06giNwnDV85lEYvWszwIAQEfYE2d3klplLIETtOd3K3VuV9SMbi6gi14dmmyr
	 uZh7yhOmDATzh1QauYCXXFknEC1KwR9FmFusfmtzTbiQfE/V5VB+hG6riEF5yRByPF
	 0OfXZsJfYZLGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F2E640BE4;
	Mon, 28 Apr 2025 06:03:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BC55419E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B839860B83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o37MRDmMwrlb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A48760B6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A48760B6D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A48760B6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:30 +0000 (UTC)
X-CSE-ConnectionGUID: BjH0VAEFSnubaRS5FMUFFg==
X-CSE-MsgGUID: xq0pcH5tS7a2INtqG3UyQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064606"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064606"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:30 -0700
X-CSE-ConnectionGUID: r8L480b1Qx+M0KGADanF6A==
X-CSE-MsgGUID: jQ1pQTfzS6mZjH6ajiiPyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340742"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:27 -0700
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
Date: Mon, 28 Apr 2025 02:02:19 -0400
Message-Id: <20250428060225.1306986-3-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820211; x=1777356211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=utJgU/4E0lRF86nAOgNjxmBrTEjRQTmBI49DKxLnVb0=;
 b=GP/w9fnrOFpOFEAvgxy0yEvGMNp+qiQqvHnBzQvcPgR8onBxniv0V7So
 8FsROgG4p8NfQoO1mCulj2n5fdrMrYGGsmIakxg2yag+bho3YTrhSjpWz
 M0GwhYsC+HLUCB5zC1EGtWeA4acFpLTjYw1r4vHOH9ciGchtj562yq+2i
 cJYUTGhJSwZCsP02ollY5qDrm9AHAzfngR2pY33nDAPPfATQULERu+1Ud
 809B9Hg2GYgMyEc1asAcF4zb5d7WIJQ/0o/s+PVvrXBE46aZXxumY6Bsl
 zyEqpxxoy0ojoVbSuJqE7ciaD0cze+39CvZovxKfRu53SUDNU0BX3rMG1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GP/w9fnr
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/8] igc: add TXDCTL prefix to
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

Rename macros to include the TXDCTL_ prefix for consistency and clarity.
This aligns naming with the register they configure and improves code
readability.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 6 +++---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index e9d180eac015..bc37cc8deefb 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -487,10 +487,10 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
  */
 #define IGC_RX_PTHRESH			8
 #define IGC_RX_HTHRESH			8
-#define IGC_TX_PTHRESH			8
-#define IGC_TX_HTHRESH			1
+#define IGC_TXDCTL_PTHRESH		8
+#define IGC_TXDCTL_HTHRESH		1
 #define IGC_RX_WTHRESH			4
-#define IGC_TX_WTHRESH			16
+#define IGC_TXDCTL_WTHRESH		16
 
 /* Additional Transmit Descriptor Control definitions */
 /* Ena specific Tx Queue */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 27575a1e1777..725c8f0b9f3d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
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

