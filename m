Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEE53C70D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jul 2021 15:01:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83D6983925;
	Tue, 13 Jul 2021 13:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gwAA7OdaNQii; Tue, 13 Jul 2021 13:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F739838F0;
	Tue, 13 Jul 2021 13:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D6F71BF857
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 13:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 592C0400F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 13:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CIfCjaoq_Med for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jul 2021 13:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 767FA400E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 13:00:54 +0000 (UTC)
Received: from localhost.localdomain (unknown [222.129.38.167])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 95C6E405D1; 
 Tue, 13 Jul 2021 13:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626181251;
 bh=wtJCO3QYrNDXs3ubXQGWVjwF5MFQxhxZ9W+dp4w8uV8=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=ZbHhxMnkFheoGVQFyShRrFC2aHIvKFaP85Du3D2Z4ryhkQQkcRVRkx9sC/ta67HcQ
 Qg17jNp12JAdFxtei1VM84Er9OjKAzkHb1A79FhRkqXLku7OH5ZOXup56Zf5cdfQ7q
 bB2GD04rS0vbE8EZxd3rprc2n/A4aUbSwky1T2owb6IJcVa3+nTtnPnvqyC3W+iHb3
 Y1uH3wP7BGYRAS1FAadkWQib39xfbr00CRRyC5SQG4sf2+isA7aHhnPl0HllgbL83q
 unH5tAr3pit/9oaN/ZnGn7Hr0l3nVCqTIcIGdNQhlRd3FrPIg/3QmJ6h7Agd6suO5w
 IQiiIz8wvXlNA==
From: Aaron Ma <aaron.ma@canonical.com>
To: aaron.ma@canonical.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 13 Jul 2021 21:00:36 +0800
Message-Id: <20210713130036.741188-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210702045120.22855-1-aaron.ma@canonical.com>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] igc: fix page fault when thunderbolt
 is unplugged
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After unplug thunerbolt dock with i225, pciehp interrupt is triggered,
remove call will read/write mmio address which is already disconnected,
then cause page fault and make system hang.

Check PCI state to remove device safely.

Trace:
BUG: unable to handle page fault for address: 000000000000b604
Oops: 0000 [#1] SMP NOPTI
RIP: 0010:igc_rd32+0x1c/0x90 [igc]
Call Trace:
igc_ptp_suspend+0x6c/0xa0 [igc]
igc_ptp_stop+0x12/0x50 [igc]
igc_remove+0x7f/0x1c0 [igc]
pci_device_remove+0x3e/0xb0
__device_release_driver+0x181/0x240

Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 32 ++++++++++++++---------
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 ++-
 2 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 95323095094d..3c72f135fc29 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -149,6 +149,9 @@ static void igc_release_hw_control(struct igc_adapter *adapter)
 	struct igc_hw *hw = &adapter->hw;
 	u32 ctrl_ext;
 
+	if (!pci_device_is_present(adapter->pdev))
+		return;
+
 	/* Let firmware take over control of h/w */
 	ctrl_ext = rd32(IGC_CTRL_EXT);
 	wr32(IGC_CTRL_EXT,
@@ -4447,26 +4450,29 @@ void igc_down(struct igc_adapter *adapter)
 
 	igc_ptp_suspend(adapter);
 
-	/* disable receives in the hardware */
-	rctl = rd32(IGC_RCTL);
-	wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
-	/* flush and sleep below */
-
+	if (pci_device_is_present(adapter->pdev)) {
+		/* disable receives in the hardware */
+		rctl = rd32(IGC_RCTL);
+		wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
+		/* flush and sleep below */
+	}
 	/* set trans_start so we don't get spurious watchdogs during reset */
 	netif_trans_update(netdev);
 
 	netif_carrier_off(netdev);
 	netif_tx_stop_all_queues(netdev);
 
-	/* disable transmits in the hardware */
-	tctl = rd32(IGC_TCTL);
-	tctl &= ~IGC_TCTL_EN;
-	wr32(IGC_TCTL, tctl);
-	/* flush both disables and wait for them to finish */
-	wrfl();
-	usleep_range(10000, 20000);
+	if (pci_device_is_present(adapter->pdev)) {
+		/* disable transmits in the hardware */
+		tctl = rd32(IGC_TCTL);
+		tctl &= ~IGC_TCTL_EN;
+		wr32(IGC_TCTL, tctl);
+		/* flush both disables and wait for them to finish */
+		wrfl();
+		usleep_range(10000, 20000);
 
-	igc_irq_disable(adapter);
+		igc_irq_disable(adapter);
+	}
 
 	adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 69617d2c1be2..4ae19c6a3247 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -849,7 +849,8 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 	adapter->ptp_tx_skb = NULL;
 	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
 
-	igc_ptp_time_save(adapter);
+	if (pci_device_is_present(adapter->pdev))
+		igc_ptp_time_save(adapter);
 }
 
 /**
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
