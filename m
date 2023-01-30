Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C614C681A69
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 20:26:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64D7241866;
	Mon, 30 Jan 2023 19:26:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64D7241866
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675106763;
	bh=gg2P1xb+ZtY8wQq8i4ynhE7Qk8S0KH7GGKOiIFgeH0g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BIFimERR7bzq/CmxGf8AZZTTyIKC7hYVhvPbvHl/Z5WtFjZBkbQDSbguEUXOcCXsq
	 w0ZF+AJB70x83eW1T5AWFH8PV5tvxpprZTDUrJaMWvE88nkocRaD8ajJXa3ytzewoB
	 onR/qf5EDjNmgTCwIwi6oRkK5RdumiKZ4tVKRiPAY2xZ9NHsn6Dnp1VxRegzrXCczf
	 ys6YHSr0VzlmMf1vQAKE1eNdy/38pxl+Ftp+eT/r/OwT6hD1sz1yyP/Yddv/bnk8ol
	 5SVqLC5UPiso5xHAqNIwKO1axLaHUSf6uO/nGyIibAKW2Y0q+uIMMlwRiPJkmi2QcD
	 7aEVC4+UFw4Zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YazJ3Qrg4dnv; Mon, 30 Jan 2023 19:26:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F00A4185B;
	Mon, 30 Jan 2023 19:26:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F00A4185B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B2661BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F56761043
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F56761043
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySJyajH71yrF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 19:25:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BC8B61049
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8BC8B61049
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:25:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="392198636"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="392198636"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 11:25:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="696534380"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="696534380"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by orsmga001.jf.intel.com with ESMTP; 30 Jan 2023 11:25:26 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com
Date: Mon, 30 Jan 2023 11:25:19 -0800
Message-Id: <20230130192519.686446-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230130192519.686446-1-anthony.l.nguyen@intel.com>
References: <20230130192519.686446-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675106727; x=1706642727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zVCRyMGbm/RcCg4vezyeSOb0ioIrPkOFiSFnfEN/PqE=;
 b=AlQY++MaT+xXP60zp0PqcFGW2BYBuNnHecJLhoIGbQyUr4uXI4ajR5gd
 0AJdKAf5lWXNX54yYx3YIwBmYcOqRFQni+Fen+aK1ZA3a0gFRycdpR6cq
 OvaGg+/UiAswl5PEnAWcZIGTcXkFtfN13ol77pZc+AaL9NnukNyXifJkC
 1r9J02WFs23KcOkzDdihYI+Ya01j2pwzDAu3eprYjMEQK1K2On13Rgfh3
 Fqqq4buA53dZ9E+1fE66WM5KA2DmOL6Z0xs9AdzyhGgl1ZKC9yWlcangE
 tLlT3V1XekCTU005cn8PgF0skzowE472qpO2smtNxm0fFoVGBCGJdU6Zx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AlQY++Ma
Subject: [Intel-wired-lan] [PATCH net-next 8/8] ixgbe: Remove redundant
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 43a44c1e1576..992b7ae75233 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10809,8 +10809,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_pci_reg;
 	}
 
-	pci_enable_pcie_error_reporting(pdev);
-
 	pci_set_master(pdev);
 	pci_save_state(pdev);
 
@@ -11238,7 +11236,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 	free_netdev(netdev);
 err_alloc_etherdev:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_release_mem_regions(pdev);
 err_pci_reg:
 err_dma:
@@ -11327,8 +11324,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 	free_netdev(netdev);
 
-	pci_disable_pcie_error_reporting(pdev);
-
 	if (disable_dev)
 		pci_disable_device(pdev);
 }
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
