Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FDA672CD6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 00:47:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA2948228A;
	Wed, 18 Jan 2023 23:47:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA2948228A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674085636;
	bh=YlMKwlmVGMakNhLxnPpYKYDxQyitCRBsvfZ6dtnVxps=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c90y5SIrtYdWWaffPPyn+JuJ0GWV9ib6KI/37xnDr/07EpbhGey5EUzaE3k0P/7Qs
	 t3464cZLaiUcJwfIAeHaAfAIxtTngYsCfIljccLJVA1eR/tlK/3qiuXR2rHDayh7iN
	 cmfQQrdiVdUvhQENac+6E6vBf/zX2Mdg1rfenAxGtOBVgab9pvDbnGC+z0pA0KJ5iL
	 BmzN5ZnsKCX7kl6HaaC65tubCYdABmqmaSLpCPc3qyxFwWST8J72+XmDE7b3SxhYD8
	 ltBD3Aip+6EyYZzjMutbmJKyx/73CliqaLju8uY3G83phnX59yQGsQOCamgUMga/D+
	 k9+njrIsR/Tqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C5_kynqKU5yk; Wed, 18 Jan 2023 23:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4CFD82238;
	Wed, 18 Jan 2023 23:47:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4CFD82238
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8DF1BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58C736109A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58C736109A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gi0KnhwGtw7d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 23:47:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C261260B1E
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C261260B1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2395661AC1;
 Wed, 18 Jan 2023 23:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBA28C433EF;
 Wed, 18 Jan 2023 23:46:59 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Date: Wed, 18 Jan 2023 17:46:10 -0600
Message-Id: <20230118234612.272916-8-helgaas@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118234612.272916-1-helgaas@kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674085620;
 bh=Gfwvn53sy7/1OA4WjgdfWmy9e90PwOSc2SBfrJghS2M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DvjHgKGekNLdHpc8ojQEuGgV8t992eddxElqZ6jWyK8yPZuKe/IFbrugnJBS/rPNB
 xTsHlc5CCJBNFxgVC3elNiAg1py5be+Sh+pmWBA/ExVfaqS+Xnd16tlP/mT8QwbOXc
 8Yo6qSPa8aIIps+GK4d0IW7yIEMY/vzDPcRhCgnRXQYC8O5/MSvoUm9zQkVpVrr+u6
 GVMjjC5Gd5mmKnUks9z0D7adsLqBDpeFwXZ2U7nd7XjRTE4sNRq9snguid573PVDEO
 POhSJ7MP4/1voLyfWToyNTbT0I5EfJo/HR3xt669qJzzh31eomDqXdrOcYC7gE291w
 Rxqbu4/5E5dMg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DvjHgKGe
Subject: [Intel-wired-lan] [PATCH 7/9] igb: Remove redundant
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
 drivers/net/ethernet/intel/igb/igb_main.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 3c0c35ecea10..c56b991fa610 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3194,8 +3194,6 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_pci_reg;
 
-	pci_enable_pcie_error_reporting(pdev);
-
 	pci_set_master(pdev);
 	pci_save_state(pdev);
 
@@ -3626,7 +3624,6 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 err_ioremap:
 	free_netdev(netdev);
 err_alloc_etherdev:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_release_mem_regions(pdev);
 err_pci_reg:
 err_dma:
@@ -3837,8 +3834,6 @@ static void igb_remove(struct pci_dev *pdev)
 	kfree(adapter->shadow_vfta);
 	free_netdev(netdev);
 
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
