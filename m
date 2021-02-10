Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F93F317307
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 23:15:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F311087538;
	Wed, 10 Feb 2021 22:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n2HtTu+DhPZ4; Wed, 10 Feb 2021 22:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E15287524;
	Wed, 10 Feb 2021 22:14:59 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC0371BF3D7
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E2BF287519
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNW+ut9q3V8R for <intel-wired-lan@osuosl.org>;
 Wed, 10 Feb 2021 22:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5FBB28751C
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 22:14:56 +0000 (UTC)
IronPort-SDR: hJ9D3j8BBoSyS6L+SLmtlLMfmWFWVU9jhhTZxYh6VABh57bgRsttmc5LOm127ymGWZ54kfC4E6
 JCIXf0FeiKwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169835579"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="169835579"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 14:14:56 -0800
IronPort-SDR: z2T523czcq1lhjGp4s1R6D/89P/IbJ0+IwfxxxzMjQ8vIGBj11YeKb9jda66ZWihFiDM1wLmEx
 Ma0qCsqsZf5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="588110669"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by fmsmga005.fm.intel.com with ESMTP; 10 Feb 2021 14:14:55 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 10 Feb 2021 13:58:41 -0800
Message-Id: <20210210215848.24514-3-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210210215848.24514-1-vedang.patel@intel.com>
References: <20210210215848.24514-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 2/9] igc: Remove unused
 argument from igc_tx_cmd_type()
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
Cc: jithu.joseph@intel.com, Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

The 'skb' argument from igc_tx_cmd_type() is not used so remove it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 49748df61be7..261672797346 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1029,7 +1029,7 @@ static inline int igc_maybe_stop_tx(struct igc_ring *tx_ring, const u16 size)
 	 ((u32)((_input) & (_flag)) * ((_result) / (_flag))) :	\
 	 ((u32)((_input) & (_flag)) / ((_flag) / (_result))))
 
-static u32 igc_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
+static u32 igc_tx_cmd_type(u32 tx_flags)
 {
 	/* set type for advanced descriptor with frame checksum insertion */
 	u32 cmd_type = IGC_ADVTXD_DTYP_DATA |
@@ -1078,7 +1078,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
 	u16 i = tx_ring->next_to_use;
 	unsigned int data_len, size;
 	dma_addr_t dma;
-	u32 cmd_type = igc_tx_cmd_type(skb, tx_flags);
+	u32 cmd_type = igc_tx_cmd_type(tx_flags);
 
 	tx_desc = IGC_TX_DESC(tx_ring, i);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
