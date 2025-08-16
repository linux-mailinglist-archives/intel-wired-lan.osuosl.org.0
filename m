Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D19D2B28B56
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 09:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 191CC83E6B;
	Sat, 16 Aug 2025 07:22:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cxZY6s3ammro; Sat, 16 Aug 2025 07:22:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DAF683E65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755328967;
	bh=UbQ3i2z57ytYDXGXrinaWunZ9fQb+o4y87qL2r6PEWg=;
	h=In-Reply-To:References:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sV4+QGcaRPsO7aq0lHJM0fk4nJ6/5vtxon6NM+nQLw37r/K6nRfjkVUxYMmNXCmXh
	 bRd9vmBpHyhzyGF3sxeHf0ufgI75Vf3K309r6VWRcI6USSjqDPTrvQIVrlFygFqJ5h
	 05fsaw60mX2t1XKdBCxILLUC64TC4KrSb9grsB03Z6WaWL2mBM+r4U0CqEdH3YdwlU
	 PIgwLhVjBnjNwZe0wz2NAFR0Bu4hxLd6Rt0qYdN7yuiqDjqlnXYhMZdl8MfVKMBCDm
	 zcjtVs6zCwSFG8WjJyP1zhLJwXDlGCdN6NiQYrgffhzzVYJraoo/aM2zUKtSqRGE9N
	 RkJr7trdzRCmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DAF683E65;
	Sat, 16 Aug 2025 07:22:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 2356D959
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:22:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id 1504241471
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:22:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id dxncJ0rztSkt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 07:22:45 +0000 (UTC)
X-Greylist: delayed 480 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 16 Aug 2025 07:22:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6A5E2403D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A5E2403D0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=83.223.78.233;
 helo=mailout2.hostsharing.net; envelope-from=lukas@wunner.de;
 receiver=<UNKNOWN> 
Received: from mailout2.hostsharing.net (mailout2.hostsharing.net
 [83.223.78.233])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id 6A5E2403D0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:22:45 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by mailout2.hostsharing.net (Postfix) with UTF8SMTPS id D075C2C25B80;
 Sat, 16 Aug 2025 09:14:41 +0200 (CEST)
Received: from localhost (unknown [89.246.108.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 by h08.hostsharing.net (Postfix) with UTF8SMTPSA id 9D91F600D2F4;
 Sat, 16 Aug 2025 09:14:41 +0200 (CEST)
X-Mailbox-Line: From 22e7b32bfe524219eb7ff1e5c6b4d91763b79eef Mon Sep 17
 00:00:00 2001
Message-ID: <22e7b32bfe524219eb7ff1e5c6b4d91763b79eef.1755327132.git.lukas@wunner.de>
In-Reply-To: <cover.1755327132.git.lukas@wunner.de>
References: <cover.1755327132.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Sat, 16 Aug 2025 09:10:03 +0200
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: [Intel-wired-lan] [PATCH 3/3] i40e: Fix enable_cnt imbalance on
 PCIe error recovery
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After a PCIe Uncorrectable Error has been reported by an i40e adapter
and has been recovered through a Secondary Bus Reset, its driver calls
pci_enable_device() without having called pci_disable_device().

This leads to an imbalance of the enable_cnt tracked by the PCI core:
Every time error recovery occurs, the enable_cnt keeps growing.  If it
occurs at least once and the driver is then unbound, the device isn't
disabled since the enable_cnt hasn't reached zero (and never again will).

The call to pci_enable_device() has almost no effect because the
enable_cnt was already incremented in i40e_probe() through the call to
pci_enable_device_mem().  The subsequent pci_enable_device() thus bails
out after invoking pci_update_current_state().

Remove pci_enable_device().  In lieu of pci_update_current_state(), set
the power state to D0 because that's the power state after a Secondary
Bus Reset (PCIe r7.0 sec 5.3.1.1).

The intended purpose of pci_enable_device() may have been to set the
Memory Space Enable bit in the Command register again after reset, but
that is already achieved by the subsequent call to pci_restore_state().

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: stable@vger.kernel.org  # v3.12+
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 29 +++++++--------------
 1 file changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 9d6d892602fa..7e87234fde67 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16439,29 +16439,20 @@ static pci_ers_result_t i40e_pci_error_detected(struct pci_dev *pdev,
 static pci_ers_result_t i40e_pci_error_slot_reset(struct pci_dev *pdev)
 {
 	struct i40e_pf *pf = pci_get_drvdata(pdev);
-	pci_ers_result_t result;
 	u32 reg;
 
 	dev_dbg(&pdev->dev, "%s\n", __func__);
-	/* enable I/O and memory of the device  */
-	if (pci_enable_device(pdev)) {
-		dev_info(&pdev->dev,
-			 "Cannot re-enable PCI device after reset.\n");
-		result = PCI_ERS_RESULT_DISCONNECT;
-	} else {
-		pci_set_master(pdev);
-		pci_restore_state(pdev);
-		pci_save_state(pdev);
-		pci_wake_from_d3(pdev, false);
-
-		reg = rd32(&pf->hw, I40E_GLGEN_RTRIG);
-		if (reg == 0)
-			result = PCI_ERS_RESULT_RECOVERED;
-		else
-			result = PCI_ERS_RESULT_DISCONNECT;
-	}
+	pdev->current_state = PCI_D0;
+	pci_set_master(pdev);
+	pci_restore_state(pdev);
+	pci_save_state(pdev);
+	pci_wake_from_d3(pdev, false);
 
-	return result;
+	reg = rd32(&pf->hw, I40E_GLGEN_RTRIG);
+	if (reg == 0)
+		return PCI_ERS_RESULT_RECOVERED;
+	else
+		return PCI_ERS_RESULT_DISCONNECT;
 }
 
 /**
-- 
2.47.2

