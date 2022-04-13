Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111EC4FECA6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Apr 2022 03:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BE5D405D9;
	Wed, 13 Apr 2022 01:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JOq1zHoEwjij; Wed, 13 Apr 2022 01:58:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 637DA40447;
	Wed, 13 Apr 2022 01:58:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0F01BF59B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 01:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A1E7408A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 01:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xYGmMsUm7FMW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 01:58:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7146940891
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 01:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649815114; x=1681351114;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Gw/cV7W26UWC6Mzu9C4wx5c2bI7h6e9QSTbqTiwnvHA=;
 b=W3Xrctt96XROASbt+evcH56i8e5aLQkbg5eCNDBfA/+ivC9nAf+qC2I8
 OOTd4956MjjU/qTVkH3pF2GIrXqSr1NIYyzt71LT/vliYtjIaGmsPtb3/
 8SOjZQHcEBWlIg3Vr1WsmNqlwwT6pJxAecoTKShR3BpS7yNZ4PPT4+CUh
 RiEwUNfv2UvZUTo6Z737bVo8JpmJftmZey4T8xk9EKEka95ngKoZ3+kBT
 QwkX7hhaJpehFqjuT5uqK8TecK9jkPE+ztm04y27fWQZhZlBXOXEj/w0I
 CZfd4YP4T3GczSSGOp/fO25VWtua9QfBKXMkx4jan6t03gFioMKbFiYwE g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="262728798"
X-IronPort-AV: E=Sophos;i="5.90,255,1643702400"; d="scan'208";a="262728798"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 18:58:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,255,1643702400"; d="scan'208";a="552001239"
Received: from dreese-mobl.amr.corp.intel.com (HELO vcostago-mobl3.intel.com)
 ([10.252.131.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 18:58:33 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Apr 2022 18:58:15 -0700
Message-Id: <20220413015815.31521-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-queue v2] igc: Fix suspending when PTM
 is active
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, andre.roeder@hetzner.com, roots@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some mainboard/CPU combinations, in particular, Alder Lake-S with a
W680 mainboard, have shown problems (system hangs usually, no kernel
logs) with suspend/resume when PCIe PTM is enabled and active. In some
cases, it could be reproduced when removing the igc module.

The best we can do is to stop PTM dialogs from the downstream/device
side before the interface is brought down. PCIe PTM will be re-enabled
when the interface is being brought up.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 0d6e3215e98f..653e9f1e35b5 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -992,6 +992,17 @@ static void igc_ptp_time_restore(struct igc_adapter *adapter)
 	igc_ptp_write_i225(adapter, &ts);
 }
 
+static void igc_ptm_stop(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 ctrl;
+
+	ctrl = rd32(IGC_PTM_CTRL);
+	ctrl &= ~IGC_PTM_CTRL_EN;
+
+	wr32(IGC_PTM_CTRL, ctrl);
+}
+
 /**
  * igc_ptp_suspend - Disable PTP work items and prepare for suspend
  * @adapter: Board private structure
@@ -1009,8 +1020,10 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 	adapter->ptp_tx_skb = NULL;
 	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
 
-	if (pci_device_is_present(adapter->pdev))
+	if (pci_device_is_present(adapter->pdev)) {
 		igc_ptp_time_save(adapter);
+		igc_ptm_stop(adapter);
+	}
 }
 
 /**
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
