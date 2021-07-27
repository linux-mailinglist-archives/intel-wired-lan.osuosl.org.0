Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436243D6CE1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jul 2021 05:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3F5B403B5;
	Tue, 27 Jul 2021 03:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0q3RqBDi2eSk; Tue, 27 Jul 2021 03:37:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D564340377;
	Tue, 27 Jul 2021 03:37:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 337C01BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 03:37:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22B24607CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 03:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aNmdykR-Nmhe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jul 2021 03:37:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A64F607D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 03:37:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="212348871"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="212348871"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 20:37:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="474230290"
Received: from nmanikan-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.209.99.32])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 20:37:19 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 26 Jul 2021 20:36:55 -0700
Message-Id: <20210727033657.39885-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727033657.39885-1-vinicius.gomes@intel.com>
References: <20210727033657.39885-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v6 2/4] PCI: Add
 pcie_ptm_enabled()
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
Cc: pmenzel@molgen.mpg.de, linux-pci@vger.kernel.org, richardcochran@gmail.com,
 hch@infradead.org, netdev@vger.kernel.org, bhelgaas@google.com,
 helgaas@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a predicate that returns if PCIe PTM (Precision Time Measurement)
is enabled.

It will only return true if it's enabled in all the ports in the path
from the device to the root.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/pcie/ptm.c | 9 +++++++++
 include/linux/pci.h    | 3 +++
 2 files changed, 12 insertions(+)

diff --git a/drivers/pci/pcie/ptm.c b/drivers/pci/pcie/ptm.c
index 95d4eef2c9e8..8a4ad974c5ac 100644
--- a/drivers/pci/pcie/ptm.c
+++ b/drivers/pci/pcie/ptm.c
@@ -204,3 +204,12 @@ int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
 	return 0;
 }
 EXPORT_SYMBOL(pci_enable_ptm);
+
+bool pcie_ptm_enabled(struct pci_dev *dev)
+{
+	if (!dev)
+		return false;
+
+	return dev->ptm_enabled;
+}
+EXPORT_SYMBOL(pcie_ptm_enabled);
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 21a9d244e4e4..947430637cac 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1622,9 +1622,12 @@ bool pci_ats_disabled(void);
 
 #ifdef CONFIG_PCIE_PTM
 int pci_enable_ptm(struct pci_dev *dev, u8 *granularity);
+bool pcie_ptm_enabled(struct pci_dev *dev);
 #else
 static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
 { return -EINVAL; }
+static inline bool pcie_ptm_enabled(struct pci_dev *dev)
+{ return false; }
 #endif
 
 void pci_cfg_access_lock(struct pci_dev *dev);
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
