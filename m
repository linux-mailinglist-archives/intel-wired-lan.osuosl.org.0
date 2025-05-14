Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEE6AB6184
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 06:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8359C61007;
	Wed, 14 May 2025 04:31:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YbBM2-aMYemC; Wed, 14 May 2025 04:31:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAE8E61008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747197074;
	bh=ih3zfz1ub46Yi3g3NIZhUR0da3kn6qOHZJaljX7Jw4w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M8cufgcO9/Q+FM/jv9yNu8PIiNbJA5rcONumb0azfyuLApz0y50gh9jM0nfxy8+fV
	 AnMhvxR+JgwdbCBw1pKHV6Rmif7iDR7MaM8XLRT48e1U+sCfSWrZY16WykZuDfYC+j
	 ohVsPgtyv8bn+itF8F8uze7Ce3x8nm/AZaVwgWJHfHo7KXJBrjFV/cxE6cuxkbl4mN
	 ptkYQAVhLhs+6QTjB31GXTeGT+ouV70M1n/7358WQoGP3J9Z4Kz3z6/RqH34ehwOPp
	 OSZO/f+FwNERAXdaZJTVZdnlMYSFulvncPzI2Dseoc1lFYf0IJeX8JTDNBboIxbVqe
	 0QWEaEpqAStpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAE8E61008;
	Wed, 14 May 2025 04:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EB1C9153
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0AF2402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eWsg-KBSvlee for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 04:31:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2A54740159
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A54740159
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A54740159
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:11 +0000 (UTC)
X-CSE-ConnectionGUID: faRL53IDQvOm2QtGTuk+aw==
X-CSE-MsgGUID: jXni3resRkONH93sIe2yaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="36699093"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="36699093"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 21:31:10 -0700
X-CSE-ConnectionGUID: QkYXNdkHTQuxVGrFUcmyXw==
X-CSE-MsgGUID: KV0uQuYNRUitKnrJYG197Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="142861804"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa004.jf.intel.com with ESMTP; 13 May 2025 21:31:08 -0700
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
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Wed, 14 May 2025 00:29:39 -0400
Message-Id: <20250514042945.2685273-3-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747197071; x=1778733071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cj+IXujLa432okMaOhDaLe0C7KuZSXLAiC5Y8Yr1r0w=;
 b=FpEs1ozH2REqtOzRGGS7GJDjBU1cbQ1lccDAEmJV0MTfFOPcjNTKmFpo
 ajXLjB4PKHDWtBMmoPiIKfZdqHno2Nny1yt8JLxW4b3Zt6GNtZZRQ+aqg
 JyEBlDiE1+auCr7ZTMuq/qtU4QBFTymeAzSLP5ay6TkotCBQimxzwDx+y
 zLIxQbjMIe0Nnv+GBywEtkTPzd7Xd0ewc5xCaa/eevCN5SKxyAMuzC3Fd
 S+Pm2ZITvaNp6OcT6aAb0kYnH7vWXpAYllinlOnOvHXpGJPAXCNRrrziK
 O4TtXKo4gx/oZgmIgCoRDJiRi7ZoExmtU4rt3SKUzytEcKM3ukysXnJUX
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FpEs1ozH
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/8] igc: add DCTL prefix to
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

Rename macros to use the DCTL prefix for consistency with existing
macros that reference the same register. This prepares for an upcoming
patch that adds new fields to TXDCTL.

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

