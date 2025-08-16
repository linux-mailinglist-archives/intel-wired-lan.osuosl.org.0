Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CFEB28B53
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 09:18:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0B5483E57;
	Sat, 16 Aug 2025 07:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xdGNk1nuwJ4e; Sat, 16 Aug 2025 07:18:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1711983E59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755328694;
	bh=ovVNOrvjLBuGeLXXOZsp09D6Vy+Aw4+UU+9b57Bs+Mo=;
	h=In-Reply-To:References:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MT2OJQZPdnZmEmcxPtLWxJQoAhWOt2afPYouqFpv9X3g4ZeOgVBqOIAMYzvTolBcR
	 vla1aS0xCJXjNOIboUHARmtOQKTRl5gb6FHC30Ebqj3lBQR5RqhcJw2q2qW8IcOPlt
	 EbEgTSYOA/L4BN+Gx+wDBwFaBY94A+Hx/I/41ZuJglB8DrQrdOkGqW1jRLjD7+ta9v
	 4mXPh3RmGgbDNlX9agRNbcxFmBj0C9U+dsgu/RdxVSI0iza3RWDZ+7EiumSWih/OBT
	 NW/eCGNd5xEbl3k8eGV2oQaroRGptNBfI2np6yrwVihw88taaXTAJ3Xk3GIjsHLREV
	 Fvqs8ChK2LSnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1711983E59;
	Sat, 16 Aug 2025 07:18:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 1A336223
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id D2B7F611DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id 9GCr4hABAe7A for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 07:18:11 +0000 (UTC)
X-Greylist: delayed 388 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 16 Aug 2025 07:18:10 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 06F1E61162
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06F1E61162
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:4f8:150:2161:1:b009:f236:0; helo=mailout3.hostsharing.net;
 envelope-from=lukas@wunner.de; receiver=<UNKNOWN> 
Received: from mailout3.hostsharing.net (mailout3.hostsharing.net
 [IPv6:2a01:4f8:150:2161:1:b009:f236:0])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id 06F1E61162
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:18:10 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by mailout3.hostsharing.net (Postfix) with UTF8SMTPS id 600283008985;
 Sat, 16 Aug 2025 09:12:55 +0200 (CEST)
Received: from localhost (unknown [89.246.108.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 by h08.hostsharing.net (Postfix) with UTF8SMTPSA id 1C9ED600D2F4;
 Sat, 16 Aug 2025 09:12:55 +0200 (CEST)
X-Mailbox-Line: From 525e494c981747ef2cdd666c50870b69aabf94af Mon Sep 17
 00:00:00 2001
Message-ID: <525e494c981747ef2cdd666c50870b69aabf94af.1755327132.git.lukas@wunner.de>
In-Reply-To: <cover.1755327132.git.lukas@wunner.de>
References: <cover.1755327132.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Sat, 16 Aug 2025 09:10:02 +0200
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: [Intel-wired-lan] [PATCH 2/3] ice: Fix enable_cnt imbalance on PCIe
 error recovery
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

After a PCIe Uncorrectable Error has been reported by an ice adapter
and has been recovered through a Secondary Bus Reset, its driver calls
pci_enable_device_mem() without having called pci_disable_device().

This leads to an imbalance of the enable_cnt tracked by the PCI core:
Every time error recovery occurs, the enable_cnt keeps growing.  If it
occurs at least once and the driver is then unbound, the device isn't
disabled since the enable_cnt hasn't reached zero (and never again will).

The call to pci_enable_device_mem() has almost no effect because the
enable_cnt was already incremented in ice_probe() through the call to
pcim_enable_device().  The subsequent pci_enable_device_mem() thus bails
out after invoking pci_update_current_state().

Remove pci_enable_device_mem().  In lieu of pci_update_current_state(),
set the power state to D0 because that's the power state after a
Secondary Bus Reset (PCIe r7.0 sec 5.3.1.1).

The intended purpose of pci_enable_device_mem() may have been to set
the Memory Space Enable bit in the Command register again after reset,
but that is already achieved by the subsequent call to
pci_restore_state().

Fixes: 5995b6d0c6fc ("ice: Implement pci_error_handler ops")
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: stable@vger.kernel.org  # v5.2+
---
 drivers/net/ethernet/intel/ice/ice_main.c | 32 ++++++++---------------
 1 file changed, 11 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3be4347223ef..848d5b512319 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5720,30 +5720,20 @@ ice_pci_err_detected(struct pci_dev *pdev, pci_channel_state_t err)
 static pci_ers_result_t ice_pci_err_slot_reset(struct pci_dev *pdev)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
-	pci_ers_result_t result;
-	int err;
 	u32 reg;
 
-	err = pci_enable_device_mem(pdev);
-	if (err) {
-		dev_err(&pdev->dev, "Cannot re-enable PCI device after reset, error %d\n",
-			err);
-		result = PCI_ERS_RESULT_DISCONNECT;
-	} else {
-		pci_set_master(pdev);
-		pci_restore_state(pdev);
-		pci_save_state(pdev);
-		pci_wake_from_d3(pdev, false);
-
-		/* Check for life */
-		reg = rd32(&pf->hw, GLGEN_RTRIG);
-		if (!reg)
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
+	/* Check for life */
+	reg = rd32(&pf->hw, GLGEN_RTRIG);
+	if (!reg)
+		return PCI_ERS_RESULT_RECOVERED;
+	else
+		return PCI_ERS_RESULT_DISCONNECT;
 }
 
 /**
-- 
2.47.2

