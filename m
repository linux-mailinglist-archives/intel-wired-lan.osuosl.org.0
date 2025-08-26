Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3660AB37159
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 19:30:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBBE680723;
	Tue, 26 Aug 2025 17:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TS8J2OJyq8Tv; Tue, 26 Aug 2025 17:30:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 846F980724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756229431;
	bh=G8qDRBMy1d9re+NBR9ejHFZdF1a9ZxbLBmdflMj68qw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pC3mgN9CJtatNaAj+YOIFk1S1tL6j+YPrEKvhmWVhsWwgQvCbMnRzs7OwVdQ1cXMD
	 t6ob8qv82zJt/CVWqmrPVD3cdA2cJBqeLz4UN5rwXkWRt3cImEhWTsA63gX1aHLjzl
	 W0zb64jnpXYSBiTSDDiBLLCbIV1IvyRZbQAqaghToxu53/5QY0QX3NhWyq+JWICVpV
	 S71obW7Om+X5nXfDGH595G38QdfyKGNQ6tBUt62+18ENdexO2LTMUxfeAVOajzAy5Q
	 2nxNT0H86ijblL6fbBydw00uAG9ZGhX0o3LD5ZQLBJTaQFYBhS5uPUQR1yO1uEUizM
	 YFHT3Kl5SLvuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 846F980724;
	Tue, 26 Aug 2025 17:30:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 81D86114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 17:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6850E400AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 17:30:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3shOVsR1PE2y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 17:30:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 262AA4008A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 262AA4008A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 262AA4008A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 17:30:27 +0000 (UTC)
X-CSE-ConnectionGUID: 9iUTfQhARoepuKA1E+6P1Q==
X-CSE-MsgGUID: yRnMFoTPRi+WmINVfhR/YQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="69066643"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="69066643"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 10:30:27 -0700
X-CSE-ConnectionGUID: yjvAvLVdSomqemernELU6g==
X-CSE-MsgGUID: s2ink+oXSoevvPx/oJCjag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="170011578"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa008.fm.intel.com with ESMTP; 26 Aug 2025 10:30:27 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: madhu.chittim@intel.com, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Date: Tue, 26 Aug 2025 10:28:45 -0700
Message-ID: <20250826172845.265142-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756229428; x=1787765428;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gIRqVD0xnusfTyI+imAkgRe9N5heTs/2qwMWXDhw6W4=;
 b=cuSDmrsshjNXoEFs6kDpehAdbDcEDzioUSn4PEQxiaRB05m6KcoYd0rh
 2sAHQ0e8DnK+M9C7LvCVmwGnq2ngz2Whskz0fCWvdryCEPdm/5GFSoB9m
 tap416ET5COBN7kiqoAPaQotU2afzWE54SW3Z5OHzuv0NnG511cWEDuOg
 jlVd3TuTMBQMzuCEuHnZoDqi1RvRQUJ8lqrU/M7/cH0UXMv1rWhmMFlNb
 rKXZruRHL8KE48BLkjqbKqEHe/CZ3HOsUt/fAz4BY77TkL1RsnHTbuJjo
 Si69VArfgHk3EDM3HsdCgNAbUPjFSApRIUcT6MfUDrKxHMXwv8Z9xsRV3
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cuSDmrss
Subject: [Intel-wired-lan] [PATCH net-next v1] idpf: add support for IDPF
 PCI programming interface
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

At present IDPF supports only 0x1452 and 0x145C as PF and VF device IDs
on our current generation hardware. Future hardware exposes a new set of
device IDs for each generation. To avoid adding a new device ID for each
generation and to make the driver forward and backward compatible,
make use of the IDPF PCI programming interface to load the driver.

Write and read the VF_ARQBAL mailbox register to find if the current
device is a PF or a VF.

PCI SIG allocated a new programming interface for the IDPF compliant
ethernet network controller devices. It can be found at:
https://members.pcisig.com/wg/PCI-SIG/document/20113
with the document titled as 'PCI Code and ID Assignment Revision 1.16'
or any latest revisions.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 73 ++++++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 37 ++++++++++
 3 files changed, 94 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 19a248d5b124..4b8e944994cb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -983,6 +983,7 @@ void idpf_mbx_task(struct work_struct *work);
 void idpf_vc_event_task(struct work_struct *work);
 void idpf_dev_ops_init(struct idpf_adapter *adapter);
 void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
+int idpf_is_vf_device(struct pci_dev *pdev, u8 *is_vf);
 int idpf_intr_req(struct idpf_adapter *adapter);
 void idpf_intr_rel(struct idpf_adapter *adapter);
 u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 8c46481d2e1f..b161715e1168 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -7,11 +7,57 @@
 
 #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
 
+#define IDPF_NETWORK_ETHERNET_PROGIF				0x01
+#define IDPF_CLASS_NETWORK_ETHERNET_PROGIF			\
+	(PCI_CLASS_NETWORK_ETHERNET << 8 | IDPF_NETWORK_ETHERNET_PROGIF)
+
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_IMPORT_NS("LIBETH");
 MODULE_IMPORT_NS("LIBETH_XDP");
 MODULE_LICENSE("GPL");
 
+/**
+ * idpf_dev_init - Initialize device specific parameters
+ * @adapter: adapter to initialize
+ * @ent: entry in idpf_pci_tbl
+ *
+ * Return: %0 on success, -%errno on failure.
+ */
+static int idpf_dev_init(struct idpf_adapter *adapter,
+			 const struct pci_device_id *ent)
+{
+	u8 is_vf = 0;
+	int err;
+
+	switch (ent->device) {
+	case IDPF_DEV_ID_PF:
+		goto dev_ops_init;
+	case IDPF_DEV_ID_VF:
+		is_vf = 1;
+		goto dev_ops_init;
+	default:
+		if (ent->class == IDPF_CLASS_NETWORK_ETHERNET_PROGIF)
+			goto check_vf;
+
+		return -ENODEV;
+	}
+
+check_vf:
+	err = idpf_is_vf_device(adapter->pdev, &is_vf);
+	if (err)
+		return err;
+
+dev_ops_init:
+	if (is_vf) {
+		idpf_vf_dev_ops_init(adapter);
+		adapter->crc_enable = true;
+	} else {
+		idpf_dev_ops_init(adapter);
+	}
+
+	return 0;
+}
+
 /**
  * idpf_remove - Device removal routine
  * @pdev: PCI device information struct
@@ -165,21 +211,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	adapter->req_tx_splitq = true;
 	adapter->req_rx_splitq = true;
 
-	switch (ent->device) {
-	case IDPF_DEV_ID_PF:
-		idpf_dev_ops_init(adapter);
-		break;
-	case IDPF_DEV_ID_VF:
-		idpf_vf_dev_ops_init(adapter);
-		adapter->crc_enable = true;
-		break;
-	default:
-		err = -ENODEV;
-		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
-			ent->device);
-		goto err_free;
-	}
-
 	adapter->pdev = pdev;
 	err = pcim_enable_device(pdev);
 	if (err)
@@ -259,11 +290,18 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* setup msglvl */
 	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
 
+	err = idpf_dev_init(adapter, ent);
+	if (err) {
+		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
+			ent->device);
+		goto destroy_vc_event_wq;
+	}
+
 	err = idpf_cfg_hw(adapter);
 	if (err) {
 		dev_err(dev, "Failed to configure HW structure for adapter: %d\n",
 			err);
-		goto err_cfg_hw;
+		goto destroy_vc_event_wq;
 	}
 
 	mutex_init(&adapter->vport_ctrl_lock);
@@ -284,7 +322,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	return 0;
 
-err_cfg_hw:
+destroy_vc_event_wq:
 	destroy_workqueue(adapter->vc_event_wq);
 err_vc_event_wq_alloc:
 	destroy_workqueue(adapter->stats_wq);
@@ -304,6 +342,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 static const struct pci_device_id idpf_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF)},
 	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_VF)},
+	{ PCI_DEVICE_CLASS(IDPF_CLASS_NETWORK_ETHERNET_PROGIF, 0xffffff)},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 4cc58c83688c..5bf9d3ccb624 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -7,6 +7,43 @@
 
 #define IDPF_VF_ITR_IDX_SPACING		0x40
 
+#define IDPF_VF_TEST_VAL		0xFEED0000
+
+/**
+ * idpf_is_vf_device - Helper to find if it is a VF device
+ * @pdev: PCI device information struct
+ * @is_vf: used to update VF device status
+ *
+ * Return: %0 on success, -%errno on failure.
+ */
+int idpf_is_vf_device(struct pci_dev *pdev, u8 *is_vf)
+{
+	struct resource mbx_region;
+	resource_size_t mbx_start;
+	void __iomem *mbx_addr;
+	long len;
+
+	resource_set_range(&mbx_region,	VF_BASE, IDPF_VF_MBX_REGION_SZ);
+
+	mbx_start = pci_resource_start(pdev, 0) + mbx_region.start;
+	len = resource_size(&mbx_region);
+
+	mbx_addr = ioremap(mbx_start, len);
+	if (!mbx_addr)
+		return -EIO;
+
+	writel(IDPF_VF_TEST_VAL, mbx_addr + VF_ARQBAL - VF_BASE);
+
+	/* Force memory write to complete before reading it back */
+	wmb();
+
+	*is_vf = readl(mbx_addr + VF_ARQBAL - VF_BASE) == IDPF_VF_TEST_VAL;
+
+	iounmap(mbx_addr);
+
+	return 0;
+}
+
 /**
  * idpf_vf_ctlq_reg_init - initialize default mailbox registers
  * @adapter: adapter structure
-- 
2.43.0

