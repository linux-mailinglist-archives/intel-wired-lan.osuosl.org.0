Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C846891045
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 02:16:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94A1D82B81;
	Fri, 29 Mar 2024 01:16:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MJD4xhlZZB-V; Fri, 29 Mar 2024 01:16:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C039A82560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711674983;
	bh=iycL9JjRyKCnGfiPFd9O82hV/c0TJJE0TYMYway29ro=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nRZ2BE5zaJbigo1wfw+dRJm+R/9k5wlMWlbzLR6N7A+hEx6nUB9Z6/n5XfwzGGpxc
	 XNg7dgSORh47dAo5l3npbdEV84OlnV9Q0tKjAWFx9JPuIX2ETYVQ6lF/O/Web1Hayq
	 wziwdZcL4zg5W3EfxNs/jEqDnrwLmR5ay3XOIyYQtn/u4BMoeDnZdbt1WpdycCEYN9
	 3E8z4rpRH4mLBiVl8MskDJmwzQMuOp18FPIV7EoA9750u0Pmiq7u+tkZyRHdoQZT2s
	 mWzvC6xKhLOw5+8F5TVV2kfjoYxmy6686QLXDt0eY/OoWvJKtqDrRSxgSHzyPC7BTv
	 7ygmjLe3KmqkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C039A82560;
	Fri, 29 Mar 2024 01:16:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 419C21BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6AFD82560
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7eZ5ilx-ligu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 01:16:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 003808291A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 003808291A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 003808291A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:16:19 +0000 (UTC)
X-CSE-ConnectionGUID: u9/BO+iBQXSqbFEYPBamMA==
X-CSE-MsgGUID: Gcn/DpEcRTuO+rZyQv0tqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="24356384"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="24356384"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:16:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="16655051"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa010.jf.intel.com with ESMTP; 28 Mar 2024 18:16:17 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Mar 2024 21:07:07 -0400
Message-ID: <20240329010708.2805384-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674980; x=1743210980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nsJZFEp/irs8IPjL7WumQMZYggVtDqALrP7ZRpSnEcA=;
 b=nMsgvxwqu3+24iNv8sBOTu7XE1HZztj11IX+2nzSiPfxiB9SwfKA182l
 jMmpDXIQiuaC/tdVQWtCf2OU3k48CQd8OWVc5xelzEe/0BhuTI2lzuc0y
 Bb9MwQzlLX9AXA1xWibMYimdf5DNvO5LiE39imzrFBcllNCjjYbA+Phaz
 7IQlMPt/+/cXedgb3FbgeJvbs9v+nJe26MxErPx2OORRRQHhlxZ9RD386
 oA6uj+mSlNlWAQkJaP1qROZKMnle2qpwafUJvCfXWPV9R+9zNhDj6fhSK
 T7chJCv78Kte1BemStP5IHTHEnvyIVxW2OKNoQSYiRUMEZlKzdfkVCxIa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nMsgvxwq
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ice: add additional E830
 device ids
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for additional E830 device ids which are supported by the
driver:
- 0x12D5: Intel(R) Ethernet Controller E830-C for backplane
- 0x12D8: Intel(R) Ethernet Controller E830-C for QSFP
- 0x12DA: Intel(R) Ethernet Controller E830-C for SFP
- 0x12DC: Intel(R) Ethernet Controller E830-XXV for backplane
- 0x12DD: Intel(R) Ethernet Controller E830-XXV for QSFP
- 0x12DE: Intel(R) Ethernet Controller E830-XXV for SFP

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
v1 -> v2: add device ids and strings to commit message. Rearrange device
ids in order.
---
 drivers/net/ethernet/intel/ice/ice_common.c |  6 ++++++
 drivers/net/ethernet/intel/ice/ice_devids.h | 12 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c   |  6 ++++++
 3 files changed, 24 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f4ac3c30b124..acfae3cd5b6c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -164,6 +164,12 @@ static int ice_set_mac_type(struct ice_hw *hw)
 	case ICE_DEV_ID_E830_QSFP56:
 	case ICE_DEV_ID_E830_SFP:
 	case ICE_DEV_ID_E830_SFP_DD:
+	case ICE_DEV_ID_E830C_BACKPLANE:
+	case ICE_DEV_ID_E830_XXV_BACKPLANE:
+	case ICE_DEV_ID_E830C_QSFP:
+	case ICE_DEV_ID_E830_XXV_QSFP:
+	case ICE_DEV_ID_E830C_SFP:
+	case ICE_DEV_ID_E830_XXV_SFP:
 		hw->mac_type = ICE_MAC_E830;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index 9dfae9bce758..c37b2b450b02 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -24,6 +24,18 @@
 #define ICE_DEV_ID_E830_SFP		0x12D3
 /* Intel(R) Ethernet Controller E830-C for SFP-DD */
 #define ICE_DEV_ID_E830_SFP_DD		0x12D4
+/* Intel(R) Ethernet Controller E830-C for backplane */
+#define ICE_DEV_ID_E830C_BACKPLANE	0x12D5
+/* Intel(R) Ethernet Controller E830-C for QSFP */
+#define ICE_DEV_ID_E830C_QSFP		0x12D8
+/* Intel(R) Ethernet Controller E830-C for SFP */
+#define ICE_DEV_ID_E830C_SFP		0x12DA
+/* Intel(R) Ethernet Controller E830-XXV for backplane */
+#define ICE_DEV_ID_E830_XXV_BACKPLANE	0x12DC
+/* Intel(R) Ethernet Controller E830-XXV for QSFP */
+#define ICE_DEV_ID_E830_XXV_QSFP	0x12DD
+/* Intel(R) Ethernet Controller E830-XXV for SFP */
+#define ICE_DEV_ID_E830_XXV_SFP		0x12DE
 /* Intel(R) Ethernet Controller E810-C for backplane */
 #define ICE_DEV_ID_E810C_BACKPLANE	0x1591
 /* Intel(R) Ethernet Controller E810-C for QSFP */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3dea0d4c767c..2f198bf3d8b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5695,6 +5695,12 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_QSFP56) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP_DD) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_SFP), },
 	/* required last entry */
 	{}
 };
-- 
2.41.0

