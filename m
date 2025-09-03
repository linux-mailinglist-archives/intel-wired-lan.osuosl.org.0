Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAF5B4134E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 05:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D17AB84757;
	Wed,  3 Sep 2025 03:59:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D0yWFHH0eLTK; Wed,  3 Sep 2025 03:59:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 422FB84753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756871943;
	bh=s/m3FMzAQHZvS2tZfVFmzJ7d0AwN/T1GwNqYwAYAavI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pWMOUHdSd1EaEs5jJOHzWLxcnyCYu0UW0VHHdwxuUwhmz++Ya/l4IzTeUY6IRYPv2
	 /qfY/CzV7KcXHyyTP7Jlujzdwbqw6ZdVJugHj3Ta0jQKRBxjSVNTtIWjLpv9WKWQWc
	 K0nN+4kJfZtTPX+yBTtp/9PdpVOqa9j70VY9lBAFjKEWChnb8b8weMwY+T8KdA6gMx
	 koZzJfhWbb6uXZOLh/4p3a26sqbBXkWDQWMt2umdMsm+5nVsTg1cGWDqIrKH4zwC0I
	 B3QfYqbip0dUjUkG/RHxJnGjpfhQ61Y9gj5qh7+vAGcIjXJ3qypWuB7E0PSwKTYpvC
	 ZHhZZ2UcsMjIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 422FB84753;
	Wed,  3 Sep 2025 03:59:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B35DB439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A2FF6158E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:59:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RTSp_Fi7cmb7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 03:59:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 71F8F61315
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71F8F61315
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71F8F61315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:59:00 +0000 (UTC)
X-CSE-ConnectionGUID: Y6uMg29GSo6JqnctewQBXw==
X-CSE-MsgGUID: MoEFqlexSe2JsyB+HjdULg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="70552142"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="70552142"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 20:59:00 -0700
X-CSE-ConnectionGUID: rG0Tm50xRaie3qHr8NwFig==
X-CSE-MsgGUID: pLfxLJfKSwC8Thj3rPxK3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171036126"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa009.jf.intel.com with ESMTP; 02 Sep 2025 20:59:00 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: madhu.chittim@intel.com, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Tue,  2 Sep 2025 20:58:52 -0700
Message-ID: <20250903035853.23095-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756871941; x=1788407941;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qzvTJpLJDXLe11E6NDRPmJZpCGYNC2vOrFDW5FckhVQ=;
 b=WoklH15e5SOcG7fAC70o1XuVnP2H/trH+ilwqRDIyl+VwnfUhfXSJ9+z
 +a1eECBgUkaTvzuKVx7CKTGvnZyuTe3U41C56st8ZfngWmsyrx55dc7zQ
 KcsDm9fg3LaYLXPyBvPztbbVCe6caytqzrStomM4sKLeGvgqBkfmFmtpg
 fYS0BehvAxjs75fZOowX0Fy4igetlf6MeNStOxqDJg4fVrNQ7G6EbcT/I
 hWhpZr/BeYudSnHBrwRAKAsRVynKdfszsAZqDNOeOZ/cIWi4+Uk1zY3KL
 8lZ6fz69SVO92hjEJoJoNse7c6XW32OuYQHJxaDoYnmF8wFvVO3B3qrWL
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WoklH15e
Subject: [Intel-wired-lan] [PATCH net-next v4] idpf: add support for IDPF
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

Tested this patch by doing a simple driver load/unload on Intel IPU E2000
hardware which supports 0x1452 and 0x145C device IDs and new hardware
which supports the IDPF PCI programming interface.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
v4:
- add testing info
- use resource_size_t instead of long
- add error statement for ioremap failure

v3:
- reworked logic to avoid gotos

v2:
- replace *u8 with *bool in idpf_is_vf_device function parameter
- use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter

---
 drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 73 ++++++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 40 ++++++++++
 3 files changed, 97 insertions(+), 17 deletions(-)

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
index 7527b967e2e7..4774b933ae50 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -7,6 +7,46 @@
 
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
+	resource_size_t len;
+
+	resource_set_range(&mbx_region,	VF_BASE, IDPF_VF_MBX_REGION_SZ);
+
+	mbx_start = pci_resource_start(pdev, 0) + mbx_region.start;
+	len = resource_size(&mbx_region);
+
+	mbx_addr = ioremap(mbx_start, len);
+	if (!mbx_addr) {
+		pci_err(pdev, "Failed to allocate BAR0 mbx region\n");
+
+		return -EIO;
+	}
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

