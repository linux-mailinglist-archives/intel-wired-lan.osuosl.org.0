Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E6EBA4EDF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 20:52:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FB0142200;
	Fri, 26 Sep 2025 18:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qEMFWmNl2TyJ; Fri, 26 Sep 2025 18:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F1A642229
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758912765;
	bh=qEy9QoR3ZPjqXhxGHB3JaRUndYIxciEREsaa57t2ZdY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YjG8QyGDEYfW0gH5noow77cfy4GCi0swgiSy3nG6XHniWbjRKWv9NEOk8TgNs2oZL
	 an/kw8bGW4SwUPrEi/F/0XX+mnXXY7WcGT3qXHccz8bLwOYTsGxJUZe7Jlvd9tkDI9
	 GXI2a6zFH00UZ8B04clzvwaLVf6Kztlb8nOe4C43Tbb0a/AKro9gOGczBNbWKZxbXT
	 oNPVuaoDmyp5xygnHVZoF9gwbYfOHiMcZnhF+z9kb5QYUODrdA3nekknnSiMq+Zq6C
	 joXDKaem/rZe0NDYTTDv7nJTFoA7JGCAw7WPPyROlPNAgDXtUQmBP979DbKiJ1lK4l
	 Oq3FtG4B6m5Sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F1A642229;
	Fri, 26 Sep 2025 18:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BE71F177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 18:52:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D37384D9A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 18:52:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3s5ZT5v6ucuE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 18:52:42 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 26 Sep 2025 18:52:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 63F6984D99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63F6984D99
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=madhu.chittim@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 63F6984D99
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 18:52:42 +0000 (UTC)
X-CSE-ConnectionGUID: 99xAJ0nFTqWwCfdvQYFWkw==
X-CSE-MsgGUID: 9ZVHcWXkRPiBPMa+gUP/vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11565"; a="71935987"
X-IronPort-AV: E=Sophos;i="6.18,295,1751266800"; d="scan'208";a="71935987"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 11:45:34 -0700
X-CSE-ConnectionGUID: B2/Gn5ZOSFy5/FH4hWbuWg==
X-CSE-MsgGUID: Nywi0fwyRfC1kqy3opj2QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,295,1751266800"; d="scan'208";a="214825821"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.151])
 by orviesa001.jf.intel.com with ESMTP; 26 Sep 2025 11:45:33 -0700
From: Madhu Chittim <madhu.chittim@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com
Date: Fri, 26 Sep 2025 11:45:33 -0700
Message-ID: <20250926184533.1872683-1-madhu.chittim@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758912763; x=1790448763;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qn3dKHpLNKvEuHaXefHzfNlFAZYIwti/Y+04qxDydM4=;
 b=Rk39STFvXSThYdDyPXeTHjo3b9vvqlyaiOLAk6fEUSjf2pxnKgdI4YZW
 9sr1q2gsXyzvGWTdIXduNVgkugPUNb697hdcm6XgH2EeVBxVjM913b/Af
 E3vm9qLwkbYhr9zhsYPq+ACbFbu46PStpfecDW3cWxpg5kjcsPIl2tqLe
 EwjWmGqwjqWu0BFmmYxIjHjljyzf4MUBn3hRKHiYQ6eanqdpL4pJ5fpbp
 v+juGTorq5eVcGrpMe0bX8RHzk9Jr0yFdRFQdEt1JHK0cURcIDpRJ8su0
 ZvdwevHqbUw1ZFgOcsT5Bw1nopJ1/cxzdQzaTJdTn9zcto4d5A8P7RGw6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rk39STFv
Subject: [Intel-wired-lan] [PATCH iwl-next v5] idpf: add support for IDPF
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

Tested this patch by doing a simple driver load/unload on Intel IPU E2000
hardware which supports 0x1452 and 0x145C device IDs and new hardware
which supports the IDPF PCI programming interface.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
---
v5:
- Removed use of resource_set_range
- ioremap only the register which we would like write and read back
- Renamed function from idpf_is_vf_device to idpf_get_device_type and
  moved it idpf_main.c as it is not specific to VF
- idpf_get_device_type now returns device type

v4:
- add testing info
- use resource_size_t instead of long
- add error statement for ioremap failure

v3:
- reworked logic to avoid gotos

v2:
- replace *u8 with *bool in idpf_is_vf_device function parameter
- use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter

 drivers/net/ethernet/intel/idpf/idpf.h      |   1 +
 drivers/net/ethernet/intel/idpf/idpf_main.c | 105 ++++++++++++++++----
 2 files changed, 89 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 8cfc68cbfa06..bdabea45e81f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -1005,6 +1005,7 @@ void idpf_mbx_task(struct work_struct *work);
 void idpf_vc_event_task(struct work_struct *work);
 void idpf_dev_ops_init(struct idpf_adapter *adapter);
 void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
+int idpf_get_device_type(struct pci_dev *pdev);
 int idpf_intr_req(struct idpf_adapter *adapter);
 void idpf_intr_rel(struct idpf_adapter *adapter);
 u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 8c46481d2e1f..f1af7dadf179 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -3,15 +3,93 @@
 
 #include "idpf.h"
 #include "idpf_devids.h"
+#include "idpf_lan_vf_regs.h"
 #include "idpf_virtchnl.h"
 
 #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
 
+#define IDPF_NETWORK_ETHERNET_PROGIF				0x01
+#define IDPF_CLASS_NETWORK_ETHERNET_PROGIF			\
+	(PCI_CLASS_NETWORK_ETHERNET << 8 | IDPF_NETWORK_ETHERNET_PROGIF)
+#define IDPF_VF_TEST_VAL		0xfeed0000u
+
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_IMPORT_NS("LIBETH");
 MODULE_IMPORT_NS("LIBETH_XDP");
 MODULE_LICENSE("GPL");
 
+/**
+ * idpf_get_device_type - Helper to find if it is a VF or PF device
+ * @pdev: PCI device information struct
+ *
+ * Return: PF/VF or -%errno on failure.
+ */
+int idpf_get_device_type(struct pci_dev *pdev)
+{
+	void __iomem *addr;
+	int ret;
+
+	addr = ioremap(pci_resource_start(pdev, 0) + VF_ARQBAL, 4);
+	if (!addr) {
+		pci_err(pdev, "Failed to allocate BAR0 mbx region\n");
+		return -EIO;
+	}
+
+	writel(IDPF_VF_TEST_VAL, addr);
+	if (readl(addr) == IDPF_VF_TEST_VAL)
+		ret = IDPF_DEV_ID_VF;
+	else
+		ret = IDPF_DEV_ID_PF;
+
+	iounmap(addr);
+
+	return ret;
+}
+
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
+	int ret;
+
+	if (ent->class == IDPF_CLASS_NETWORK_ETHERNET_PROGIF) {
+		ret = idpf_get_device_type(adapter->pdev);
+		switch (ret) {
+		case IDPF_DEV_ID_VF:
+			idpf_vf_dev_ops_init(adapter);
+			adapter->crc_enable = true;
+			break;
+		case IDPF_DEV_ID_PF:
+			idpf_dev_ops_init(adapter);
+			break;
+		default:
+			return ret;
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
@@ -165,21 +243,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
@@ -259,11 +322,18 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
@@ -284,7 +354,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	return 0;
 
-err_cfg_hw:
+destroy_vc_event_wq:
 	destroy_workqueue(adapter->vc_event_wq);
 err_vc_event_wq_alloc:
 	destroy_workqueue(adapter->stats_wq);
@@ -304,6 +374,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 static const struct pci_device_id idpf_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF)},
 	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_VF)},
+	{ PCI_DEVICE_CLASS(IDPF_CLASS_NETWORK_ETHERNET_PROGIF, ~0)},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
-- 
2.51.0

