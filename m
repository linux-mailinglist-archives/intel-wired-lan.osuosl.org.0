Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 344938078B4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 20:36:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C95360D65;
	Wed,  6 Dec 2023 19:36:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C95360D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701891404;
	bh=QPmy69Qw1FKPeEjGH0V226BdF9MkQWftDz/hNsNxAro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SKn+fQeYeOX7IGqbYwpIh40JWI7WLJcQn7EyK8HiFaJ0FpBEOySktDikNjCwfuucX
	 eZyKet1+ukY8iWWTn6CILmYYU4DvC7ODV5HoXPiQecouE5Sp1oqF3qvySXf/OgLVkS
	 cwexBq/z/aYQv4y6nFRdbMyz6ih8b6aKy3G5qnO8O/cRGZbe/btL6sn8etRxkKwBfY
	 ZoPnlA/C/09o6iLwr0T/zPHrcVDwKGjFagawU7G6JcM4DIodZ06e1KqmsQ6/Tt9gty
	 bfhz7dX+OJ9/VFDgYlsYm4q4C4q5aGRV9SiAKn0xFMZD2L2VmhU6NI1TGVoQ5SQYM7
	 oA30qoGAYLHrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKztjwqtD5Pk; Wed,  6 Dec 2023 19:36:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2993760AD4;
	Wed,  6 Dec 2023 19:36:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2993760AD4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB18F1BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 912D381E5A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 912D381E5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vkw9D-eWHlBR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 19:36:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CFC1681E20
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFC1681E20
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1214426"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1214426"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 11:29:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="889446503"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="889446503"
Received: from unknown (HELO gklab-003-001.igk.intel.com) ([10.211.3.1])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2023 11:29:26 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Dec 2023 20:29:17 +0100
Message-Id: <20231206192919.3826128-2-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
References: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701891394; x=1733427394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DHcFzeyn/0o/6C2beC5UYTv9p7T0PqHMseFDRQAj34Y=;
 b=TztXOr5ppKE5fPW8M3gt0IwMbOY9iWbGBsb8ILHyOyIgYiJuz4ZDR9Iv
 eZZ/C9KyvnnV4SLw8rGO++PVemvIr8Dnig6dE2/FfiB9fKm5ihAWVNXNU
 DwjLKCXQ9S1JN7Lam0VQMX59bvrDMPIct3GM837AG3ZqqcXAUPIRCM6rM
 k4eEeD4YafC4Szs10qdGQxW7LE3oIPyo/LomPMw8kyeU3Ab2ECfZKCaeW
 7l3TmQZ+R4Qukw7CFecPsv/c+XDOm2x7r2FfUtHwnrkRTDeU2xA9Tr+V3
 LELxJi98P+T35/1RcB9DghLTBZ09LXImWjZ8E3HunLeydTB270sciRC3F
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TztXOr5p
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: introduce new E825C
 devices family
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
Cc: netdev@vger.kernel.org, Michal Michalik <michal.michalik@intel.com>,
 Jan Glaza <jan.glaza@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce new Intel Ethernet E825C family devices.
Add new PCI device IDs which are going to be supported by the
driver:
- 579C: Intel(R) Ethernet Connection E825-C for backplane
- 579D: Intel(R) Ethernet Connection E825-C for QSFP
- 579E: Intel(R) Ethernet Connection E825-C for SFP
- 579F: Intel(R) Ethernet Connection E825-C for SGMII

Add helper function ice_is_e825c() to verify if the running device
belongs to E825C family.

Co-developed-by: Jan Glaza <jan.glaza@intel.com>
Signed-off-by: Jan Glaza <jan.glaza@intel.com>
Co-developed-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 19 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h |  1 +
 drivers/net/ethernet/intel/ice/ice_devids.h |  8 ++++++++
 drivers/net/ethernet/intel/ice/ice_main.c   |  4 ++++
 4 files changed, 32 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 41b0ac666cb9..0a519310472b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -240,6 +240,25 @@ bool ice_is_e823(struct ice_hw *hw)
 	}
 }
 
+/**
+ * ice_is_e825c - Check if a device is E825C family device
+ * @hw: pointer to the hardware structure
+ *
+ * Return: true if the device is E825-C based, false if not.
+ */
+bool ice_is_e825c(struct ice_hw *hw)
+{
+	switch (hw->device_id) {
+	case ICE_DEV_ID_E825C_BACKPLANE:
+	case ICE_DEV_ID_E825C_QSFP:
+	case ICE_DEV_ID_E825C_SFP:
+	case ICE_DEV_ID_E825C_SGMII:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 9696ed59d1a8..39be42ae3711 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -250,6 +250,7 @@ ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 		  u64 *prev_stat, u64 *cur_stat);
 bool ice_is_e810t(struct ice_hw *hw);
 bool ice_is_e823(struct ice_hw *hw);
+bool ice_is_e825c(struct ice_hw *hw);
 int
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index a2d384dbfc76..9dfae9bce758 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -71,5 +71,13 @@
 #define ICE_DEV_ID_E822L_10G_BASE_T	0x1899
 /* Intel(R) Ethernet Connection E822-L 1GbE */
 #define ICE_DEV_ID_E822L_SGMII		0x189A
+/* Intel(R) Ethernet Connection E825-C for backplane */
+#define ICE_DEV_ID_E825C_BACKPLANE	0x579c
+/* Intel(R) Ethernet Connection E825-C for QSFP */
+#define ICE_DEV_ID_E825C_QSFP		0x579d
+/* Intel(R) Ethernet Connection E825-C for SFP */
+#define ICE_DEV_ID_E825C_SFP		0x579e
+/* Intel(R) Ethernet Connection E825-C 1GbE */
+#define ICE_DEV_ID_E825C_SGMII		0x579f
 
 #endif /* _ICE_DEVIDS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c04ee2255d95..0c3b64f65a0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5774,6 +5774,10 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E825C_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E825C_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E825C_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E825C_SGMII), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_BACKPLANE) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_QSFP56) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP) },
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
