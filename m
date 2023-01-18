Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3181672CD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 00:47:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEC0E4190C;
	Wed, 18 Jan 2023 23:47:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEC0E4190C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674085628;
	bh=7CsnRT3cBKZtJd6CbQITYV1k/LlEd0TizhKcnwZXVtc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QM/YHtvwJ6he8IYAr5haNFLUNh457eMALeZIKCDDzvQdR/qtsNZmiXjf9Rcs13w+l
	 fmW6NEquyBUvsxlLTF0S/lYh58+GtOFcAqbJs8XU/xJFPJDCTUO1q2VPRKxLitPcWX
	 28oPgzLmlUSWFrdtbGikrMmFGNXx+B0yPbYhH6oyO3E+l7Jg+Z5osIJpKbkA5OksHY
	 1paYyTTZkKmHWdKXhE/G0/m6676RpOr7MCrn6Vsfpnk/46stKQhxRUxUjevqk4FAfI
	 b53jUNZDY3IRci/QukU0WtunMimejncmwHcAc4zYx/P48rAg7SEkNCU5H2zDAOzz1r
	 V63FtNcpfFPow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8IyJpRLR5_Fr; Wed, 18 Jan 2023 23:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62B7C4092C;
	Wed, 18 Jan 2023 23:47:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62B7C4092C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA9CC1BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B62DA8223B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B62DA8223B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HjlUVI7FUjDp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 23:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05C0782238
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05C0782238
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:56 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 30DABB81F6C;
 Wed, 18 Jan 2023 23:46:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DF8EC433D2;
 Wed, 18 Jan 2023 23:46:53 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Date: Wed, 18 Jan 2023 17:46:07 -0600
Message-Id: <20230118234612.272916-5-helgaas@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118234612.272916-1-helgaas@kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674085613;
 bh=AzdQucESujCjaM/FV302gVI8jy+O9nQfIiRUb375jaI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eXtdJ/IB16lmVAEkHnK0pRbnieB+wPnG20X6yAZh/xJCJdFx4qcyHHCVjqZP82ofK
 +uIw0mNsmjxtbDD0mi569vDvBvOh1lSIYgq3Do2GV+5ws1MfgTnrLwTW2M068dLyi5
 M4uDGkz3IvNrAJ51hOjm+BirkD8GcUzQd4SYm9fn/ssYB3g0gNP1GCL3h+hmBsw241
 aBFLDIt3oCh3PxQMvRIb3gks0lDW5ttxlnMUJi8igbgGQQpFixbCEcKhXk0T5oTbSD
 KOg/0UdeayJuVu5krDf64bdkMrwQ0X/tgtrN0BjGxTYduVrhsikf6nwc/VcoYoOpvD
 wUbK9uFbXqVzg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eXtdJ/IB
Subject: [Intel-wired-lan] [PATCH 4/9] i40e: Remove redundant
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
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
