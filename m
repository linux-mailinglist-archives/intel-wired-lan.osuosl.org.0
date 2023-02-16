Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D072369943A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 13:24:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBE1581FB0;
	Thu, 16 Feb 2023 12:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBE1581FB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676550264;
	bh=MvxDi9tvopPT+51Hl2tp3db5tZMWAxbRwnVVQRa3lnc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0RzkWCa2irhClr50qbfhVyeoozWPWL8Wgx3QJHOfn5aI8DybppD/8Sz2p0NtyxdtA
	 VvChSvxlirfuvnzJ1IWcc2SpaaMYJyax8wU47ewsAJT/32VZj8hNIzNZFdFXlMCTSi
	 TwI2+treyQSPjNhv0RaE37zSNChmMR2vtuVjZ2whM10v6SzB0VypXQL020ayzwLk4l
	 qUldpYQYhCFivg07dHJIdeM3UMxI4uqwVsIryvxlPx8tAaooeftQxpq47q22kPcW8K
	 oYnqH+1wuhyFWKGA6E/o/J/fAaIWvIyg53WfUkZbMskoCNqP7pSohZNILA1jQFXduj
	 +NkqGTuV823KA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptslFMfKebpt; Thu, 16 Feb 2023 12:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE9C281411;
	Thu, 16 Feb 2023 12:24:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE9C281411
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 240771BF488
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 12:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B19360A6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 12:24:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B19360A6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tUQ3zKvzQYBa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 12:24:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 182A260783
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 182A260783
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 12:24:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="359132204"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="359132204"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 04:24:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="647665779"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="647665779"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga006.jf.intel.com with ESMTP; 16 Feb 2023 04:24:16 -0800
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Feb 2023 13:24:10 +0100
Message-Id: <20230216122410.337212-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676550258; x=1708086258;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D/8j15Emz10mV4djFpfrz3IqiYYRAIG708WXz55Qj0k=;
 b=IMSrMvWJ7tcZSGVCZXUJRTS/2wxvpZcYmJMxok9jrebMmfhf4rxfKNDR
 ClG6rxCnnu1BtBopahEBdbetHHrHTIIVo6raWtZYk0GI5ivSF0EoeWYAb
 iWM0AYFIWkqsetf0t8PpJFGWHCDpd1nkOtjnQb98SZrc+48m7FYdOiQgl
 jCdxYGNn2neTS81FFRbmBL9iuDOfRmY0ryGN21LkYxyTqOXON8mPUSzdI
 ztGWGalzbIbrkS7Pd+LFs23gtyWW2j/iZ+mVX778Kk32040A7+ihlo383
 ywXqGlwOTAMxqXh/u7WHbWEVyKBg61i77ZBoHXBE13/DAa++0QLfyPWa5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IMSrMvWJ
Subject: [Intel-wired-lan] [PATCH net-next v1] igbvf: add PCI reset handler
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
 drivers/net/ethernet/intel/igbvf/netdev.c | 27 +++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 72cb1b56e9f2..a89fa422cc5c 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2593,6 +2593,31 @@ static void igbvf_io_resume(struct pci_dev *pdev)
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
+	igbvf_up(adapter);
+	clear_bit(__IGBVF_RESETTING, &adapter->state);
+}
+
 static void igbvf_print_device_info(struct igbvf_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
@@ -2920,6 +2945,8 @@ static const struct pci_error_handlers igbvf_err_handler = {
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
