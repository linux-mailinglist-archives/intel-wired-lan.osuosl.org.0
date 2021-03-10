Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB0D333622
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 08:10:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F11778435C;
	Wed, 10 Mar 2021 07:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1s9CY1PHAvvF; Wed, 10 Mar 2021 07:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0A328434F;
	Wed, 10 Mar 2021 07:10:40 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55DE01BF47E
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 414D36F6BA
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tNlxSUL6_lyW for <intel-wired-lan@osuosl.org>;
 Wed, 10 Mar 2021 07:10:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 952F56F4C8
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:35 +0000 (UTC)
IronPort-SDR: F6JXIk2CSvlwk0uWJNBEuXmTrvmxwzO8GG7HuGaps+Wnab4p7e7paSKzKFJo0Dah3kVjmEEOwd
 S/flKSAkj51g==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="208203840"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="208203840"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 23:10:34 -0800
IronPort-SDR: ytgTC7iDdqPoNGHiSJaW/ShOFqfGPwRg+uj4wwGDhnmrb2RdMUwL16SUsVVaOkt1GY4zSGcNBj
 +EouvwlJ1ktg==
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="410070533"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 23:10:33 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue,  9 Mar 2021 23:13:15 -0800
Message-Id: <20210310071322.15425-2-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310071322.15425-1-jithu.joseph@intel.com>
References: <20210310071322.15425-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v7 1/8] igc: Remove unused argument from
 igc_tx_cmd_type()
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
Cc: Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

The 'skb' argument from igc_tx_cmd_type() is not used so remove it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
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
