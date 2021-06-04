Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA35239C34E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 00:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0CB4415F2;
	Fri,  4 Jun 2021 22:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 92ivlHFMSGt5; Fri,  4 Jun 2021 22:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D57B94063A;
	Fri,  4 Jun 2021 22:10:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41D881BF30E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7903401D3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cPFqUameJpgy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 22:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCF7240215
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:10:06 +0000 (UTC)
IronPort-SDR: byFncuwh8S1JXTK3tK6wKMQmMx1qovMgQv2hE8WW8mxtC7FVjyRBQEEX63m5DO/s9uyFbTP817
 bw84rXRrzGsg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204192247"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="204192247"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:10:06 -0700
IronPort-SDR: xuzL01V2nMA+eYKEDD5UdRsBwS51/ycgmAtkBQ4qOxUrH7d9tdB60HkynLeFFHmyK+EvmXHFnA
 Ya9HAbcsHN7w==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="439326618"
Received: from lmrivera-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.24.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:10:05 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 15:09:31 -0700
Message-Id: <20210604220933.3974558-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210604220933.3974558-1-vinicius.gomes@intel.com>
References: <20210604220933.3974558-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v4 2/4] PCI: Add
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

Adds a predicate that returns if PCIe PTM (Precision Time Measurement)
is enabled.

It will only return true if it's enabled in all the ports in the path
from the device to the root.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
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
