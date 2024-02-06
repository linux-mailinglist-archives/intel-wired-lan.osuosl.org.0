Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CCA84B755
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 15:05:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8528D6120C;
	Tue,  6 Feb 2024 14:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8528D6120C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707228314;
	bh=LSrptK14YLks8vL7Hoc0E8Ejfg0Go0vYAvVpL+QMFXU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CJapcJ1P1w6NA037BPxiQeXG2RNjgVx4IAwUSxQKdyVDwzRN0XhPB+xxutMHBhV92
	 oAq3qNgtQhPGP5q2Oy+qYB+r2icoLI1ET2yFq3yRoof1SR72AIMdhp+VAO8Si14+B5
	 nDYN2cxRjGhnKpkE4Ck3Y3M8q9g9GZs8pUTlJfGe02OCSPHSS62Yk4/rP56xXzUTF2
	 EH20n+8dsEOpcIgfjSLfvSURX48m6QGJjfnIJ1kphLdkATajXumajFj3qwsNxEJ9Yt
	 8vgUgzzeskRFBnRaH5QWwR104RKXTUFQYawIdhEdo9NNdxgNVglzTmpErD5K5/uQR+
	 OyS/O4WtiE7yQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6rzQuQi1HQm; Tue,  6 Feb 2024 14:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B29861162;
	Tue,  6 Feb 2024 14:05:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B29861162
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A19C1BF576
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15445820F3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5wJy_tUMUXM2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 14:05:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=ilpo.jarvinen@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 012B4820E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 012B4820E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 012B4820E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:05:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="905245"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="905245"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 05:57:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1008768"
Received: from ijarvine-desk1.ger.corp.intel.com (HELO localhost)
 ([10.246.36.139])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 05:57:53 -0800
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
 "Oliver O'Halloran" <oohall@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Tue,  6 Feb 2024 15:57:16 +0200
Message-Id: <20240206135717.8565-4-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240206135717.8565-1-ilpo.jarvinen@linux.intel.com>
References: <20240206135717.8565-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707228306; x=1738764306;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aYsde3sTVwA8yxr9f8GyAYn7fWOjA+YZlB6N5RztCXs=;
 b=SEr4pvZLVecol0MkRDCjknYBQ/q6A3VnT5FeCReyv5eRvkEpKFSEo3Ud
 nHWlfWysfpEMPwrH34JfMrWTjGxiQ2LnRpqVhMTbPrujTbFRuqa4Uh2ZR
 dw04XHXD8t+rajBSGves1Iud2NeSl2G3a4x22S5W5M1f5Y/DrfyorJL4y
 P7aDUwGhyQsA1oeVKFX7zIDUJ6FK8dXYKH+K3xnDIBa1VcKm83C1yQjkM
 Q0RX5PkNEnvbPEFZ2ir+ffHCBgkIG0yaTxE01yy8v4+BSJr87t3qmRUq/
 LD81JNMHeuPcHLYI+QIV8NdpuTeuTHGc+SPsI4xRoOIRIOw1na4QHXJKi
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SEr4pvZL
Subject: [Intel-wired-lan] [PATCH 3/4] PCI: Add TLP Prefix reading into
 pcie_read_tlp_log()
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
Cc: Tony Luck <tony.luck@intel.com>, linux-efi@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-edac@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

pcie_read_tlp_log() handles only 4 TLP Header Log DWORDs but TLP Prefix
Log (PCIe r6.1 secs 7.8.4.12 & 7.9.14.13) may also be present.

Generalize pcie_read_tlp_log() and struct pcie_tlp_log to handle also
TLP Prefix Log. The layout of relevant registers in AER and DPC
Capability is not identical but the offsets of TLP Header Log and TLP
Prefix Log vary so the callers must pass the offsets to
pcie_read_tlp_log().

Convert eetlp_prefix_path into integer called eetlp_prefix_max and
make is available also when CONFIG_PCI_PASID is not configured to
be able to determine the number of E-E Prefixes.

Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  4 +-
 drivers/pci/ats.c                             |  2 +-
 drivers/pci/pci.c                             | 37 ++++++++++++++++---
 drivers/pci/pcie/aer.c                        |  4 +-
 drivers/pci/pcie/dpc.c                        | 22 +++++++----
 drivers/pci/probe.c                           | 14 ++++---
 include/linux/aer.h                           |  5 ++-
 include/linux/pci.h                           |  2 +-
 include/uapi/linux/pci_regs.h                 |  2 +
 9 files changed, 69 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 5fdf37968b2d..6ce720726a1a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11336,7 +11336,9 @@ static pci_ers_result_t ixgbe_io_error_detected(struct pci_dev *pdev,
 	if (!pos)
 		goto skip_bad_vf_detection;
 
-	ret = pcie_read_tlp_log(pdev, pos + PCI_ERR_HEADER_LOG, &tlp_log);
+	ret = pcie_read_tlp_log(pdev, pos + PCI_ERR_HEADER_LOG,
+				pos + PCI_ERR_PREFIX_LOG,
+				aer_tlp_log_len(pdev), &tlp_log);
 	if (ret < 0) {
 		ixgbe_check_cfg_remove(hw, pdev);
 		goto skip_bad_vf_detection;
diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index c570892b2090..e13433dcfc82 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -377,7 +377,7 @@ int pci_enable_pasid(struct pci_dev *pdev, int features)
 	if (WARN_ON(pdev->pasid_enabled))
 		return -EBUSY;
 
-	if (!pdev->eetlp_prefix_path && !pdev->pasid_no_tlp)
+	if (!pdev->eetlp_prefix_max && !pdev->pasid_no_tlp)
 		return -EINVAL;
 
 	if (!pasid)
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 0152f0144eec..268a5b9f1dff 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -1068,23 +1068,48 @@ static void pci_enable_acs(struct pci_dev *dev)
 }
 
 /**
- * pcie_read_tlp_log - Reads TLP Header Log
+ * aer_tlp_log_len - Calculates TLP Header/Prefix Log length
+ * @dev:	PCIe device
+ *
+ * Return: TLP Header/Prefix Log length
+ */
+unsigned int aer_tlp_log_len(struct pci_dev *dev)
+{
+	return 4 + dev->eetlp_prefix_max;
+}
+EXPORT_SYMBOL_GPL(aer_tlp_log_len);
+
+/**
+ * pcie_read_tlp_log - Reads TLP Header and Prefix Log
  * @dev:	PCIe device
  * @where:	PCI Config offset of TLP Header Log
+ * @where2:	PCI Config offset of TLP Prefix Log
+ * @tlp_len:	TLP Log length (in DWORDs)
  * @tlp_log:	TLP Log structure to fill
  *
- * Fills @tlp_log from TLP Header Log registers.
+ * Fills @tlp_log from TLP Header and Prefix Log registers.
  *
  * Return: 0 on success and filled TLP Log structure, <0 on error.
  */
-int pcie_read_tlp_log(struct pci_dev *dev, int where, struct pcie_tlp_log *tlp_log)
+int pcie_read_tlp_log(struct pci_dev *dev, int where, int where2,
+		      unsigned int tlp_len, struct pcie_tlp_log *tlp_log)
 {
-	int i, ret;
+	unsigned int i;
+	int off, ret;
+	u32 *to;
 
 	memset(tlp_log, 0, sizeof(*tlp_log));
 
-	for (i = 0; i < 4; i++) {
-		ret = pci_read_config_dword(dev, where + i * 4, &tlp_log->dw[i]);
+	for (i = 0; i < tlp_len; i++) {
+		if (i < 4) {
+			to = &tlp_log->dw[i];
+			off = where + i * 4;
+		} else {
+			to = &tlp_log->prefix[i - 4];
+			off = where2 + (i - 4) * 4;
+		}
+
+		ret = pci_read_config_dword(dev, off, to);
 		if (ret)
 			return pcibios_err_to_errno(ret);
 	}
diff --git a/drivers/pci/pcie/aer.c b/drivers/pci/pcie/aer.c
index ac6293c24976..ecc1dea5a208 100644
--- a/drivers/pci/pcie/aer.c
+++ b/drivers/pci/pcie/aer.c
@@ -1245,7 +1245,9 @@ int aer_get_device_error_info(struct pci_dev *dev, struct aer_err_info *info)
 
 		if (info->status & AER_LOG_TLP_MASKS) {
 			info->tlp_header_valid = 1;
-			pcie_read_tlp_log(dev, aer + PCI_ERR_HEADER_LOG, &info->tlp);
+			pcie_read_tlp_log(dev, aer + PCI_ERR_HEADER_LOG,
+					  aer + PCI_ERR_PREFIX_LOG,
+					  aer_tlp_log_len(dev), &info->tlp);
 		}
 	}
 
diff --git a/drivers/pci/pcie/dpc.c b/drivers/pci/pcie/dpc.c
index d62d2da872c1..f384d0b02aa0 100644
--- a/drivers/pci/pcie/dpc.c
+++ b/drivers/pci/pcie/dpc.c
@@ -187,10 +187,19 @@ pci_ers_result_t dpc_reset_link(struct pci_dev *pdev)
 	return ret;
 }
 
+static unsigned int dpc_tlp_log_len(struct pci_dev *pdev)
+{
+	/* Remove ImpSpec Log register from the count */
+	if (pdev->dpc_rp_log_size >= 5)
+		return pdev->dpc_rp_log_size - 1;
+
+	return pdev->dpc_rp_log_size;
+}
+
 static void dpc_process_rp_pio_error(struct pci_dev *pdev)
 {
 	u16 cap = pdev->dpc_cap, dpc_status, first_error;
-	u32 status, mask, sev, syserr, exc, log, prefix;
+	u32 status, mask, sev, syserr, exc, log;
 	struct pcie_tlp_log tlp_log;
 	int i;
 
@@ -217,20 +226,19 @@ static void dpc_process_rp_pio_error(struct pci_dev *pdev)
 
 	if (pdev->dpc_rp_log_size < 4)
 		goto clear_status;
-	pcie_read_tlp_log(pdev, cap + PCI_EXP_DPC_RP_PIO_HEADER_LOG, &tlp_log);
+	pcie_read_tlp_log(pdev, cap + PCI_EXP_DPC_RP_PIO_HEADER_LOG,
+			  cap + PCI_EXP_DPC_RP_PIO_TLPPREFIX_LOG,
+			  dpc_tlp_log_len(pdev), &tlp_log);
 	pci_err(pdev, "TLP Header: %#010x %#010x %#010x %#010x\n",
 		tlp_log.dw[0], tlp_log.dw[1], tlp_log.dw[2], tlp_log.dw[3]);
+	for (i = 0; i < pdev->dpc_rp_log_size - 5; i++)
+		pci_err(pdev, "TLP Prefix Header: dw%d, %#010x\n", i, tlp_log.prefix[i]);
 
 	if (pdev->dpc_rp_log_size < 5)
 		goto clear_status;
 	pci_read_config_dword(pdev, cap + PCI_EXP_DPC_RP_PIO_IMPSPEC_LOG, &log);
 	pci_err(pdev, "RP PIO ImpSpec Log %#010x\n", log);
 
-	for (i = 0; i < pdev->dpc_rp_log_size - 5; i++) {
-		pci_read_config_dword(pdev,
-			cap + PCI_EXP_DPC_RP_PIO_TLPPREFIX_LOG + i * 4, &prefix);
-		pci_err(pdev, "TLP Prefix Header: dw%d, %#010x\n", i, prefix);
-	}
  clear_status:
 	pci_write_config_dword(pdev, cap + PCI_EXP_DPC_RP_PIO_STATUS, status);
 }
diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index b7335be56008..7a57b37e4f20 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -2272,8 +2272,8 @@ static void pci_configure_ltr(struct pci_dev *dev)
 
 static void pci_configure_eetlp_prefix(struct pci_dev *dev)
 {
-#ifdef CONFIG_PCI_PASID
 	struct pci_dev *bridge;
+	unsigned int eetlp_max;
 	int pcie_type;
 	u32 cap;
 
@@ -2285,15 +2285,19 @@ static void pci_configure_eetlp_prefix(struct pci_dev *dev)
 		return;
 
 	pcie_type = pci_pcie_type(dev);
+
+	eetlp_max = FIELD_GET(PCI_EXP_DEVCAP2_EE_PREFIX_MAX, cap);
+	/* 00b means 4 */
+	eetlp_max = eetlp_max ?: 4;
+
 	if (pcie_type == PCI_EXP_TYPE_ROOT_PORT ||
 	    pcie_type == PCI_EXP_TYPE_RC_END)
-		dev->eetlp_prefix_path = 1;
+		dev->eetlp_prefix_max = eetlp_max;
 	else {
 		bridge = pci_upstream_bridge(dev);
-		if (bridge && bridge->eetlp_prefix_path)
-			dev->eetlp_prefix_path = 1;
+		if (bridge && bridge->eetlp_prefix_max)
+			dev->eetlp_prefix_max = eetlp_max;
 	}
-#endif
 }
 
 static void pci_configure_serr(struct pci_dev *dev)
diff --git a/include/linux/aer.h b/include/linux/aer.h
index c0df7790c82d..9a8845c01400 100644
--- a/include/linux/aer.h
+++ b/include/linux/aer.h
@@ -20,6 +20,7 @@ struct pci_dev;
 
 struct pcie_tlp_log {
 	u32 dw[4];
+	u32 prefix[4];
 };
 
 struct aer_capability_regs {
@@ -37,7 +38,9 @@ struct aer_capability_regs {
 	u16 uncor_err_source;
 };
 
-int pcie_read_tlp_log(struct pci_dev *pdev, int where, struct pcie_tlp_log *tlp_log);
+int pcie_read_tlp_log(struct pci_dev *pdev, int where, int where2,
+		      unsigned int tlp_len, struct pcie_tlp_log *tlp_log);
+unsigned int aer_tlp_log_len(struct pci_dev *dev);
 
 #if defined(CONFIG_PCIEAER)
 int pci_aer_clear_nonfatal_status(struct pci_dev *dev);
diff --git a/include/linux/pci.h b/include/linux/pci.h
index add9368e6314..dca7fbcfdb33 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -397,7 +397,7 @@ struct pci_dev {
 					   supported from root to here */
 #endif
 	unsigned int	pasid_no_tlp:1;		/* PASID works without TLP Prefix */
-	unsigned int	eetlp_prefix_path:1;	/* End-to-End TLP Prefix */
+	unsigned int	eetlp_prefix_max:3;	/* Max # of End-to-End TLP Prefix, 0=not supported */
 
 	pci_channel_state_t error_state;	/* Current connectivity state */
 	struct device	dev;			/* Generic device interface */
diff --git a/include/uapi/linux/pci_regs.h b/include/uapi/linux/pci_regs.h
index a39193213ff2..cf7a07fa4a3b 100644
--- a/include/uapi/linux/pci_regs.h
+++ b/include/uapi/linux/pci_regs.h
@@ -661,6 +661,7 @@
 #define  PCI_EXP_DEVCAP2_OBFF_MSG	0x00040000 /* New message signaling */
 #define  PCI_EXP_DEVCAP2_OBFF_WAKE	0x00080000 /* Re-use WAKE# for OBFF */
 #define  PCI_EXP_DEVCAP2_EE_PREFIX	0x00200000 /* End-End TLP Prefix */
+#define  PCI_EXP_DEVCAP2_EE_PREFIX_MAX	0x00c00000 /* Max End-End TLP Prefixes */
 #define PCI_EXP_DEVCTL2		0x28	/* Device Control 2 */
 #define  PCI_EXP_DEVCTL2_COMP_TIMEOUT	0x000f	/* Completion Timeout Value */
 #define  PCI_EXP_DEVCTL2_COMP_TMOUT_DIS	0x0010	/* Completion Timeout Disable */
@@ -802,6 +803,7 @@
 #define  PCI_ERR_ROOT_FATAL_RCV		0x00000040 /* Fatal Received */
 #define  PCI_ERR_ROOT_AER_IRQ		0xf8000000 /* Advanced Error Interrupt Message Number */
 #define PCI_ERR_ROOT_ERR_SRC	0x34	/* Error Source Identification */
+#define PCI_ERR_PREFIX_LOG	0x38	/* TLP Prefix LOG Register (up to 16 bytes) */
 
 /* Virtual Channel */
 #define PCI_VC_PORT_CAP1	0x04
-- 
2.39.2

