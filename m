Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE0F681A58
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 20:25:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F70F417AD;
	Mon, 30 Jan 2023 19:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F70F417AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675106737;
	bh=2QGx2QAO8Fn0cVA7JS3whyv6y72hlSpC9ieVfUzBTFU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8xL7TU0RHGykut18AHw3RrDTvVVOwNYkWio+MvC8ORKdMRWwBZcmkf1fRXMRPW0rM
	 8boVChTrZfmSfncSYBCS4CqX6Z6+mwiy9l7H3PHKtysgMwSp6p4IK/o93S8ep8HMkB
	 Xvtby/PtoHgg25wawJ6Q29wfvglJ0gMvVxlJyNa5GIolbMckPe+0t4ZtkUhiDH/57e
	 y0Pvh9/KFlqKbRwdcYDW2cPGouCkQFPM61DeZrAWoNk3JTf437niLPv4p5TRLZ3Ef7
	 S2cquglFcyJo+oq3KdiffN+nKdPRlREGhxM42Y2k5BjtAQ8O631RmX3JaEpEx1BWm3
	 HmAaXMel5GbcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PACWRiYg_agf; Mon, 30 Jan 2023 19:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11C23417A8;
	Mon, 30 Jan 2023 19:25:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11C23417A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17F661BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52A3061042
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52A3061042
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xx3Wz2VhKa-S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 19:25:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A32906103C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A32906103C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="392198596"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="392198596"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 11:25:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="696534359"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="696534359"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by orsmga001.jf.intel.com with ESMTP; 30 Jan 2023 11:25:25 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com
Date: Mon, 30 Jan 2023 11:25:13 -0800
Message-Id: <20230130192519.686446-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230130192519.686446-1-anthony.l.nguyen@intel.com>
References: <20230130192519.686446-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675106726; x=1706642726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t8lklUiNEXhgvANHSJHXkRXdCA8NLFeDSPe4DRiRRoM=;
 b=fuG5h3r9GxST/BSa0bHifnLsmMUYNR6J6wrLyOKwEZFWMnROBQCK2Y3O
 2USXWFlLDjV7EXH+27UEihgyJz3GLQDg6YAgOUH2nUwLST4lttm5U5ZDc
 6jgF8ZZdVfjULI55A+6pSK15EVRRh9maQTLPX7986oy5VLDew2IhfCVQY
 Yvjv2RxAbe5G7pD93A3ujZYgI6oTW4DS+bWAx6nNNd7XPlJBgeasPU10z
 +/M5ZeIhTeujE1erxGxA1/F1nsONNPJ1BzXC7J54zFQSixsnMc5Wl+x/V
 uX/YBnxSjH345CLtGwkiLQWt2ZPa169Ij+Yquva3Z2K3X5Mlz8iMlh5Ss
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fuG5h3r9
Subject: [Intel-wired-lan] [PATCH net-next 2/8] fm10k: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bjorn Helgaas <bhelgaas@google.com>

pci_enable_pcie_error_reporting() enables the device to send ERR_*
Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
native"), the PCI core does this for all devices during enumeration.

Remove the redundant pci_enable_pcie_error_reporting() call from the
driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
from the driver .remove() path.

Note that this doesn't control interrupt generation by the Root Port; that
is controlled by the AER Root Error Command register, which is managed by
the AER service driver.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
index b473cb7d7c57..027d721feb18 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
@@ -2127,8 +2127,6 @@ static int fm10k_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_pci_reg;
 	}
 
-	pci_enable_pcie_error_reporting(pdev);
-
 	pci_set_master(pdev);
 	pci_save_state(pdev);
 
@@ -2227,7 +2225,6 @@ static int fm10k_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 err_ioremap:
 	free_netdev(netdev);
 err_alloc_netdev:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_release_mem_regions(pdev);
 err_pci_reg:
 err_dma:
@@ -2281,8 +2278,6 @@ static void fm10k_remove(struct pci_dev *pdev)
 
 	pci_release_mem_regions(pdev);
 
-	pci_disable_pcie_error_reporting(pdev);
-
 	pci_disable_device(pdev);
 }
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
