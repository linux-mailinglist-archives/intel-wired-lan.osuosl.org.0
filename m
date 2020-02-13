Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84ED15CD50
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 22:31:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96FA08591D;
	Thu, 13 Feb 2020 21:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lSXzj6z4ZqKi; Thu, 13 Feb 2020 21:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81F7A864E6;
	Thu, 13 Feb 2020 21:31:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 102391BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CC8E21F65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w4-ucoYYaUO6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 21:31:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id A0652203F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227382418"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 13:31:51 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Feb 2020 13:31:28 -0800
Message-Id: <20200213213129.34023-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
References: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 v2 14/15] ice: add support for E823
 devices
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

From: Bruce Allan <bruce.w.allan@intel.com>

Add E823 device ids and convert conditional expressions to a more
appropriate switch statement.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devids.h | 20 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c   | 10 +++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c    | 32 +++++++++++++++------
 3 files changed, 53 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index 56952d89ada8..6fccb66ff43c 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -5,6 +5,16 @@
 #define _ICE_DEVIDS_H_
 
 /* Device IDs */
+/* Intel(R) Ethernet Connection E823-L for backplane */
+#define ICE_DEV_ID_E823L_BACKPLANE	0x124C
+/* Intel(R) Ethernet Connection E823-L for SFP */
+#define ICE_DEV_ID_E823L_SFP		0x124D
+/* Intel(R) Ethernet Connection E823-L/X557-AT 10GBASE-T */
+#define ICE_DEV_ID_E823L_10G_BASE_T	0x124E
+/* Intel(R) Ethernet Connection E823-L 1GbE */
+#define ICE_DEV_ID_E823L_1GBE		0x124F
+/* Intel(R) Ethernet Connection E823-L for QSFP */
+#define ICE_DEV_ID_E823L_QSFP		0x151D
 /* Intel(R) Ethernet Controller E810-C for backplane */
 #define ICE_DEV_ID_E810C_BACKPLANE	0x1591
 /* Intel(R) Ethernet Controller E810-C for QSFP */
@@ -13,6 +23,16 @@
 #define ICE_DEV_ID_E810C_SFP		0x1593
 /* Intel(R) Ethernet Controller E810-XXV for SFP */
 #define ICE_DEV_ID_E810_XXV_SFP		0x159B
+/* Intel(R) Ethernet Connection E823-C for backplane */
+#define ICE_DEV_ID_E823C_BACKPLANE	0x188A
+/* Intel(R) Ethernet Connection E823-C for QSFP */
+#define ICE_DEV_ID_E823C_QSFP		0x188B
+/* Intel(R) Ethernet Connection E823-C for SFP */
+#define ICE_DEV_ID_E823C_SFP		0x188C
+/* Intel(R) Ethernet Connection E823-C/X557-AT 10GBASE-T */
+#define ICE_DEV_ID_E823C_10G_BASE_T	0x188D
+/* Intel(R) Ethernet Connection E823-C 1GbE */
+#define ICE_DEV_ID_E823C_SGMII		0x188E
 /* Intel(R) Ethernet Connection E822-C for backplane */
 #define ICE_DEV_ID_E822C_BACKPLANE	0x1890
 /* Intel(R) Ethernet Connection E822-C for QSFP */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 017d68b158fc..5f23806669e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3616,6 +3616,11 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_QSFP), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_SFP), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_SFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_BACKPLANE), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_QSFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_10G_BASE_T), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SGMII), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_BACKPLANE), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_QSFP), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SFP), 0 },
@@ -3625,6 +3630,11 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SFP), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_10G_BASE_T), 0 },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SGMII), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_BACKPLANE), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_SFP), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP), 0 },
 	/* required last entry */
 	{ 0, }
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 7525ac50742e..75cd4cbb473b 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -289,17 +289,31 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 
 	nvm->eetrack = (eetrack_hi << 16) | eetrack_lo;
 
+	switch (hw->device_id) {
 	/* the following devices do not have boot_cfg_tlv yet */
-	if (hw->device_id == ICE_DEV_ID_E822C_BACKPLANE ||
-	    hw->device_id == ICE_DEV_ID_E822C_QSFP ||
-	    hw->device_id == ICE_DEV_ID_E822C_10G_BASE_T ||
-	    hw->device_id == ICE_DEV_ID_E822C_SGMII ||
-	    hw->device_id == ICE_DEV_ID_E822C_SFP ||
-	    hw->device_id == ICE_DEV_ID_E822X_BACKPLANE ||
-	    hw->device_id == ICE_DEV_ID_E822L_SFP ||
-	    hw->device_id == ICE_DEV_ID_E822L_10G_BASE_T ||
-	    hw->device_id == ICE_DEV_ID_E822L_SGMII)
+	case ICE_DEV_ID_E823C_BACKPLANE:
+	case ICE_DEV_ID_E823C_QSFP:
+	case ICE_DEV_ID_E823C_SFP:
+	case ICE_DEV_ID_E823C_10G_BASE_T:
+	case ICE_DEV_ID_E823C_SGMII:
+	case ICE_DEV_ID_E822C_BACKPLANE:
+	case ICE_DEV_ID_E822C_QSFP:
+	case ICE_DEV_ID_E822C_10G_BASE_T:
+	case ICE_DEV_ID_E822C_SGMII:
+	case ICE_DEV_ID_E822C_SFP:
+	case ICE_DEV_ID_E822X_BACKPLANE:
+	case ICE_DEV_ID_E822L_SFP:
+	case ICE_DEV_ID_E822L_10G_BASE_T:
+	case ICE_DEV_ID_E822L_SGMII:
+	case ICE_DEV_ID_E823L_BACKPLANE:
+	case ICE_DEV_ID_E823L_SFP:
+	case ICE_DEV_ID_E823L_10G_BASE_T:
+	case ICE_DEV_ID_E823L_1GBE:
+	case ICE_DEV_ID_E823L_QSFP:
 		return status;
+	default:
+		break;
+	}
 
 	status = ice_get_pfa_module_tlv(hw, &boot_cfg_tlv, &boot_cfg_tlv_len,
 					ICE_SR_BOOT_CFG_PTR);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
