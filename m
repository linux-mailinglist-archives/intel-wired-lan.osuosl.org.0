Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C485E672CD4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 00:47:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 660ED8225B;
	Wed, 18 Jan 2023 23:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 660ED8225B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674085632;
	bh=sCyD52zXNrQB/yInoNgRnwAv5flxdu70hZoGVYyoXLM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BWnygGBkwRjkpgnGzLfX4DltI/xJNT/8OMmNMI3Yhg/BQbvyJ/tdLrKeQskHqwY4T
	 5aJVtkq5K2xurGleyebhZoQQemdu9n96m+aU7aBhqGKwt7ViDlSJgQ1c+LUFWjcB5y
	 LD8G2PoSL0EBW+DX25K15UyeUhnBUOpf82XvKpIziB0aJTwRJna3JTiA2s10sNnQ7t
	 +eoy+pCddJuCZvGWA9LNMqj/bSF/mWnl4c7fJtbP4s9Hu7qpzN9BrDEnL3rI1V3fxk
	 xJyrS2cOD1w+4FPHkNcBHeCW0+QkJ24E9EnGWFuPKP0GPr8/B8+crAK54ks5P0AWiu
	 ltE2I3bJAdaUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xp7xrar6oLxm; Wed, 18 Jan 2023 23:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B9898223B;
	Wed, 18 Jan 2023 23:47:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B9898223B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0529A1BF870
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D492B6107E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D492B6107E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNYK4sjqAeaR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 23:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EC9C60B1E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EC9C60B1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:46:57 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2A8F461AC4;
 Wed, 18 Jan 2023 23:46:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB45FC433D2;
 Wed, 18 Jan 2023 23:46:55 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Date: Wed, 18 Jan 2023 17:46:08 -0600
Message-Id: <20230118234612.272916-6-helgaas@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118234612.272916-1-helgaas@kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674085616;
 bh=RCRB2Sodh20rzeiGD9Rq4QFz+CL1puYq259qdSn4tqs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gL7QXTAN2TyKR8sIPSZ7euQKX3zxOZLjUBUonjKrKa6I9Ks21AyGS6fb25oOH+VCZ
 kf53JEp27CdnYsLGRstGeo6mJErrzLolxHJXk/IU+SRbosCUHxNrPKjIEL1F2GKYHW
 sfRnw65gAhwfuHjdvb5f5qpSLvpvm7RBHIrBQORvI/NJ5WqHPsnQKgRgmu+W6jHo7g
 XOstWhB4nUX7MLI5HLb0E5JYyWNR5fpWPANAXg0wgWpEyxEC4FN3XwosaKy8Volzf+
 M/0ywd2v3SJ1kBxVbKDJghimHpeUapKEYwmE44XAxAvr7os+FNRo7uKg3+N5L0Xbwn
 erzGzPmLkncWw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gL7QXTAN
Subject: [Intel-wired-lan] [PATCH 5/9] iavf: Remove redundant
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
 drivers/net/ethernet/intel/iavf/iavf_main.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c4e451ef7942..2835af20ec19 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4876,8 +4876,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_pci_reg;
 	}
 
-	pci_enable_pcie_error_reporting(pdev);
-
 	pci_set_master(pdev);
 
 	netdev = alloc_etherdev_mq(sizeof(struct iavf_adapter),
@@ -4956,7 +4954,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 err_ioremap:
 	free_netdev(netdev);
 err_alloc_etherdev:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_release_regions(pdev);
 err_pci_reg:
 err_dma:
@@ -5172,8 +5169,6 @@ static void iavf_remove(struct pci_dev *pdev)
 
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
