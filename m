Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4132E548592
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jun 2022 15:52:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0F55415E3;
	Mon, 13 Jun 2022 13:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kThLaX08UlUR; Mon, 13 Jun 2022 13:52:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53558415C7;
	Mon, 13 Jun 2022 13:52:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20B8C1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 11:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E414827C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 11:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ACBR5aZmgWQX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jun 2022 11:27:50 +0000 (UTC)
X-Greylist: delayed 00:07:16 by SQLgrey-1.8.0
Received: from qq.com (smtpbg478.qq.com [59.36.132.92])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F3FF81DBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 11:27:48 +0000 (UTC)
X-QQ-mid: bizesmtp79t1655119156t8v5z557
Received: from localhost.localdomain ( [58.240.82.166])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Mon, 13 Jun 2022 19:19:09 +0800 (CST)
X-QQ-SSF: 01400000002000G0Q000B00A0000000
X-QQ-FEAT: JRmPfD6HWhzxxqXoKc4lDmEGgd/42n5znbX7pLGemLE3r5lVrjvC2ONwBaySs
 /HuRfbQD393oA3em2mY77GLsVsnkiePKD5SadgPjLo1d13QXsIMi0BBoqV4FR251RVPdAAs
 3t/1R1R8pTObL98w6dYSHSzn4JYEpq8Rr5OjkUICeUm80FPrex1f/2BM2RWJ6fMW4sGubQx
 CjqSv/kzt7T+KbtAbE+gElb/ABHEYlBRJhZlbMc+SzeBUWOWUi4Vwve+MsCeFvueQUpIlD7
 p1dYJbRoy1fNE56Qu+Cvc7iB64jitvBFbq6E7fWNsF1H91xV9Jhja84L9IWckKPCix1uJTO
 Hpx1Ugp4Hr0w4quf70Pi9YlK4FRrdgreGz7M7jN
X-QQ-GoodBg: 2
From: Meng Tang <tangmeng@uniontech.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, bhelgaas@google.com
Date: Mon, 13 Jun 2022 19:19:06 +0800
Message-Id: <20220613111907.25490-1-tangmeng@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybgforeign:qybgforeign10
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Mon, 13 Jun 2022 13:52:00 +0000
Subject: [Intel-wired-lan] [PATCH 5.10 1/2] commit 1d71eb53e451 ("Revert
 "PCI: Make pci_enable_ptm() private"")
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
Cc: netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Meng Tang <tangmeng@uniontech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Make pci_enable_ptm() accessible from the drivers.

Exposing this to the driver enables the driver to use the
'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.

This reverts commit ac6c26da29c1 ("PCI: Make pci_enable_ptm() private").

In the 5.10 kernel version, even to the latest confirmed version,
the following error will still be reported when I225-V network card
is used.

kernel: [    1.031581] igc: probe of 0000:01:00.0 failed with error -2
kernel: [    1.066574] igc: probe of 0000:02:00.0 failed with error -2
kernel: [    1.096152] igc: probe of 0000:03:00.0 failed with error -2
kernel: [    1.127251] igc: probe of 0000:04:00.0 failed with error -2

Even though I confirmed that 7c496de538eebd8212dc2a3c9a468386b2640d4
and 47bca7de6a4fb8dcb564c7ca4d885c91ed19e03 have been merged into the
kernel 5.10, the bug is still occurred, and the
"commit 1b5d73fb8624 ("igc: Enable PCIe PTM")" can fixes it.

And this patch is the pre-patch of
1b5d73fb862414106cf270a1a7300ce8ae77de83.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Meng Tang <tangmeng@uniontech.com>
---
 drivers/pci/pci.h   | 3 ---
 include/linux/pci.h | 7 +++++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index a96dc6f53076..4084764bf0b1 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -585,11 +585,8 @@ static inline void pcie_ecrc_get_policy(char *str) { }
 
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
index bc5a1150f072..692ce678c5f1 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1599,6 +1599,13 @@ static inline bool pci_aer_available(void) { return false; }
 
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
2.20.1



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
