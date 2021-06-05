Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E95039C458
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 02:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 042A140384;
	Sat,  5 Jun 2021 00:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4dPuLDG--JoR; Sat,  5 Jun 2021 00:24:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E5F6401C1;
	Sat,  5 Jun 2021 00:24:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 990601BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87C91401C1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qWhYJt7p7xMe for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Jun 2021 00:24:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DD0F40384
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:10 +0000 (UTC)
IronPort-SDR: kkbCD9T5VbtujjpNNWzgp/vMvyccCwiI5ESlQ0RDex35faC91TEiF/S2RKAWjZPsoDn/t6W0dC
 t18YgQrNs2mg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="290021942"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="290021942"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 17:24:09 -0700
IronPort-SDR: xaSbUVUjApKeJ2mgjJhrrTMU2VJ4yS9BRpBy75wjpenLgTMRSyQUqCMzUq3MBEBhIMcIuTCVdo
 K0ekVQYxpYoA==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="446862945"
Received: from lmrivera-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.24.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 17:24:08 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 17:23:53 -0700
Message-Id: <20210605002356.3996853-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210605002356.3996853-1-vinicius.gomes@intel.com>
References: <20210605002356.3996853-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v5 1/4] Revert "PCI: Make
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
Cc: linux-pci@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 netdev@vger.kernel.org, bhelgaas@google.com, helgaas@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make pci_enable_ptm() accessible from the drivers.

Exposing this to the driver enables the driver to use the
'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.

This reverts commit ac6c26da29c1 ("PCI: Make pci_enable_ptm() private").

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/pci.h   | 3 ---
 include/linux/pci.h | 7 +++++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 37c913bbc6e1..32dab36c717e 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -593,11 +593,8 @@ static inline void pcie_ecrc_get_policy(char *str) { }
 
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
index c20211e59a57..a687dda262dd 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1617,6 +1617,13 @@ static inline bool pci_aer_available(void) { return false; }
 
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
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
