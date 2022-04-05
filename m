Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C7B4F3ED5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Apr 2022 22:54:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1836640A03;
	Tue,  5 Apr 2022 20:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dIqWMb9gMMCp; Tue,  5 Apr 2022 20:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1061140496;
	Tue,  5 Apr 2022 20:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E17D1BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 20:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 349CE60F9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 20:54:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6AEvlp3MNWZZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Apr 2022 20:54:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 32F7660AEA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 20:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649192088; x=1680728088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9G4bWciUmdqM9TV1TpXTphjJw6qdEzgvbBEibOTp0YU=;
 b=RZPq4slvHK4cUZESgeCOZGVg19RLvhG6uhnU337qK6F5yTbxY3VN+G3r
 N7DWrI9Cg3l8DIeRs9aRtnQ2cjZXCDT+BGf0TQQdYXwrV6l5hVmZIz3+/
 JI77RQwoGMyXRWiaNVSsGjK8EjUEnzNF3l3Wv1AUGvpt11w+OUzcLVKWZ
 DrEV2Qm96hTsO87eALaiOlxpgKFLt5ydtNqenO8O/OYIaCrtRPrgFvc0f
 TiXpx1OJT1A4FApZD09ntP1epeBdlxtzAmP1Km8y/HAGUo2/21+sYzWEY
 fx+sXD0midqzcq1pCMTfFu2OkJyj4S1wvpr04h3CHTTy8dB8rfU6XXZjH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="258445709"
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="258445709"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 13:54:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="570089431"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.61])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 13:54:47 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Apr 2022 13:54:37 -0700
Message-Id: <20220405205437.29829-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix suspending when PTM
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
Cc: roots@gmx.de, andre.roeder@hetzner.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some mainboard/CPU combinations have shown problems with
suspend/resume when PCIe PTM is enabled and active.

The best we can do is to stop PTM dialogs from the downstream/device
side before the interface is brought down. PCIe PTM will be
re-enabled when the interface is being brought up.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
Stefan,

I believe that this should be a more general solution to the problem you reported in
https://lore.kernel.org/all/924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de/

Would it be possible for you revert commit 1e81dcc1ab7d ("igc: Do not
enable crosstimestamping for i225-V models") and apply this one, and
see if it works for you? I don't have your exact setup.

Cheers,

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
