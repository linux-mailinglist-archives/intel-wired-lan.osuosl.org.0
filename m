Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D0EB12FC5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 16:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4D086119E;
	Sun, 27 Jul 2025 14:00:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ToW_Y3b92f46; Sun, 27 Jul 2025 14:00:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8D89611A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753624844;
	bh=WbgoinCgf9yU37f15cStvNKYwkcGrtI2/Xm0S2JCAhg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VYhLcWjlo9BnqvKdlVRjnxRSP1OP6NEZE8NHpRWTSljkjsa1C1b6l40hh1Koepncs
	 4UTi9pChdktV1TmIq3f+sP4YznIaFQt4QfVSXFeFcjyj+pVMaGn1dgnUDu1WoJRWzp
	 oCX5NYIs2Ou98/OmoIkTnWHleZ8l/sUufLVFUj4U5UqH/v1Hf6j/hVrMVFx+/SuS3W
	 LWJ58F+peQg8+/sqAMMGJdAq0CFki9UuQctrqdQpAz/K5g2/YUkXRIwo38FOzuvb5U
	 nQ/vi1WO0hPybztqJ2OLb9AcPIzNDWubI/w2HH7Mofhq528+lZIV6S5uSy7HXaVMux
	 ra3Kn0+qobakA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8D89611A0;
	Sun, 27 Jul 2025 14:00:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ABB441BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D3DF4039B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:00:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z273D5D9437j for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 14:00:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:e00:ffe7:c::2;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB80340077
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB80340077
Received: from mail.valdk.tel (mail.valdk.tel [IPv6:2a02:e00:ffe7:c::2])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB80340077
 for <intel-wired-lan@osuosl.org>; Sun, 27 Jul 2025 14:00:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 997631B67DA0; Sun, 27 Jul 2025 17:00:36 +0300 (MSK)
From: ValdikSS <iam@valdikss.org.ru>
To: intel-wired-lan@osuosl.org
Cc: vitaly.lifshits@intel.com,
	ValdikSS <iam@valdikss.org.ru>
Date: Sun, 27 Jul 2025 17:00:11 +0300
Message-ID: <20250727140011.527375-1-iam@valdikss.org.ru>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <ac3d9591-f564-4306-9638-989ebb328d29@valdikss.org.ru>
References: <ac3d9591-f564-4306-9638-989ebb328d29@valdikss.org.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; 
 s=msrv; t=1753624837; h=from:subject:date:message-id:to:cc:mime-version:
 content-transfer-encoding:in-reply-to:references;
 bh=WbgoinCgf9yU37f15cStvNKYwkcGrtI2/Xm0S2JCAhg=;
 b=Ac7KeVO7iYebQDucOM43v6mxDobk31CSReOWDU9OPzCAdUESqL4zi7DWPGVNvtFkZaGbWF
 ZQUe3e9uyDrxWHPkQ/EyfHSZ28kGmuVsztyqNOV8KaGPm2Y/JeR4oeaF/WvU5BEGSwbzM5
 cLrVa6Yrq5vzEXaTHTax7tZyL4q5JQvlIqg9WLJfKSbgwY806xhDEL5XlLH9YYj+3yaw7t
 dRBCEidOx56cD1Wf+zaYCVkfl7WCL+mobaJ37/efr/vigdNIG9oQN/AAVe/yOuXw6vETxC
 uMVdVSSXjkZ9JKMbhLfca1Lc6J9627pjlG/jhQR3rh7eAWsOPSQXda9B196wUw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=Ac7KeVO7
Subject: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226
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

Device ID comparison in igc_is_device_id_i226 is performed before
the ID is set, resulting in always failing check.

Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
Signed-off-by: ValdikSS <iam@valdikss.org.ru>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 031c332f6..1b4465d6b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7115,6 +7115,13 @@ static int igc_probe(struct pci_dev *pdev,
 	adapter->port_num = hw->bus.func;
 	adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);
 
+	/* PCI config space info */
+	hw->vendor_id = pdev->vendor;
+	hw->device_id = pdev->device;
+	hw->revision_id = pdev->revision;
+	hw->subsystem_vendor_id = pdev->subsystem_vendor;
+	hw->subsystem_device_id = pdev->subsystem_device;
+
 	/* Disable ASPM L1.2 on I226 devices to avoid packet loss */
 	if (igc_is_device_id_i226(hw))
 		pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
@@ -7141,13 +7148,6 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->mem_start = pci_resource_start(pdev, 0);
 	netdev->mem_end = pci_resource_end(pdev, 0);
 
-	/* PCI config space info */
-	hw->vendor_id = pdev->vendor;
-	hw->device_id = pdev->device;
-	hw->revision_id = pdev->revision;
-	hw->subsystem_vendor_id = pdev->subsystem_vendor;
-	hw->subsystem_device_id = pdev->subsystem_device;
-
 	/* Copy the default MAC and PHY function pointers */
 	memcpy(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
 	memcpy(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));
-- 
2.50.1

