Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AE32E7B98
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Dec 2020 18:35:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B340870FA;
	Wed, 30 Dec 2020 17:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qu6EN4RU9RYv; Wed, 30 Dec 2020 17:35:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F1DA8726A;
	Wed, 30 Dec 2020 17:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4354B1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Dec 2020 17:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E4468140D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Dec 2020 17:28:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YXkQT2iFsTHE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Dec 2020 17:28:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ssl.serverraum.org (ssl.serverraum.org [176.9.125.105])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0AF7E8672B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Dec 2020 17:28:35 +0000 (UTC)
Received: from mwalle01.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:fa59:71ff:fe9b:b851])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 8E61722727;
 Wed, 30 Dec 2020 18:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1609349313;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6FicUDPIGdxRaI+t09GLlQLPPAddV4hLMgOu+jJmYzQ=;
 b=Pt0t25f7AZMrS72/2OOTXUIQb1FDTZ4ZIWIqO3kyJ/v3A3O+AZx33wPaO8Z0goKKBfxYXj
 QhUGVUzo2Ko7OxYWMkf2FQJympk8MXSFnWJgwatDma5ylJ7YKM5mcZDyi04V2CYNm/K4Jy
 fMTV5CbQh92pdK+c1nICi9JDbZ4TLkM=
From: Michael Walle <michael@walle.cc>
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Dec 2020 18:28:23 +0100
Message-Id: <20201230172823.28483-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 30 Dec 2020 17:35:04 +0000
Subject: [Intel-wired-lan] [PATCH] PCI: add Intel i210 quirk
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, Michael Walle <michael@walle.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Intel i210 doesn't work if the Expansion ROM BAR overlaps with
another BAR. Networking won't work at all and once a packet is sent the
netdev watchdog will bite:

[   89.059374] ------------[ cut here ]------------
[   89.064019] NETDEV WATCHDOG: enP2p1s0 (igb): transmit queue 0 timed out
[   89.070681] WARNING: CPU: 1 PID: 0 at net/sched/sch_generic.c:443 dev_watchdog+0x3a8/0x3b0
[   89.078989] Modules linked in:
[   89.082053] CPU: 1 PID: 0 Comm: swapper/1 Tainted: G        W         5.11.0-rc1-00020-gc16f033804b #289
[   89.091574] Hardware name: Kontron SMARC-sAL28 (Single PHY) on SMARC Eval 2.0 carrier (DT)
[   89.099870] pstate: 60000005 (nZCv daif -PAN -UAO -TCO BTYPE=--)
[   89.105900] pc : dev_watchdog+0x3a8/0x3b0
[   89.109923] lr : dev_watchdog+0x3a8/0x3b0
[   89.113945] sp : ffff80001000bd50
[   89.117268] x29: ffff80001000bd50 x28: 0000000000000008
[   89.122602] x27: 0000000000000004 x26: 0000000000000140
[   89.127935] x25: ffff002001c6c000 x24: ffff002001c2b940
[   89.133267] x23: ffff8000118c7000 x22: ffff002001c6c39c
[   89.138600] x21: ffff002001c6bfb8 x20: ffff002001c6c3b8
[   89.143932] x19: 0000000000000000 x18: 0000000000000010
[   89.149264] x17: 0000000000000000 x16: 0000000000000000
[   89.154596] x15: ffffffffffffffff x14: 0720072007200720
[   89.159928] x13: 0720072007740775 x12: ffff80001195b980
[   89.165260] x11: 0000000000000003 x10: ffff800011943940
[   89.170592] x9 : ffff800010100d44 x8 : 0000000000017fe8
[   89.175924] x7 : c0000000ffffefff x6 : 0000000000000001
[   89.181255] x5 : 0000000000000000 x4 : 0000000000000000
[   89.186587] x3 : 00000000ffffffff x2 : ffff8000118eb908
[   89.191919] x1 : 84d8200845006900 x0 : 0000000000000000
[   89.197251] Call trace:
[   89.199701]  dev_watchdog+0x3a8/0x3b0
[   89.203374]  call_timer_fn+0x38/0x208
[   89.207049]  run_timer_softirq+0x290/0x540
[   89.211158]  __do_softirq+0x138/0x404
[   89.214831]  irq_exit+0xe8/0xf8
[   89.217981]  __handle_domain_irq+0x70/0xc8
[   89.222091]  gic_handle_irq+0xc8/0x2b0
[   89.225850]  el1_irq+0xb8/0x180
[   89.228999]  arch_cpu_idle+0x18/0x40
[   89.232587]  default_idle_call+0x70/0x214
[   89.236610]  do_idle+0x21c/0x290
[   89.239848]  cpu_startup_entry+0x2c/0x70
[   89.243783]  secondary_start_kernel+0x1a0/0x1f0
[   89.248332] ---[ end trace 1687af62576397bc ]---
[   89.253350] igb 0002:01:00.0 enP2p1s0: Reset adapter

Before this fixup the Expansion ROM BAR will overlap with BAR3:
  # lspci -ns 2:1:0 -xx
  0002:01:00.0 0200: 8086:1533 (rev 03)
  00: 86 80 33 15 06 04 10 00 03 00 00 02 08 00 00 00
  10: 00 00 00 40 00 00 00 00 00 00 00 00 00 00 20 40
  20: 00 00 00 00 00 00 00 00 00 00 00 00 3c 10 03 00
  30: 00 00 20 40 40 00 00 00 00 00 00 00 22 01 00 00

Add a quirk which will update the Expansion ROM BAR for Intel i210s even
if the ROM is disabled. This was tested on an ARM64 board (kontron
sl28).

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/pci/quirks.c | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index 653660e3ba9e..59c204ef5df7 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -5612,3 +5612,37 @@ static void apex_pci_fixup_class(struct pci_dev *pdev)
 }
 DECLARE_PCI_FIXUP_CLASS_HEADER(0x1ac1, 0x089a,
 			       PCI_CLASS_NOT_DEFINED, 8, apex_pci_fixup_class);
+
+/*
+ * Some devices doesn't work if the Expansion ROM has the same base address as
+ * one of the other BARs although it is disabled.
+ * This might happen if the bootloader/BIOS enumerate the BARs in a different
+ * way than linux. If the Expansion ROM is disabled, linux deliberately skip
+ * writing the ROM BAR if the BAR is not enabled because of some broken
+ * devices, see pci_std_update_resource(). Thus, the ROM BAR of the device will
+ * still contain the value assigned by the booloader, which might be the same
+ * value as one of the other BARs then.
+ *
+ * As a workaround, update the Expansion ROM BAR even if the Expansion ROM is
+ * disabled.
+ */
+static void pci_fixup_rewrite_rom_bar(struct pci_dev *dev)
+{
+	struct resource *res = &dev->resource[PCI_ROM_RESOURCE];
+	struct pci_bus_region region;
+	u32 rom_addr;
+
+	pci_read_config_dword(dev, dev->rom_base_reg, &rom_addr);
+
+	if (rom_addr & PCI_ROM_ADDRESS_ENABLE)
+		return;
+
+	pcibios_resource_to_bus(dev->bus, &region, res);
+	rom_addr &= ~PCI_ROM_ADDRESS_MASK;
+	rom_addr |= region.start;
+	pci_write_config_dword(dev, dev->rom_base_reg, rom_addr);
+}
+DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_INTEL, 0x1533, pci_fixup_rewrite_rom_bar);
+DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_INTEL, 0x1536, pci_fixup_rewrite_rom_bar);
+DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_INTEL, 0x1537, pci_fixup_rewrite_rom_bar);
+DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_INTEL, 0x1538, pci_fixup_rewrite_rom_bar);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
