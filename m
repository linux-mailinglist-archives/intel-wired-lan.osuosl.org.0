Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 856583C5D8A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jul 2021 15:42:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0568F60594;
	Mon, 12 Jul 2021 13:42:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QA985TK6Bxkw; Mon, 12 Jul 2021 13:42:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 192676059F;
	Mon, 12 Jul 2021 13:42:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB8601BF97A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 13:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D50A1823A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 13:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id av9E9iegS9iP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jul 2021 13:42:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3159825BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 13:42:31 +0000 (UTC)
Received: from localhost (1.general.khfeng.us.vpn [10.172.68.174])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 537044061A; 
 Mon, 12 Jul 2021 13:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626096917;
 bh=LGxqAkOoOm8w+lN//0OhPBiSVWFP77FniFSghw2+jBI=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=WfL2fbkya76HeKTJFQj5gPuZN/mcJPgwf6A8Gi6FcwKhiP6snnQcuSs5NVfQGn4JD
 DWUaFe53uuwHYTsaDZsUI+ttrmNFtqTO5PNWx7tM3bh2P/VJdaGG8feKh05cO5dQT4
 YZXGHD9ItRJRRzsngbZOhdJfFQF3vlgmB6VOqpfh0ZttxBUaXW6o0JPfBWeRGczP3M
 v4TgPMO+OsUfs8CHiar8j3KXcH+D0w90GsFzVrIdBW8GirCjzxBV2IP6zJ2CMywJwl
 O2/7JFTrijYirOw4yDzkdqD6yMiAS8IXBQGMulCkB0UBSY/vDFNv9qrBXzr3FxXQQj
 YHJF8qAgijL4Q==
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Mon, 12 Jul 2021 21:34:59 +0800
Message-Id: <20210712133500.1126371-3-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210712133500.1126371-1-kai.heng.feng@canonical.com>
References: <20210712133500.1126371-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/3] e1000e: Serialize TGP e1000e PM ops
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, acelan.kao@canonical.com,
 Jakub Kicinski <kuba@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On TGL systems, PCI_COMMAND may randomly flip to 0 on system resume.
This is devastating to drivers that use pci_set_master(), like NVMe and
xHCI, to enable DMA in their resume routine, as pci_set_master() can
inadvertently disable PCI_COMMAND_IO and PCI_COMMAND_MEMORY, making
resources inaccessible.

The issue is reproducible on all kernel releases, but the situation is
exacerbated by commit 6cecf02e77ab ("Revert "e1000e: disable s0ix entry
and exit flows for ME systems"").

Seems like ME can do many things to other PCI devices until it's finally out of
ULP polling. So ensure e1000e PM ops are serialized by enforcing suspend/resume
order to workaround the issue.

Of course this will make system suspend and resume a bit slower, but we
probably need to settle on this workaround until ME is fully supported.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=212039
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e63445a8ce12..0244d3dd90a3 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7319,7 +7319,8 @@ static const struct net_device_ops e1000e_netdev_ops = {
 
 static void e1000e_create_device_links(struct pci_dev *pdev)
 {
-	struct pci_dev *tgp_mei_me;
+	struct pci_bus *bus = pdev->bus;
+	struct pci_dev *tgp_mei_me, *p;
 
 	/* Find TGP mei_me devices and make e1000e power depend on mei_me */
 	tgp_mei_me = pci_get_device(PCI_VENDOR_ID_INTEL, 0xa0e0, NULL);
@@ -7335,6 +7336,17 @@ static void e1000e_create_device_links(struct pci_dev *pdev)
 		pci_info(pdev, "System and runtime PM depends on %s\n",
 			 pci_name(tgp_mei_me));
 
+	/* Find other devices in the SoC and make them depend on e1000e */
+	list_for_each_entry(p, &bus->devices, bus_list) {
+		if (&p->dev == &pdev->dev || &p->dev == &tgp_mei_me->dev)
+			continue;
+
+		if (device_link_add(&p->dev, &pdev->dev,
+				    DL_FLAG_AUTOREMOVE_SUPPLIER))
+			pci_info(p, "System PM depends on %s\n",
+				 pci_name(pdev));
+	}
+
 	pci_dev_put(tgp_mei_me);
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
