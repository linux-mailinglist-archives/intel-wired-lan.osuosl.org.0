Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F24606A6B25
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Mar 2023 11:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 960A0610F9;
	Wed,  1 Mar 2023 10:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 960A0610F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677668247;
	bh=EdU4v2JXZzE75pFhCM7Qjq1DCbMhGWFpGrm3ImV9DaA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rDJ7HtnFCAzxLnrUGFPNhX4ZavGEOIjGUcSrmy/5zCHgoamljOW/WvZQ0M0wb9zav
	 XYJMhgnAwv44+HR5CGciIuNK4Z85UBc7DE0h0au244aHv6/lwO2PFVsORWUte0v1LX
	 /RZw/mEZi+YE8e4X9/1yPVNP50cjuvWU4W7JLdipOxnxmBxv1WpixL8+bgGTy+gNpg
	 blbK9VqJl4tFTbGmO4rThq0guHi7/3vynf2ewofLumoKzsicXntLuOMq+Hesxtv4MH
	 U3ic0/kZ/22UGQy0tPIxWMULo4LlNTLfZmOBdy+QF+P0cpSYzKvvS/sQWNBA/F4T8U
	 cOVwJv9c2spRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ej4DKeDhG1LU; Wed,  1 Mar 2023 10:57:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64B4B60FB0;
	Wed,  1 Mar 2023 10:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64B4B60FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D10D61BF964
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 10:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A48DB60FB0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 10:57:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A48DB60FB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OQs1_-Ann7ZU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Mar 2023 10:57:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CECE60F4C
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9CECE60F4C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 10:57:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="336672232"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="336672232"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 02:57:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="1003628312"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="1003628312"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga005.fm.intel.com with ESMTP; 01 Mar 2023 02:57:18 -0800
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  1 Mar 2023 11:57:05 +0100
Message-Id: <20230301105706.547921-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677668240; x=1709204240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xoBgfdiVlNiGekHOtUAetPQpfmJUD3piAA6H+Bgb+d0=;
 b=RakziSTl+pv7SWy90PgQi1a+zYb4qRJDFxd+GPp7ir3qQ3cuuYTPIEEx
 LWS8u3p0GF/aRuvWNm7wZJllPVZCVhWWW3m8K9ps985d5VEJCR4yEECyN
 QYsnapcM+k+Hndq9xsT/TU6T+hYg017SlBVX2QAJdaEIflUGNF0cxjkwb
 z/SAKLNYlnST4Ea/G9xd4W3FXiKDItqIyIKedLuj+GrtTpkyht6JSPvta
 Lv6DTivScMQz3zz8p5Gp5q+mifXmquZKrU2bJKNB2lYTLzlfIZPn0p1Cy
 2+uZc23VayO+9G8+gT8DwlvH1ujj1UeO1W6XP4KvEO4E+B+bvi9pBGSf2
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RakziSTl
Subject: [Intel-wired-lan] [PATCH net-next v3] igbvf: add PCI reset handler
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
 Michal Kubiak <michal.kubiak@intel.com>,
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
and reset it after. This will prevent the driver from ending up in
incorrect state. Test_and_set_bit is highly reliable in this context,
so we are not including a timeout in this commit

This introduces 900ms - 1100ms of overhead to this operation but it's in
non-time-critical flow. And also alows the driver to continue
functioning after the reset.

Functionality documented in ethernet-controller-i350-datasheet 4.2.1.3
https://www.intel.com/content/www/us/en/products/details/ethernet/gigabit-controllers/i350-controllers/docs.html

Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
---
v2: added newlines
---
v3: changed commit msg 
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
