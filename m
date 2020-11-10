Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 502192ACF6E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 07:10:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F06AC866C9;
	Tue, 10 Nov 2020 06:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ozOzean4F5Vf; Tue, 10 Nov 2020 06:10:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20E8C862C1;
	Tue, 10 Nov 2020 06:10:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B087E1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 06:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD264860FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 06:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gV41PFnzFNK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 06:10:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E797860E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 06:10:31 +0000 (UTC)
IronPort-SDR: pWKkjSsf6T8OelAKcI0/s1LHoFIEEkqaiS+6my5FyTpYlRc1yZt7NAsDvBcrOFCo54Iw84VFJd
 okd3wZ58fEEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="170035029"
X-IronPort-AV: E=Sophos;i="5.77,465,1596524400"; d="scan'208";a="170035029"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 22:10:30 -0800
IronPort-SDR: ixU8/TOHj72yFPDYg5Uuv4nE0mey6MHshR4KGVcs0j0Whiuupk6WizQFXSwIP0JMibFIpmrLRo
 fqiYcJM6+SEg==
X-IronPort-AV: E=Sophos;i="5.77,465,1596524400"; d="scan'208";a="365752854"
Received: from eevans-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.97.1])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 22:10:29 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Nov 2020 22:10:17 -0800
Message-Id: <20201110061019.519589-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201110061019.519589-1-vinicius.gomes@intel.com>
References: <20201110061019.519589-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v2 1/3] Revert "PCI: Make
 pci_enable_ptm() private"
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make pci_enable_ptm() accessible from the drivers.

Even if PTM still works on the platform I am using without calling
this function, it might be possible that it's not always the case.

Exposing this to the driver enables the driver to use the
'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.

This reverts commit ac6c26da29c12fa511c877c273ed5c939dc9e96c.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/pci/pci.h   | 3 ---
 include/linux/pci.h | 7 +++++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index f86cae9aa1f4..548e93aca55b 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -581,11 +581,8 @@ static inline void pcie_ecrc_get_policy(char *str) { }
 
 #ifdef CONFIG_PCIE_PTM
 void pci_ptm_init(struct pci_dev *dev);
-int pci_enable_ptm(struct pci_dev *dev, u8 *granularity);
 #else
 static inline void pci_ptm_init(struct pci_dev *dev) { }
-static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
-{ return -EINVAL; }
 #endif
 
 struct pci_dev_reset_methods {
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 22207a79762c..18ce0d3eaecc 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1596,6 +1596,13 @@ static inline bool pci_aer_available(void) { return false; }
 
 bool pci_ats_disabled(void);
 
+#ifdef CONFIG_PCIE_PTM
+int pci_enable_ptm(struct pci_dev *dev, u8 *granularity);
+#else
+static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
+{ return -EINVAL; }
+#endif
+
 void pci_cfg_access_lock(struct pci_dev *dev);
 bool pci_cfg_access_trylock(struct pci_dev *dev);
 void pci_cfg_access_unlock(struct pci_dev *dev);
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
