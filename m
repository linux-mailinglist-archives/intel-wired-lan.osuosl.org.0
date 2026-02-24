Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGSKBkaHnWnBQQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 12:11:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 874E5185EA8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 12:11:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA49D41BFE;
	Tue, 24 Feb 2026 11:10:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ihqdkpuawQAJ; Tue, 24 Feb 2026 11:10:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C48F841C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771931455;
	bh=BOZoNURdojCWNqQouRo1fktb60unT+XnMWA9Ov8f8dA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lv7O8slEWzhU+OV8aFMq3qG03/UnsftZ1x6zP9wCIq0WvBLnGRIjIMnZdHbkliOer
	 HeZsH2XD0AgQyDb/Me4iDkUdp/7GLxd2hxTp5SLZIr+36tBr7m51mfBJZkGLhaqpOw
	 SmAzXr8jeE1knXaZ2Tl97K5wOfCGo9xji6v8nGzhWrPhRTZUzRlSfjWofymvXPR/Pq
	 YyeJeHnlC0UHc9EiIg19qhu73rUy0nzl7pN4/H8LNvW6V032vKXxsIjq+iF1yaCF3N
	 tPYMxmepL+lzI+kRKMOuTZNxQCuZMnwhneUIEMCkPMJtIcatVMBviVIw9Y9xQduFzv
	 CQgPfqfJj/MpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C48F841C03;
	Tue, 24 Feb 2026 11:10:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B371249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0DB541BE9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:10:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CkVRVSUw1kq1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 11:10:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=mika.westerberg@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D9C6B41BED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9C6B41BED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9C6B41BED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:10:51 +0000 (UTC)
X-CSE-ConnectionGUID: hmHM0PJ+QRyxHuwR5vfA3w==
X-CSE-MsgGUID: 6+GNdRIoTjateviodP9+EA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="71974271"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="71974271"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 03:10:51 -0800
X-CSE-ConnectionGUID: EvVGT46fTLGP6NSmhSxlbg==
X-CSE-MsgGUID: yMJFeygtSkalUPvVEKcnxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="216037802"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa007.jf.intel.com with ESMTP; 24 Feb 2026 03:10:46 -0800
Received: by black.igk.intel.com (Postfix, from userid 1001)
 id 25D989E; Tue, 24 Feb 2026 12:10:44 +0100 (CET)
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: linux-pci@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lukas Wunner <lukas@wunner.de>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Date: Tue, 24 Feb 2026 12:10:43 +0100
Message-ID: <20260224111044.3487873-5-mika.westerberg@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771931452; x=1803467452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QKZD5okm1xqkM8oQst752FNnt6DZN162fiSZYKIDKYE=;
 b=TDEPcHYdIYNuSIwuf31CTSj28S7yrRst/T0esvuXNml1CYX6eneb21C3
 sc+3Rv8cDvjO9bHyJG80tNeE606DcNVYipOVkvw5E907TX8A4q8Qz7aWS
 ARZ/G1U0xClfFUANRsDoTTzMUPqSiZTh18FShWOJfeHcZ8ubg8zqNgDwx
 unL0KXLNurwBDVU9Riwl909ii/GhEFh+juYhhprRxOUFCiSFN+8rWW140
 xnDO8O1GAu9+Jn57zh5LQVkm/HgWjUNXUz+nXV/3ksDoqwkEFgO+cIPaY
 gzTqQf9E4+EFLNSVpGiXkJgEMnHGo4H7IHuPWBfj78sASqo6sF7NGhTIW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TDEPcHYd
Subject: [Intel-wired-lan] [PATCH 4/5] PCI/PTM: Drop granularity parameter
 from pci_enable_ptm()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:mika.westerberg@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.872];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 874E5185EA8
X-Rspamd-Action: no action

This is not used by any of the existing callers so we can simplify the
function slightly and get rid of that.

Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c      |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c    |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c      |  2 +-
 drivers/net/ethernet/mellanox/mlx5/core/main.c |  2 +-
 drivers/pci/pcie/ptm.c                         | 11 +++--------
 include/linux/pci.h                            |  4 ++--
 6 files changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ebf48feffb30..b35c4e4ecd2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5028,7 +5028,7 @@ static int ice_init(struct ice_pf *pf)
 	}
 
 	if (pf->hw.mac_type == ICE_MAC_E830) {
-		err = pci_enable_ptm(pf->pdev, NULL);
+		err = pci_enable_ptm(pf->pdev);
 		if (err)
 			dev_dbg(dev, "PCIe PTM not supported by PCIe bus/controller\n");
 	}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 0dd741dcfcdb..ab3c409e587b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -257,7 +257,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_free;
 	}
 
-	err = pci_enable_ptm(pdev, NULL);
+	err = pci_enable_ptm(pdev);
 	if (err)
 		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 84f5d92c81cc..291222b06915 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7124,7 +7124,7 @@ static int igc_probe(struct pci_dev *pdev,
 	if (err)
 		goto err_pci_reg;
 
-	err = pci_enable_ptm(pdev, NULL);
+	err = pci_enable_ptm(pdev);
 	if (err < 0)
 		dev_info(&pdev->dev, "PCIe PTM not supported by PCIe bus/controller\n");
 
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
index fdc3ba20912e..0b94d4ed0ef6 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
@@ -960,7 +960,7 @@ static int mlx5_pci_init(struct mlx5_core_dev *dev, struct pci_dev *pdev,
 
 	mlx5_pci_vsc_init(dev);
 
-	pci_enable_ptm(pdev, NULL);
+	pci_enable_ptm(pdev);
 
 	return 0;
 
diff --git a/drivers/pci/pcie/ptm.c b/drivers/pci/pcie/ptm.c
index 91a598ed534c..2c848ae4f15f 100644
--- a/drivers/pci/pcie/ptm.c
+++ b/drivers/pci/pcie/ptm.c
@@ -88,7 +88,7 @@ void pci_ptm_init(struct pci_dev *dev)
 
 	if (pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT ||
 	    pci_pcie_type(dev) == PCI_EXP_TYPE_UPSTREAM)
-		pci_enable_ptm(dev, NULL);
+		pci_enable_ptm(dev);
 }
 
 void pci_save_ptm_state(struct pci_dev *dev)
@@ -182,15 +182,13 @@ static int __pci_enable_ptm(struct pci_dev *dev)
 /**
  * pci_enable_ptm() - Enable Precision Time Measurement
  * @dev: PCI device
- * @granularity: pointer to return granularity
  *
- * Enable Precision Time Measurement for @dev.  If successful and
- * @granularity is non-NULL, return the Effective Granularity.
+ * Enable Precision Time Measurement for @dev.
  *
  * Return: zero if successful, or -EINVAL if @dev lacks a PTM Capability or
  * is not a PTM Root and lacks an upstream path of PTM-enabled devices.
  */
-int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
+int pci_enable_ptm(struct pci_dev *dev)
 {
 	int rc;
 	char clock_desc[8];
@@ -201,9 +199,6 @@ int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
 
 	dev->ptm_enabled = 1;
 
-	if (granularity)
-		*granularity = dev->ptm_granularity;
-
 	switch (dev->ptm_granularity) {
 	case 0:
 		snprintf(clock_desc, sizeof(clock_desc), "unknown");
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 1c270f1d5123..8aaa72dcb164 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1975,11 +1975,11 @@ struct pci_ptm_debugfs {
 };
 
 #ifdef CONFIG_PCIE_PTM
-int pci_enable_ptm(struct pci_dev *dev, u8 *granularity);
+int pci_enable_ptm(struct pci_dev *dev);
 void pci_disable_ptm(struct pci_dev *dev);
 bool pcie_ptm_enabled(struct pci_dev *dev);
 #else
-static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
+static inline int pci_enable_ptm(struct pci_dev *dev)
 { return -EINVAL; }
 static inline void pci_disable_ptm(struct pci_dev *dev) { }
 static inline bool pcie_ptm_enabled(struct pci_dev *dev)
-- 
2.50.1

