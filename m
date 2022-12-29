Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CA0658FD7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Dec 2022 18:31:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 134BD40467;
	Thu, 29 Dec 2022 17:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 134BD40467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672335070;
	bh=vYU2HR9i+rg4gm/LQ09bl76V/PhdrI1jrYzatA6/MEI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AhHLwzGqvm2ktfzwLHJ5kFnrZkwRWfNwY2SwKfhkw6WagGaXZkqIrasFbUYAnmZSr
	 BHQ5h9A+5257wRnx+fM02UEfjK524O5vd35WCZ70Hh5RsMKHZ5aS94NUdTFu1jh7Ty
	 p76pF85euJIUOu5DMshewOEFJpZDjhDs7rPXtAzrgXas0zbp8QpyLjZB4VR3z2XvY0
	 MW7NBMwvAGF7ClwMPymaSmLHjcdbTsSiuGVmsp5WmAkwpH21xdXa2aoCzfYsVBLWxb
	 6LXVwJNA8pjafkumrcCQYtKJBQlRYxQpFWTi7rCxaT+Hhtko2JGNSKX0jkFbTyriK9
	 bAB6XApTcIU/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcdGKJtONfiN; Thu, 29 Dec 2022 17:31:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 108BD400DD;
	Thu, 29 Dec 2022 17:31:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 108BD400DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AF731BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 12:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14D3F400F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 12:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14D3F400F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50K_CbLMAemc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Dec 2022 12:26:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6FA3400DD
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6FA3400DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 12:26:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="348243045"
X-IronPort-AV: E=Sophos;i="5.96,284,1665471600"; d="scan'208";a="348243045"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 04:26:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="795956079"
X-IronPort-AV: E=Sophos;i="5.96,284,1665471600"; d="scan'208";a="795956079"
Received: from unknown (HELO rajath-NUC10i7FNH..) ([10.223.165.88])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 04:26:34 -0800
From: Rajat Khandelwal <rajat.khandelwal@linux.intel.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Thu, 29 Dec 2022 17:56:40 +0530
Message-Id: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 29 Dec 2022 17:30:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672316798; x=1703852798;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dn3epGzIAwWUMYhcvjgvIraCnxNDGBxxZThnjliU4Tw=;
 b=Z+3/Dx+hEFfWZ/sCBI1YvpUQ59mO+HGjoUbRf7n6iQ4+do1cOFk5K+p8
 5Azf0GI9dNqszWyFX3nc0jDoXLIeUPxFyF5Ud1q8hM6inagu2ILLTKESv
 Q8mSZQ/5pFugLwP/I153CGTF1MHth9nHcluMcqtTGf/mqi/Fv03FS8DHf
 ANDoLtuS1KrFAHO2VQ+emWXJ5FauZLYz9YdY3/y/vvcX7wS6kzpnua9Ao
 N40jQpOcz9oSejYeS3pk51Ke1jFjWO6G9wCjEUf44T6wH1B6n+iLQnYYC
 JL8ZEm3pMwuhnXstN31Q+SEenPHonuSHa05q6jihbnRahJxdSNebhViht
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z+3/Dx+h
Subject: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout errors
 in I225_LMVP
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
Cc: netdev@vger.kernel.org, Rajat Khandelwal <rajat.khandelwal@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 rajat.khandelwal@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The CPU logs get flooded with replay rollover/timeout AER errors in
the system with i225_lmvp connected, usually inside thunderbolt devices.

One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
an Intel Foxville chipset, which uses the igc driver.
On connecting ethernet, CPU logs get inundated with these errors. The point
is we shouldn't be spamming the logs with such correctible errors as it
confuses other kernel developers less familiar with PCI errors, support
staff, and users who happen to look at the logs.

Signed-off-by: Rajat Khandelwal <rajat.khandelwal@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 28 +++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ebff0e04045d..a3a6e8086c8d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6201,6 +6201,26 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 	return value;
 }
 
+#ifdef CONFIG_PCIEAER
+static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)
+{
+	struct pci_dev *pdev = adapter->pdev;
+	u32 aer_pos, corr_mask;
+
+	if (pdev->device != IGC_DEV_ID_I225_LMVP)
+		return;
+
+	aer_pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ERR);
+	if (!aer_pos)
+		return;
+
+	pci_read_config_dword(pdev, aer_pos + PCI_ERR_COR_MASK, &corr_mask);
+
+	corr_mask |= PCI_ERR_COR_REP_ROLL | PCI_ERR_COR_REP_TIMER;
+	pci_write_config_dword(pdev, aer_pos + PCI_ERR_COR_MASK, corr_mask);
+}
+#endif
+
 /**
  * igc_probe - Device Initialization Routine
  * @pdev: PCI device information struct
@@ -6236,8 +6256,6 @@ static int igc_probe(struct pci_dev *pdev,
 	if (err)
 		goto err_pci_reg;
 
-	pci_enable_pcie_error_reporting(pdev);
-
 	err = pci_enable_ptm(pdev, NULL);
 	if (err < 0)
 		dev_info(&pdev->dev, "PCIe PTM not supported by PCIe bus/controller\n");
@@ -6272,6 +6290,12 @@ static int igc_probe(struct pci_dev *pdev,
 	if (!adapter->io_addr)
 		goto err_ioremap;
 
+#ifdef CONFIG_PCIEAER
+	igc_mask_aer_replay_correctible(adapter);
+#endif
+
+	pci_enable_pcie_error_reporting(pdev);
+
 	/* hw->hw_addr can be zeroed, so use adapter->io_addr for unmap */
 	hw->hw_addr = adapter->io_addr;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
