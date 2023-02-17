Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5AF69A798
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 09:58:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7654D81377;
	Fri, 17 Feb 2023 08:58:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7654D81377
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676624286;
	bh=qFTUYe5tKs2CN73iKgvDCGzAM5NHR1SkV6fG8US8PJU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FjN5GrIKxHhC1/b+9lKqJbmsn3G2yoUKOvln6/sG9CkY6tFdqBNC0exlBPD7ShriE
	 y5JckDfXLheaAQ0GPT3daOu7ac2RzGFIrxeHP9X+ekfdhKJr+Vu57ZVkS0O9KAN1P+
	 jq3VhPyWTerMrk4U38sZ2sxsdPDtkM5wPlktKpgGzoVsAO5AalNdrl/e0Pl6ERLcKu
	 Mii8AZ3tQEDKYrpMCxohig3QdShKIRDWqFDV9YTcBaT9+8sn05kX0PZc9+DnhO+7E+
	 LPVD1jaZesuI6npIwXe/T0BNkJNcXU9LIXqt3lz320Ov+G5d7qgyeZN4XBJInR2Uwi
	 UeXtFGBkoYeFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WRTAemEWE437; Fri, 17 Feb 2023 08:58:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7714B81326;
	Fri, 17 Feb 2023 08:58:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7714B81326
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4499F1BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 08:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1870C419F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 08:58:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1870C419F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T7PIVXbNGElM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 08:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3B90419E7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B3B90419E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 08:57:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="334144718"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="334144718"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 00:57:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="663812511"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="663812511"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga007.jf.intel.com with ESMTP; 17 Feb 2023 00:57:55 -0800
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Feb 2023 09:57:49 +0100
Message-Id: <20230217085749.348624-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676624277; x=1708160277;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VsuNBTrdQQwh0j5Y1p+2xN8B2jRQlUPTVqqZfS/2bbU=;
 b=M64cCY9CNg8rX92eSGpOMhNLHZOPSf0bqULr1Nvoa1rLnLeUC7of2x3U
 PGkDdzLqn6TqMbp3Sn33RGcHMDu80+9u3429MilKLc50bkEBPfx6pxTb7
 wPAWy8j33VdaAS8wEI8MZWOsNx6HfQiHdR3copvJuCfMVdcpXc52j5veD
 imuQOmVGWtcjliadaN90ZV9M/UCqR+PJgFZZRUSPTcKfHJF+XAWAONjUw
 FWCsP8QHSqISUyUwsZm+2BSo9rdZXSaInTavn0Flgo51eaW4xz0xG1D8W
 GwmFaTIFXfqvxnbtP/G5rTSPHIvyO1GHqhJuUDaQkpmmi0HgTqd8T3FFN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M64cCY9C
Subject: [Intel-wired-lan] [PATCH net-next v2] igbvf: add PCI reset handler
 functions
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dawid Wesierski <dawidx.wesierski@intel.com>

There was a problem with resuming ping after conducting a PCI reset.
This commit adds two functions, igbvf_io_prepare and igbvf_io_done,
which, after being added to the pci_error_handlers struct,
will prepare the drivers for a PCI reset and then bring the interface up
and reset it after the reset. This will prevent the driver from
ending up in an incorrect state.

Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v2: added newlines
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 29 +++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 72cb1b56e9f2..7ff2752dd763 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2593,6 +2593,33 @@ static void igbvf_io_resume(struct pci_dev *pdev)
 	netif_device_attach(netdev);
 }
 
+/**
+ * igbvf_io_prepare - prepare device driver for PCI reset
+ * @pdev: PCI device information struct
+ */
+static void igbvf_io_prepare(struct pci_dev *pdev)
+{
+	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct igbvf_adapter *adapter = netdev_priv(netdev);
+
+	while (test_and_set_bit(__IGBVF_RESETTING, &adapter->state))
+		usleep_range(1000, 2000);
+	igbvf_down(adapter);
+}
+
+/**
+ * igbvf_io_reset_done - PCI reset done, device driver reset can begin
+ * @pdev: PCI device information struct
+ */
+static void igbvf_io_reset_done(struct pci_dev *pdev)
+{
+	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct igbvf_adapter *adapter = netdev_priv(netdev);
+
+	igbvf_up(adapter);
+	clear_bit(__IGBVF_RESETTING, &adapter->state);
+}
+
 static void igbvf_print_device_info(struct igbvf_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
@@ -2920,6 +2947,8 @@ static const struct pci_error_handlers igbvf_err_handler = {
 	.error_detected = igbvf_io_error_detected,
 	.slot_reset = igbvf_io_slot_reset,
 	.resume = igbvf_io_resume,
+	.reset_prepare = igbvf_io_prepare,
+	.reset_done = igbvf_io_reset_done,
 };
 
 static const struct pci_device_id igbvf_pci_tbl[] = {
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
