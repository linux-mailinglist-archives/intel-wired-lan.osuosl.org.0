Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 528B5672CDE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 00:47:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E064B8224D;
	Wed, 18 Jan 2023 23:47:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E064B8224D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674085648;
	bh=xeimzwK64gTb35w8Xz9gaDAf7t9lI4XSUZrhM2G+sp8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K6pCGu8nYiAtbrHvbnO4OvCcgAFDvfRHbkXKNZDjeVSDNUBpoe2MY6s0zUVwwuj+N
	 ICd+yVHY5c1frkgkkVafuVGJOT0zSxOAUvIuBXXCUF9xFfkd3JTN+osy2xBz/nJFsu
	 xmJ6vjjxVER7+ktSMHssrvKt8lOiywWh4q8XvhZZCl+iWa0h78t18lK89jtJlIPy+J
	 PnZRL4GotVU9jq6mQfHw4cOZ4nOulpzKkISRwHl+yluXmUSLIb5O2aQL/N1MFsy5N6
	 Ros4gFAI/PXywvGaQuieqLh47QjwEdhNcJLsfh1dqnIMKTqix7YA/aSxBGcljVYsKO
	 E5w4o0gE9S8xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uqYVyIUHaFVd; Wed, 18 Jan 2023 23:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E88638223A;
	Wed, 18 Jan 2023 23:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E88638223A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 601D31BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AF206107E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AF206107E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XhO1lBFY01W9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 23:47:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9614660B1E
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9614660B1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0256561AC2;
 Wed, 18 Jan 2023 23:47:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42631C433D2;
 Wed, 18 Jan 2023 23:47:04 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Date: Wed, 18 Jan 2023 17:46:12 -0600
Message-Id: <20230118234612.272916-10-helgaas@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118234612.272916-1-helgaas@kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674085624;
 bh=pLbQ/HGmJ0E41EsVj1qrzz7ZQK/1deMQHyH8FrWG9c8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y7PPT4VstGXz7JfMrERSl7oaxAJY3RMktbR01aCo+HyYqZ9D2WZJviA16585gX9bp
 Z3o29/mZMxhs+Uq8V6YqtIWyxQDqFji5V79Xew/JblsbBoNcUiIDIN4EMUSdpCI/CC
 HYarjE0Y6q2IbZ8iqFE/1WNbGYRVYGXf6FxNgPeJqNsLeqcvBSrsijazrc+os6G+L7
 Zuf//lsgWYMME5bhkdlxLUi7nnwG2umUJSUZqMaIbhJTNuD1Cna6VvzQjAa7aXcOvE
 UXWwGwEb/j9k6vMknIpjxQKwfGJrxcM+ELewyuPWOG7zANRIUmnNYA0C/yzykvFpyb
 5kW1Gcz0QhwiA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Y7PPT4Vs
Subject: [Intel-wired-lan] [PATCH 9/9] ixgbe: Remove redundant
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
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
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ab8370c413f3..cb718c6216fc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10808,8 +10808,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_pci_reg;
 	}
 
-	pci_enable_pcie_error_reporting(pdev);
-
 	pci_set_master(pdev);
 	pci_save_state(pdev);
 
@@ -11237,7 +11235,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 	free_netdev(netdev);
 err_alloc_etherdev:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_release_mem_regions(pdev);
 err_pci_reg:
 err_dma:
@@ -11326,8 +11323,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 	free_netdev(netdev);
 
-	pci_disable_pcie_error_reporting(pdev);
-
 	if (disable_dev)
 		pci_disable_device(pdev);
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
