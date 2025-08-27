Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83633B38842
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 19:09:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D75B80DEF;
	Wed, 27 Aug 2025 17:09:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CJk-gu2Vtrhq; Wed, 27 Aug 2025 17:09:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B955C80E03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756314582;
	bh=XUMF+yEOq+JjBF5vf+dPwsfX4WJOhcThfhczjDBnkS4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Pi2eQLQuKXJBU+tG8Y1tEJJBWezReHuIEDLCrJtSOxHMiH/t8usRY8Ifp9r1im4uQ
	 yotNq9H8KTAo1+YkFRLiTygcWc69HkdDeipQn9NHT0blVbRgnvsKf6XIrQi82zfXaq
	 lh1Hhd2IN+/dHD71nnyIh1l7UHkJoV0PZqSeObTMoSDnAWXg3IHl+oi+5jR/lxrLfg
	 OiJEXCaYrMukZMOpUJCjxrLY6XlAKjjPNhZ2E3RfXa+Q/oR7WUBXk+QlfKj4FoBEpA
	 2bRdNCewYIDO2PuF6YKNKQG44BH5L7fZq0d0f/cRtEru0IOCJdG60OgJKpSnwH+L3S
	 NgMHmfFvM2lcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B955C80E03;
	Wed, 27 Aug 2025 17:09:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 036B4B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 17:09:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E16AF405DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 17:09:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BX6aOSfCD6TW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 17:09:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7CD7F4059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CD7F4059E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7CD7F4059E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 17:09:39 +0000 (UTC)
X-CSE-ConnectionGUID: mkIVXmquRU6WiJQ7kNJhcw==
X-CSE-MsgGUID: sXPoA3+ITpG4gdpnpNJTvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58515375"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58515375"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 10:09:38 -0700
X-CSE-ConnectionGUID: GU3iTpwuQ++Q6BqN3cwUCQ==
X-CSE-MsgGUID: E3oI8Il5T5q0XfT8rz/Sqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174055092"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa003.jf.intel.com with ESMTP; 27 Aug 2025 10:09:38 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: madhu.chittim@intel.com, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Date: Wed, 27 Aug 2025 10:09:19 -0700
Message-ID: <20250827170919.51563-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756314579; x=1787850579;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A9AomUIKs59ti1CXS8VU41SHgT03cDP59EObbJz83N4=;
 b=k1bDLmD068Uc0hcRIY+ltzwsnU/4PRJzLsH04WUsnck2Y4ruHtsuMJbu
 uKCM+69t7SCpGhw+uYpkg1Z/TwxDcpDlABpTP/v/XxPJeijQtwl0CXAzO
 RHg700CZAcfEIrt5T24fJPIQJQ+tYR8CZpj7yvA/QGuBX63FqIh6n0MBW
 V083kVueQdHLBbxku8Nhm2VMnoUcdj4He5bCer4mmXI6EsS9e+lXYONfz
 T7a0XdPsfxjzGhSFS9eCq7ScHwFEWo1iN9XIqBHdAP/FBJMVLD06chPEn
 vb/7z64ElKwOBEj/UiV7KiExJnSC9m+cM6qvg/xTqn1YhDRcA8BIJFMPH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k1bDLmD0
Subject: [Intel-wired-lan] [PATCH net-next v2] idpf: add support for IDPF
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
v2:
- replace *u8 with *bool in idpf_is_vf_device function parameter
- use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter

---
 drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 73 ++++++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 37 ++++++++++
 3 files changed, 94 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 19a248d5b124..a1c5253e1df2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -983,6 +983,7 @@ void idpf_mbx_task(struct work_struct *work);
 void idpf_vc_event_task(struct work_struct *work);
 void idpf_dev_ops_init(struct idpf_adapter *adapter);
 void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
+int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf);
 int idpf_intr_req(struct idpf_adapter *adapter);
 void idpf_intr_rel(struct idpf_adapter *adapter);
 u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 8c46481d2e1f..a69e66cecfbd 100644
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
+	switch (ent->device) {
+	case IDPF_DEV_ID_PF:
+		goto dev_ops_init;
+	case IDPF_DEV_ID_VF:
+		is_vf = true;
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
+	{ PCI_DEVICE_CLASS(IDPF_CLASS_NETWORK_ETHERNET_PROGIF, ~0)},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 4cc58c83688c..d5b09996caa8 100644
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
2.43.0

