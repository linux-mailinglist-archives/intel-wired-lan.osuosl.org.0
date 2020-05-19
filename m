Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C62311D9A95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 17:01:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5AFAC85F7B;
	Tue, 19 May 2020 15:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjGRIrLKg3UC; Tue, 19 May 2020 15:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 088F2860C5;
	Tue, 19 May 2020 15:01:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3EF641BF46D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3B08E87469
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:01:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zteu2X5qGZnG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 15:01:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 113DE870B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:01:29 +0000 (UTC)
IronPort-SDR: v2pYpBaSvpL7G+fF3BfAqDn3kP+8Gs1cad7PD4zu8DDdYd4Qq3MKAzkjaGCRLeqNS4+iBRY/8c
 lJKYGv5w+hJg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 07:55:43 -0700
IronPort-SDR: AAEs/X6QXLKWBLf5hV/AajvBzw95HOiPnobtdHKAVCtTCRsjns8pIiA3oGIp09w1wJ63AQSzII
 4j63dnD/M9Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="288982643"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga004.fm.intel.com with ESMTP; 19 May 2020 07:55:42 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 May 2020 17:55:42 +0300
Message-Id: <20200519145542.42170-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add Receive Error Counter
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Receive error counter reflect total number of non-filtered
packets received with errors. This includes: CRC error,
symbol error, rx data error and carrier extend error.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c  | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 drivers/net/ethernet/intel/igc/igc_regs.h | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 9de70a24cb9e..a5a087e1ac02 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -241,6 +241,7 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 	rd32(IGC_MCC);
 	rd32(IGC_LATECOL);
 	rd32(IGC_COLC);
+	rd32(IGC_RERC);
 	rd32(IGC_DC);
 	rd32(IGC_SEC);
 	rd32(IGC_RLEC);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index aac004944f99..fb67e7990304 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3745,6 +3745,7 @@ void igc_update_stats(struct igc_adapter *adapter)
 
 	adapter->stats.tpt += rd32(IGC_TPT);
 	adapter->stats.colc += rd32(IGC_COLC);
+	adapter->stats.colc += rd32(IGC_RERC);
 
 	adapter->stats.algnerrc += rd32(IGC_ALGNERRC);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index f50a7bf6a793..5a4873dddcbf 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -134,6 +134,7 @@
 #define IGC_MCC		0x0401C  /* Multiple Collision Count - R/clr */
 #define IGC_LATECOL	0x04020  /* Late Collision Count - R/clr */
 #define IGC_COLC	0x04028  /* Collision Count - R/clr */
+#define IGC_RERC	0x0402C  /* Receive Error Count - R/clr */
 #define IGC_DC		0x04030  /* Defer Count - R/clr */
 #define IGC_TNCRS	0x04034  /* Tx-No CRS - R/clr */
 #define IGC_SEC		0x04038  /* Sequence Error Count - R/clr */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
