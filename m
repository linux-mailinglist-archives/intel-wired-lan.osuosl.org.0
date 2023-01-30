Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F22B681A66
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 20:25:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2337181E9F;
	Mon, 30 Jan 2023 19:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2337181E9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675106754;
	bh=LAh47HzkKhpnSRNqzClyl236LjLDXGHGNLQL4ECjx5o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EIDmkhvQx60bYg6r0APMewPqGAzfOkt6MudYtc1tfrK8kupDbeuDM0J9bhPn690o6
	 pCDFpJ4dBUS/NN1i1ER2PBzCHjAlAoGkXA2B/SYIoos1+1CGD0tOXiGE24P20pyWnT
	 n2T/EAdJhSfwum0oZR+tjSR+iyo5NhgeDDIvXK1OFUZXf86mEtTkhSBCprafz6Q8rG
	 KJvWt5Npe5GB7CkgIWW7ZdzRmLgFSPxV3cFm6mK49iz2fh9vWYfqII+E/62To+EER6
	 EZ4vDPw6XE9Bqe5pszVyfVx8rhhSkU9kcNJjy0XwLsrydNRX4tuYxBOKEv1SqgWPFn
	 Odn73yKcU/C0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UvlQbU43DGuJ; Mon, 30 Jan 2023 19:25:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1578F81E84;
	Mon, 30 Jan 2023 19:25:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1578F81E84
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 69D4A1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42C0F61042
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42C0F61042
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zj7UrzVMftjn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 19:25:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FEB26103C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FEB26103C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="392198626"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="392198626"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 11:25:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="696534376"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="696534376"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by orsmga001.jf.intel.com with ESMTP; 30 Jan 2023 11:25:25 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com
Date: Mon, 30 Jan 2023 11:25:18 -0800
Message-Id: <20230130192519.686446-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230130192519.686446-1-anthony.l.nguyen@intel.com>
References: <20230130192519.686446-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675106727; x=1706642727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IvEeE5pG6QUgFcRFdBdI2Kw1MlZctNMcLkayKSKY7eg=;
 b=hru3pCFcChy6CSCeLIIjP5KYZl4x2o1gh/arIaXwXLrHPoGl/I8KjAdk
 MQkZxmiE+pYPxRJ11CDOdofG3bj0MplCKorvkKtvLwomubGFcCJzn4rfV
 o+Hv0BQ13wgKVeWpTQN3M9f24NoFVN35u18nx3jVZ8ohViHLU/GpQ0bqb
 ZQxlV43I1q5pXVP2yh78oYqnyvWHfQxlxrORVDZjKzauha97G9M7ztzWS
 6zDpI1FvxQ+DSm2EH3sxE4eb1U1q0BErMxWGcRQOroc5rdrDsBXNVvXzI
 BLJH0br2CeSaibDZdpVRtxY8E/+t6aT/B1ucXZuH2H/4U8JsE5JOt1sHv
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hru3pCFc
Subject: [Intel-wired-lan] [PATCH net-next 7/8] igc: Remove redundant
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 anthony.l.nguyen@intel.com
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
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e86b15efaeb8..6ddcbc8b7b6a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6434,8 +6434,6 @@ static int igc_probe(struct pci_dev *pdev,
 	if (err)
 		goto err_pci_reg;
 
-	pci_enable_pcie_error_reporting(pdev);
-
 	err = pci_enable_ptm(pdev, NULL);
 	if (err < 0)
 		dev_info(&pdev->dev, "PCIe PTM not supported by PCIe bus/controller\n");
@@ -6640,7 +6638,6 @@ static int igc_probe(struct pci_dev *pdev,
 err_ioremap:
 	free_netdev(netdev);
 err_alloc_etherdev:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_release_mem_regions(pdev);
 err_pci_reg:
 err_dma:
@@ -6688,8 +6685,6 @@ static void igc_remove(struct pci_dev *pdev)
 
 	free_netdev(netdev);
 
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
