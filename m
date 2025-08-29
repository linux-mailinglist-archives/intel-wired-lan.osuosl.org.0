Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA38CB3C1B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 19:25:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 896F283D1D;
	Fri, 29 Aug 2025 17:25:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GAHvFGcCcUKv; Fri, 29 Aug 2025 17:25:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8ED6B8275A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756488300;
	bh=stPC3vuh8rBr9c+TA6y8ZGdAGPS/JsvMONeJjV3TWtU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eYvvziWme94JOfbL1g4P/KAXkSe1oW7SKGIdlrWtYskhVqkwJvkKqaK/4/ZFao0/v
	 QWShqe2i0TGZivOa6bYM+0HQ37S0QVoHmrjy+KXs1WtW9TqE2EyxOA7U+LplD/4CRN
	 AEAj82otCsKOoqjcqX03UJ2syawu+oQAdPG60fKEFfsp77ugRpxABRbf7M05h3LRT+
	 Mx2ELwfr4GqKjgq8RUwPvPa6uaVe6aoZUyI9sg8zo1QcQmHfaKeEB2R84uNT1Anj4i
	 6fSk3Ek6M298gF8kxgJPS3mTSB32Ua3Sfaj6/R27bAZhHVcohVk65KRyEJrXTJNtvD
	 zY2YnduJQAYMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8ED6B8275A;
	Fri, 29 Aug 2025 17:25:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 03B9869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 17:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD7918275A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 17:24:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 750JkAeUn7Sq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 17:24:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=madhu.chittim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D71D0825B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D71D0825B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D71D0825B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 17:24:57 +0000 (UTC)
X-CSE-ConnectionGUID: OcZ4kuzvTvy+telCgix2Hg==
X-CSE-MsgGUID: kGA2iVwGQyeG7L7tULvdMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11537"; a="70213213"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="70213213"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 10:24:54 -0700
X-CSE-ConnectionGUID: 7lWCkXKIR2atC4LJ8fPgDA==
X-CSE-MsgGUID: sUV77jL1Rz2NCmQwi0oF+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="170820043"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.151])
 by fmviesa009.fm.intel.com with ESMTP; 29 Aug 2025 10:24:53 -0700
From: Madhu Chittim <madhu.chittim@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	horms@kernel.org
Date: Fri, 29 Aug 2025 10:24:53 -0700
Message-ID: <20250829172453.2059973-1-madhu.chittim@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756488298; x=1788024298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bzhq7FUc9ws0bO0BMXCXUFXLEARPMMSKFNKweW3RMKo=;
 b=V9Y7Mt4D2Vg2dJjE3AAI6HnnWIbCus9ZlsnHsiRLykaNf9M9tZ8NtbYZ
 KovwotS0gliGphZr05p8k9O0GEohV5bnX+zgEGf98c7sm1n8GdEOgbx4A
 tq+W/AwstdxPMf6nQYK3ZkGpnoPU/r/H+4eFHUXPLl1Y3zV7MMBMWH3Pd
 6tQbwmxfF/jI0H0+lzpYB2dWcqIyaAXrzF52HqriHShKkDAUNeRTUDHd2
 TB6M40rICV2jVjEqtmmUJQGejUaxllIGdF68muNvlRIeUREF21XUFsfZ0
 Sy0mBlvDMgprfv+6J5c4zF6PYM3lo61eEEVnB8gl2L5lih3Th3fM2yJtt
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V9Y7Mt4D
Subject: [Intel-wired-lan] [PATCH net-next v3] idpf: add support for IDPF
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

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

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

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>

---
v3:
- reworked logic to avoid gotos

v2:
- replace *u8 with *bool in idpf_is_vf_device function parameter
- use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter

---

Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 73 ++++++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 37 ++++++++++
 3 files changed, 94 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index c56abf8b4c92..4a16e481faf7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -1041,6 +1041,7 @@ void idpf_mbx_task(struct work_struct *work);
 void idpf_vc_event_task(struct work_struct *work);
 void idpf_dev_ops_init(struct idpf_adapter *adapter);
 void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
+int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf);
 int idpf_intr_req(struct idpf_adapter *adapter);
 void idpf_intr_rel(struct idpf_adapter *adapter);
 u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 8c46481d2e1f..493604d50143 100644
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
+	bool is_vf = false;
+	int err;
+
+	if (ent->class == IDPF_CLASS_NETWORK_ETHERNET_PROGIF) {
+		err = idpf_is_vf_device(adapter->pdev, &is_vf);
+		if (err)
+			return err;
+		if (is_vf) {
+			idpf_vf_dev_ops_init(adapter);
+			adapter->crc_enable = true;
+		} else {
+			idpf_dev_ops_init(adapter);
+		}
+
+		return 0;
+	}
+
+	switch (ent->device) {
+	case IDPF_DEV_ID_PF:
+		idpf_dev_ops_init(adapter);
+		break;
+	case IDPF_DEV_ID_VF:
+		idpf_vf_dev_ops_init(adapter);
+		adapter->crc_enable = true;
+		break;
+	default:
+		return -ENODEV;
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
+	{ PCI_DEVICE_CLASS(IDPF_CLASS_NETWORK_ETHERNET_PROGIF, ~0)},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 7527b967e2e7..09cccdf45b50 100644
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
+int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf)
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
2.50.1

