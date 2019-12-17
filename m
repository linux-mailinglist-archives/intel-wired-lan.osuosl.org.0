Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B811235A2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2019 20:27:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06CD286652;
	Tue, 17 Dec 2019 19:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ddEfup47ZJt; Tue, 17 Dec 2019 19:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBB3A86610;
	Tue, 17 Dec 2019 19:27:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 643231BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 19:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5FEDF8507B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 19:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7diGKgyeGSW2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2019 19:27:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BE2B887645
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 19:27:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 11:27:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="209808325"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 17 Dec 2019 11:27:06 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Dec 2019 02:55:43 -0800
Message-Id: <20191217105543.40373-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: Add device ids for E822 devices
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

From: Jacob Keller <jacob.e.keller@intel.com>

Add support for E822 devices

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devids.h | 18 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c   |  9 +++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c    | 12 ++++++++++++
 3 files changed, 39 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index f8d5c661d0ba..ce63017c56c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -11,5 +11,23 @@
 #define ICE_DEV_ID_E810C_QSFP		0x1592
 /* Intel(R) Ethernet Controller E810-C for SFP */
 #define ICE_DEV_ID_E810C_SFP		0x1593
+/* Intel(R) Ethernet Connection E822-C for backplane */
+#define ICE_DEV_ID_E822C_BACKPLANE	0x1890
+/* Intel(R) Ethernet Connection E822-C for QSFP */
+#define ICE_DEV_ID_E822C_QSFP		0x1891
+/* Intel(R) Ethernet Connection E822-C for SFP */
+#define ICE_DEV_ID_E822C_SFP		0x1892
+/* Intel(R) Ethernet Connection E822-C/X557-AT 10GBASE-T */
+#define ICE_DEV_ID_E822C_10G_BASE_T	0x1893
+/* Intel(R) Ethernet Connection E822-C 1GbE */
+#define ICE_DEV_ID_E822C_SGMII		0x1894
+/* Intel(R) Ethernet Connection E822-X for backplane */
+#define ICE_DEV_ID_E822X_BACKPLANE	0x1897
+/* Intel(R) Ethernet Connection E822-L for SFP */
+#define ICE_DEV_ID_E822L_SFP		0x1898
+/* Intel(R) Ethernet Connection E822-L/X557-AT 10GBASE-T */
+#define ICE_DEV_ID_E822L_10G_BASE_T	0x1899
+/* Intel(R) Ethernet Connection E822-L 1GbE */
+#define ICE_DEV_ID_E822L_SGMII		0x189A
 
 #endif /* _ICE_DEVIDS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 59c2df765d6d..019ecb229440 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3637,6 +3637,15 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_BACKPLANE), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_QSFP), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_SFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_BACKPLANE), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_QSFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_10G_BASE_T), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SGMII), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822X_BACKPLANE), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_10G_BASE_T), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SGMII), 0 },
 	/* required last entry */
 	{ 0, }
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 57c73f613f32..7525ac50742e 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -289,6 +289,18 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 
 	nvm->eetrack = (eetrack_hi << 16) | eetrack_lo;
 
+	/* the following devices do not have boot_cfg_tlv yet */
+	if (hw->device_id == ICE_DEV_ID_E822C_BACKPLANE ||
+	    hw->device_id == ICE_DEV_ID_E822C_QSFP ||
+	    hw->device_id == ICE_DEV_ID_E822C_10G_BASE_T ||
+	    hw->device_id == ICE_DEV_ID_E822C_SGMII ||
+	    hw->device_id == ICE_DEV_ID_E822C_SFP ||
+	    hw->device_id == ICE_DEV_ID_E822X_BACKPLANE ||
+	    hw->device_id == ICE_DEV_ID_E822L_SFP ||
+	    hw->device_id == ICE_DEV_ID_E822L_10G_BASE_T ||
+	    hw->device_id == ICE_DEV_ID_E822L_SGMII)
+		return status;
+
 	status = ice_get_pfa_module_tlv(hw, &boot_cfg_tlv, &boot_cfg_tlv_len,
 					ICE_SR_BOOT_CFG_PTR);
 	if (status) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
