Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EACB2681A5B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 20:25:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DC6481EA1;
	Mon, 30 Jan 2023 19:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DC6481EA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675106741;
	bh=VL20fEyle+yIrtGEZDzDT0T90mXdjDjowQVcHe0Ywa4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ilUvxvZN5riuLXfVIsuja04LMBz34T0mL/VTj/D3QKQ4WksSAe2LimKY4kBzrP1JF
	 s0shtGJtfA3bn2k2EqlHsgF8ldMuSmbEqda4tyrRTkvNregQD6vK/VithHjxcAwFs1
	 gwFlVon09VNrPr9QU2r/iddHbjbasAJQjTpB500UagIpXH19y5TSmbflJJqm4R/wrM
	 bezM0tVb/kcbUZpd6+JYiSqltJtrHx97vrdc7hO6AYJXxvN/u1L1BZNUEcewXmEc9y
	 QGYlY2yOo2T2P+eDei1L8nbLwUkPUuMNKpji7oOmlyD4UOwpdo8GHZd+yX0qh1zFK/
	 ZNbgOROil2yhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xrNyglOBuTIA; Mon, 30 Jan 2023 19:25:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 836CA81E84;
	Mon, 30 Jan 2023 19:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 836CA81E84
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 444AD1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 971206104C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 971206104C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QRedaO6eHVGP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 19:25:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC9AA6103E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC9AA6103E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="392198602"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="392198602"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 11:25:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="696534362"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="696534362"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by orsmga001.jf.intel.com with ESMTP; 30 Jan 2023 11:25:25 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com
Date: Mon, 30 Jan 2023 11:25:14 -0800
Message-Id: <20230130192519.686446-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230130192519.686446-1-anthony.l.nguyen@intel.com>
References: <20230130192519.686446-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675106726; x=1706642726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=59EN9EBQChdyKl4CTrfzax110ZA83yJ4R82Xj66jpyA=;
 b=G2UqZ3YX68+6nv6gJV9uuQEgKRGmo8xuip6sQhSNUgeQW5vV/KKB+GhZ
 HWgL3fTfbza3Nz/K1dgqXuyoASCyWqFEOzzkcxD3oFchrCBQ+4boFbkaV
 pG5/mF2tg8COIMMTLYmBaCe+fXrwY4eAH6ebF95Ckrq8QhffBhFDWbPNe
 QMbhbFFm8G13dw6XM+xUVjU6GKmnVUChNNj2UThqM2fi6UjGML/n3fqiJ
 cBIWhQuJOlmn2iSVRFVsTgg72CfzHTIRREuxAu3dt7LjiZQ66IWuwANsb
 veHuD7zCl9FAWSeurQtK0L3X4ZUMUzew1ktjIwJHtoUhubJVMXwFia3H8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G2UqZ3YX
Subject: [Intel-wired-lan] [PATCH net-next 3/8] i40e: Remove redundant
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
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 53d0083e35da..43693f902c27 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15589,7 +15589,6 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
 	timer_shutdown_sync(&pf->service_timer);
 	i40e_shutdown_adminq(hw);
 	iounmap(hw->hw_addr);
-	pci_disable_pcie_error_reporting(pf->pdev);
 	pci_release_mem_regions(pf->pdev);
 	pci_disable_device(pf->pdev);
 	kfree(pf);
@@ -15660,7 +15659,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_pci_reg;
 	}
 
-	pci_enable_pcie_error_reporting(pdev);
 	pci_set_master(pdev);
 
 	/* Now that we have a PCI connection, we need to do the
@@ -16218,7 +16216,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 err_ioremap:
 	kfree(pf);
 err_pf_alloc:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_release_mem_regions(pdev);
 err_pci_reg:
 err_dma:
@@ -16366,7 +16363,6 @@ static void i40e_remove(struct pci_dev *pdev)
 	kfree(pf);
 	pci_release_mem_regions(pdev);
 
-	pci_disable_pcie_error_reporting(pdev);
 	pci_disable_device(pdev);
 }
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
