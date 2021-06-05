Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C04839C45A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 02:24:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02CF3607A3;
	Sat,  5 Jun 2021 00:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EvFrtLFgVBuT; Sat,  5 Jun 2021 00:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1808D60719;
	Sat,  5 Jun 2021 00:24:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 321981BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BA2F401C1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipv36QC9opbQ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Jun 2021 00:24:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D40FF40388
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:10 +0000 (UTC)
IronPort-SDR: hg0B4P3l1ut/qhuendVYpSRBaiuS0KHVno3HTi9/Or1PhA5pOfrDzqxuPZRztGq4aS7QY370EL
 YX4WpVCn9T8w==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="290021944"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="290021944"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 17:24:09 -0700
IronPort-SDR: nItuFDDskkZO7rEAPbsgRKx90Y+Uuc+v8r6qvpdzeZWGgJbfWTWuCA7UAeW3viHq3OrhAEc6m1
 gibixOyC2iWA==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="446862949"
Received: from lmrivera-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.24.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 17:24:09 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 17:23:54 -0700
Message-Id: <20210605002356.3996853-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210605002356.3996853-1-vinicius.gomes@intel.com>
References: <20210605002356.3996853-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v5 2/4] PCI: Add
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
Cc: linux-pci@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 netdev@vger.kernel.org, bhelgaas@google.com, helgaas@kernel.org
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
index a687dda262dd..fe7f264b2b15 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1619,9 +1619,12 @@ bool pci_ats_disabled(void);
 
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
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
