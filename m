Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DC8672CCD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 00:47:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3E9F8223A;
	Wed, 18 Jan 2023 23:46:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3E9F8223A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674085619;
	bh=OXYMu4ZtzKaSOnG8eq0vPDdcsauSEtppJf16Zg2wksk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pqRPXwnGMcig/hSlDLBjnU5GYrmpodnMuFzpHgvrI8K0k95vG8NjgukvSND650FAb
	 t0IpjDsUz8s0625XK9f45ByT9rImNltFa9O6Wk60f+QElLVTe6u+cXRAvViE/If3Mo
	 e0gSVGkWfyN+R4vlR0vYh1hcKh1Du7KsnnwsK5c1rnOVlu/dA2VR70d3zLda+H8xH1
	 +SRpJjDbGTV36a0F5VSxVrgnbBeK4Z1sEGvR3gnNR2Ba/XDA0CDKPzE2f9lYWP/RdI
	 Ei4bh6FiwIQ77XijSFg+hggGZdBiyZLzcHhk9eqJzGglr5S2f1dbqgmLM+Fb+2mXxw
	 4LAN0SAYYpq1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtKwvEyEKuXE; Wed, 18 Jan 2023 23:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A949582238;
	Wed, 18 Jan 2023 23:46:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A949582238
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E4B21BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 273BE4092C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 273BE4092C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ng0mevm4Czz7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 23:46:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E374405AE
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E374405AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2FD67B81F15;
 Wed, 18 Jan 2023 23:46:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADA93C433EF;
 Wed, 18 Jan 2023 23:46:48 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Date: Wed, 18 Jan 2023 17:46:05 -0600
Message-Id: <20230118234612.272916-3-helgaas@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118234612.272916-1-helgaas@kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674085608;
 bh=r7IHUtrt4W5zrGZVocaSLlMLC6+XXKVft9gvWcA0qEA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KzKMYlw9fGv+/adsbwH38hW9O4JEc2u4m7eaj3mVOMxGw2ynCo0NzS+FIpcg6Olwq
 MVryBQQATlqawf+Ipu1CdWji6gdhbjcy+foqJH0Yqc0MTRBA4mt1ouLN7KXdTfY6UX
 jyYPgYyqwOaR3S8FBz7H2ll9keheO13FcF1xH0y0CvVlFAtYqoYpXtq5g0ikg3jiCz
 FuDiFcJ4qwGqyhVR+NdW3f06CoZ7ZtG12J053lP66SC19UmnGX+FKDhUSGgooqncKU
 sFjmQinwDFWsjtYWpezelfV1mSA2Z/7G+W4vRs6eO+8D6b0utvpOUy/QZ2p1Iwetoh
 x98nk/s2AJ+Ow==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KzKMYlw9
Subject: [Intel-wired-lan] [PATCH 2/9] e1000e: Remove redundant
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
 drivers/net/ethernet/intel/e1000e/netdev.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 04acd1a992fa..e1eb1de88bf9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7418,9 +7418,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_pci_reg;
 
-	/* AER (Advanced Error Reporting) hooks */
-	pci_enable_pcie_error_reporting(pdev);
-
 	pci_set_master(pdev);
 	/* PCI config space info */
 	err = pci_save_state(pdev);
@@ -7708,7 +7705,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 err_ioremap:
 	free_netdev(netdev);
 err_alloc_etherdev:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_release_mem_regions(pdev);
 err_pci_reg:
 err_dma:
@@ -7775,9 +7771,6 @@ static void e1000_remove(struct pci_dev *pdev)
 
 	free_netdev(netdev);
 
-	/* AER disable */
-	pci_disable_pcie_error_reporting(pdev);
-
 	pci_disable_device(pdev);
 }
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
