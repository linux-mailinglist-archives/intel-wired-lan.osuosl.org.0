Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED56543E42
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 23:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CCB441A4C;
	Wed,  8 Jun 2022 21:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yat7fQ1NQ3_F; Wed,  8 Jun 2022 21:10:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B28DD41A43;
	Wed,  8 Jun 2022 21:10:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6124E1BF2B7
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jun 2022 21:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C32660BE4
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jun 2022 21:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBrLCAHeX_E7 for <intel-wired-lan@osuosl.org>;
 Wed,  8 Jun 2022 21:10:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75DF160BD1
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jun 2022 21:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654722601; x=1686258601;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RDwcckEgiXHtBVx7a1tVQYXlzwphWBsvcMxTy4rYKgc=;
 b=Ps7psjzDn21/h22Q/YpJvhPPEZ1HFzElunmpigwZ7bjYkScdR49diqkg
 1c8Jot4RKDHmIZZE4LaypJ9g0KlbX+8s2BvFxkTg6nOi2WhMnV03/lX7C
 xn2JuWpzDfNN6A/GfC/aUTP/6PMYYe/8ZUSMpHFsirTfR55ii/t/7a8fU
 LnZlE059c9XHYmER4Nd2xA//IH+k+NcqMF7LFwVlj0UTs4oeigmbLNOEv
 MZO4MejOY6blXKZrXLQTOzbjkqCVBwKkJywg8z717/8xtkDlrZfb5Coh2
 e3AtJNCEmE2AyBVmVtxgGQc1ZVtWpTzvWGNfM3Xy7TJWX9N0GgYMxlygO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="338830053"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="338830053"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 14:10:00 -0700
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="683565736"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.209.9.252])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 14:10:00 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed,  8 Jun 2022 14:09:52 -0700
Message-Id: <20220608210952.442-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: handle E822 generic device ID in
 PLDM header
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver currently presumes that the record data in the PLDM header
of the firmware image will match the device ID of the running device.
This is true for E810 devices. It appears that for E822 devices that
this is not guaranteed to be true.

Fix this by adding a check for the generic E822 device.

Fixes: d69ea414c9b4 ("ice: implement device flash update via devlink")
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devids.h   |  1 +
 .../net/ethernet/intel/ice/ice_fw_update.c    | 96 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  1 +
 3 files changed, 96 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index 61dd2f18dee8..b41bc3dc1745 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -5,6 +5,7 @@
 #define _ICE_DEVIDS_H_
 
 /* Device IDs */
+#define ICE_DEV_ID_E822_SI_DFLT         0x1888
 /* Intel(R) Ethernet Connection E823-L for backplane */
 #define ICE_DEV_ID_E823L_BACKPLANE	0x124C
 /* Intel(R) Ethernet Connection E823-L for SFP */
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 665a344fb9c0..dc87223d57af 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -736,7 +736,87 @@ static int ice_finalize_update(struct pldmfw *context)
 	return 0;
 }
 
-static const struct pldmfw_ops ice_fwu_ops = {
+struct ice_pldm_pci_record_id {
+	u32 vendor;
+	u32 device;
+	u32 subsystem_vendor;
+	u32 subsystem_device;
+};
+
+/**
+ * ice_op_pci_match_record - Check if a PCI device matches the record
+ * @context: PLDM fw update structure
+ * @record: list of records extracted from the PLDM image
+ *
+ * Determine if the PCI device associated with this device matches the record
+ * data provided.
+ *
+ * Searches the descriptor TLVs and extracts the relevant descriptor data into
+ * a pldm_pci_record_id. This is then compared against the PCI device ID
+ * information.
+ *
+ * Returns: true if the device matches the record, false otherwise.
+ */
+static bool ice_op_pci_match_record(struct pldmfw *context,
+				    struct pldmfw_record *record)
+{
+	struct pci_dev *pdev = to_pci_dev(context->dev);
+	struct ice_pldm_pci_record_id id = {
+		.vendor = PCI_ANY_ID,
+		.device = PCI_ANY_ID,
+		.subsystem_vendor = PCI_ANY_ID,
+		.subsystem_device = PCI_ANY_ID,
+	};
+	struct pldmfw_desc_tlv *desc;
+
+	list_for_each_entry(desc, &record->descs, entry) {
+		u16 value;
+		int *ptr;
+
+		switch (desc->type) {
+		case PLDM_DESC_ID_PCI_VENDOR_ID:
+			ptr = &id.vendor;
+			break;
+		case PLDM_DESC_ID_PCI_DEVICE_ID:
+			ptr = &id.device;
+			break;
+		case PLDM_DESC_ID_PCI_SUBVENDOR_ID:
+			ptr = &id.subsystem_vendor;
+			break;
+		case PLDM_DESC_ID_PCI_SUBDEV_ID:
+			ptr = &id.subsystem_device;
+			break;
+		default:
+			/* Skip unrelated TLVs */
+			continue;
+		}
+
+		value = get_unaligned_le16(desc->data);
+		/* A value of zero for one of the descriptors is sometimes
+		 * used when the record should ignore this field when matching
+		 * device. For example if the record applies to any subsystem
+		 * device or vendor.
+		 */
+		if (value)
+			*ptr = value;
+		else
+			*ptr = PCI_ANY_ID;
+	}
+
+	/* the E822 device can have a generic device ID so check for that */
+	if ((id.vendor == PCI_ANY_ID || id.vendor == pdev->vendor) &&
+	    (id.device == PCI_ANY_ID || id.device == pdev->device ||
+	    id.device == ICE_DEV_ID_E822_SI_DFLT) &&
+	    (id.subsystem_vendor == PCI_ANY_ID ||
+	    id.subsystem_vendor == pdev->subsystem_vendor) &&
+	    (id.subsystem_device == PCI_ANY_ID ||
+	    id.subsystem_device == pdev->subsystem_device))
+		return true;
+
+	return false;
+}
+
+static const struct pldmfw_ops ice_fwu_ops_e810 = {
 	.match_record = &pldmfw_op_pci_match_record,
 	.send_package_data = &ice_send_package_data,
 	.send_component_table = &ice_send_component_table,
@@ -744,6 +824,14 @@ static const struct pldmfw_ops ice_fwu_ops = {
 	.finalize_update = &ice_finalize_update,
 };
 
+static const struct pldmfw_ops ice_fwu_ops_e822 = {
+	.match_record = &ice_op_pci_match_record,
+	.send_package_data = &ice_send_package_data,
+	.send_component_table = &ice_send_component_table,
+	.flash_component = &ice_flash_component,
+	.finalize_update = &ice_finalize_update,
+};
+
 /**
  * ice_get_pending_updates - Check if the component has a pending update
  * @pf: the PF driver structure
@@ -921,7 +1009,11 @@ int ice_devlink_flash_update(struct devlink *devlink,
 
 	memset(&priv, 0, sizeof(priv));
 
-	priv.context.ops = &ice_fwu_ops;
+	/* the E822 device needs a slightly different ops */
+	if (hw->mac_type == ICE_MAC_GENERIC)
+		priv.context.ops = &ice_fwu_ops_e822;
+	else
+		priv.context.ops = &ice_fwu_ops_e810;
 	priv.context.dev = dev;
 	priv.extack = extack;
 	priv.pf = pf;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e1cae253412c..715760beb645 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5413,6 +5413,7 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT), 0 },
 	/* required last entry */
 	{ 0, }
 };
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
