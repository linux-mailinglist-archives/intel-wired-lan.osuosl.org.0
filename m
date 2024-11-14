Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 808869C84A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 09:12:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E645C60A59;
	Thu, 14 Nov 2024 08:12:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0z0_NG3GVV2C; Thu, 14 Nov 2024 08:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1473B60A5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731571961;
	bh=uCy6gYqnDXJPzwROasiVlzk1zKNA4wYs5XYD63iJ09U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=q5WOWjcXFOJo5D4V4yOJnx4zTA/SsF2yEAOngBNR8lIRtYLICXOM+SS7e9IRe6Qix
	 GP0Ns5EuYq9UISV7olCqo0pH3SsMaKxJqO2bXctM6T3XlCv9Gh15z5ZLiiC0DGU2Gv
	 MEgr973Ua5EGjS6D6eMXgpQHEGd2oTz2riBWPpW+rmpJac/9D5nPOFPJFOmB7iYq8R
	 cQozAnwDCKHyme006j8DSjatgAMRsuIzphJ3244L0M/oQqgSU5yuFBLDqzTOHamGMT
	 xEuybRwn05nZY+BaLdsfxuFqAoH9yvvNQ/i+EKokT7TvpCV09i77AaeNkEbUjyW6NW
	 m2iQxz5ag/3hA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1473B60A5B;
	Thu, 14 Nov 2024 08:12:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AEDB972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 08:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B19641656
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 08:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zUlnfsm9Y71J for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 08:12:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 61BDC400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61BDC400D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 61BDC400D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 08:12:35 +0000 (UTC)
X-CSE-ConnectionGUID: lidBQkZ/RD+i8EpMrPKlJg==
X-CSE-MsgGUID: LF1vV9mARYavpOxy9QI5cQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="42879175"
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="42879175"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 00:12:31 -0800
X-CSE-ConnectionGUID: Th6fLurPTOWLSavSj9vtIg==
X-CSE-MsgGUID: zA0XUUA4SqqMvyAwXKERkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="92924666"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 14 Nov 2024 00:12:29 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 piotr.kwapulinski@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Thu, 14 Nov 2024 09:12:20 +0100
Message-ID: <20241114081220.85602-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731571955; x=1763107955;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BQp0TDZ20FnH15i0Fcr2FQNhUUPcNeba5k4zA+tiUas=;
 b=GUKfc0jXEFEzOxBt2fYDz96L3tzAKcJi/I/+6OlK8vn825tb04YvbGQ8
 icQyp+uSUMgDPsX7zkWqGFkn1fhbTgrWHKrge98RQunU5MbiSmCcpE7Vu
 PQv8L+vBYR8rHuS7FsxB6NM/Yx9T+kbgTIL/kKKOULRygkoVuFHGqOtet
 MaMiGpybjIV9cysHerfSqqwK0GaLbR0Q1tknWMZ2XJ9tBso8J/0fD3Etv
 2msD8Z6vwjzEU49GsUgvDBmucHYXc2W86upGyYAg9STNrTnXeiyxcAhxN
 ENf3nik3FpmD3SwaCg/GDwFwDxKGndCO6QtbogsPQXJEyF0PkhqTkqYwS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GUKfc0jX
Subject: [Intel-wired-lan] [iwl-next v1] ixgbe: use little endian type in
 admin commands
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

Firmware is always using little endian. Mark it using __le prefixed type
in all admin commands structures.

Do a proper conversion whenever the structures are used.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
To be squashed with commit ea007e0cd2dc
("ixgbe: Add support for E610 FW Admin Command Interface")
---
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 130 +++++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 232 +++++++++---------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   4 +-
 3 files changed, 187 insertions(+), 179 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 1f97652f7660..ecc3fc8c8d52 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -176,8 +176,8 @@ enum ixgbe_aci_opc {
 
 /* Get version (direct 0x0001) */
 struct ixgbe_aci_cmd_get_ver {
-	u32 rom_ver;
-	u32 fw_build;
+	__le32 rom_ver;
+	__le32 fw_build;
 	u8 fw_branch;
 	u8 fw_major;
 	u8 fw_minor;
@@ -197,15 +197,15 @@ struct ixgbe_aci_cmd_driver_ver {
 	u8 build_ver;
 	u8 subbuild_ver;
 	u8 reserved[4];
-	u32 addr_high;
-	u32 addr_low;
+	__le32 addr_high;
+	__le32 addr_low;
 };
 
 /* Get Expanded Error Code (0x0005, direct) */
 struct ixgbe_aci_cmd_get_exp_err {
-	u32 reason;
+	__le32 reason;
 #define IXGBE_ACI_EXPANDED_ERROR_NOT_PROVIDED	0xFFFFFFFF
-	u32 identifier;
+	__le32 identifier;
 	u8 rsvd[8];
 };
 
@@ -228,21 +228,21 @@ enum ixgbe_aci_res_ids {
  * Release resource ownership (direct 0x0009)
  */
 struct ixgbe_aci_cmd_req_res {
-	u16 res_id;
-	u16 access_type;
+	__le16 res_id;
+	__le16 access_type;
 
 	/* Upon successful completion, FW writes this value and driver is
 	 * expected to release resource before timeout. This value is provided
 	 * in milliseconds.
 	 */
-	u32 timeout;
+	__le32 timeout;
 #define IXGBE_ACI_RES_NVM_READ_DFLT_TIMEOUT_MS	3000
 #define IXGBE_ACI_RES_NVM_WRITE_DFLT_TIMEOUT_MS	180000
 #define IXGBE_ACI_RES_CHNG_LOCK_DFLT_TIMEOUT_MS	1000
 #define IXGBE_ACI_RES_GLBL_LOCK_DFLT_TIMEOUT_MS	3000
 	/* For SDP: pin ID of the SDP */
-	u32 res_number;
-	u16 status;
+	__le32 res_number;
+	__le16 status;
 #define IXGBE_ACI_RES_GLBL_SUCCESS		0
 #define IXGBE_ACI_RES_GLBL_IN_PROG		1
 #define IXGBE_ACI_RES_GLBL_DONE			2
@@ -256,14 +256,14 @@ struct ixgbe_aci_cmd_list_caps {
 	u8 cmd_flags;
 	u8 pf_index;
 	u8 reserved[2];
-	u32 count;
-	u32 addr_high;
-	u32 addr_low;
+	__le32 count;
+	__le32 addr_high;
+	__le32 addr_low;
 };
 
 /* Device/Function buffer entry, repeated per reported capability */
 struct ixgbe_aci_cmd_list_caps_elem {
-	u16 cap;
+	__le16 cap;
 #define IXGBE_ACI_CAPS_VALID_FUNCTIONS			0x0005
 #define IXGBE_ACI_MAX_VALID_FUNCTIONS			0x8
 #define IXGBE_ACI_CAPS_SRIOV				0x0012
@@ -295,13 +295,13 @@ struct ixgbe_aci_cmd_list_caps_elem {
 	u8 major_ver;
 	u8 minor_ver;
 	/* Number of resources described by this capability */
-	u32 number;
+	__le32 number;
 	/* Only meaningful for some types of resources */
-	u32 logical_id;
+	__le32 logical_id;
 	/* Only meaningful for some types of resources */
-	u32 phys_id;
-	u64 rsvd1;
-	u64 rsvd2;
+	__le32 phys_id;
+	__le64 rsvd1;
+	__le64 rsvd2;
 };
 
 /* Disable RXEN (direct 0x000C) */
@@ -314,7 +314,7 @@ struct ixgbe_aci_cmd_disable_rxen {
 struct ixgbe_aci_cmd_get_phy_caps {
 	u8 lport_num;
 	u8 reserved;
-	u16 param0;
+	__le16 param0;
 	/* 18.0 - Report qualified modules */
 #define IXGBE_ACI_GET_PHY_RQM		BIT(0)
 	/* 18.1 - 18.3 : Report mode
@@ -329,9 +329,9 @@ struct ixgbe_aci_cmd_get_phy_caps {
 #define IXGBE_ACI_REPORT_TOPO_CAP_MEDIA		BIT(1)
 #define IXGBE_ACI_REPORT_ACTIVE_CFG		BIT(2)
 #define IXGBE_ACI_REPORT_DFLT_CFG		BIT(3)
-	u32 reserved1;
-	u32 addr_high;
-	u32 addr_low;
+	__le32 reserved1;
+	__le32 addr_high;
+	__le32 addr_low;
 };
 
 /* This is #define of PHY type (Extended):
@@ -380,8 +380,8 @@ struct ixgbe_aci_cmd_get_phy_caps {
 #define IXGBE_PHY_TYPE_HIGH_MAX_INDEX		61
 
 struct ixgbe_aci_cmd_get_phy_caps_data {
-	u64 phy_type_low; /* Use values from IXGBE_PHY_TYPE_LOW_* */
-	u64 phy_type_high; /* Use values from IXGBE_PHY_TYPE_HIGH_* */
+	__le64 phy_type_low; /* Use values from IXGBE_PHY_TYPE_LOW_* */
+	__le64 phy_type_high; /* Use values from IXGBE_PHY_TYPE_HIGH_* */
 	u8 caps;
 #define IXGBE_ACI_PHY_EN_TX_LINK_PAUSE			BIT(0)
 #define IXGBE_ACI_PHY_EN_RX_LINK_PAUSE			BIT(1)
@@ -397,7 +397,7 @@ struct ixgbe_aci_cmd_get_phy_caps_data {
 #define IXGBE_ACI_PHY_AN_EN_CLAUSE28			BIT(1)
 #define IXGBE_ACI_PHY_AN_EN_CLAUSE73			BIT(2)
 #define IXGBE_ACI_PHY_AN_EN_CLAUSE37			BIT(3)
-	u16 eee_cap;
+	__le16 eee_cap;
 #define IXGBE_ACI_PHY_EEE_EN_100BASE_TX			BIT(0)
 #define IXGBE_ACI_PHY_EEE_EN_1000BASE_T			BIT(1)
 #define IXGBE_ACI_PHY_EEE_EN_10GBASE_T			BIT(2)
@@ -405,7 +405,7 @@ struct ixgbe_aci_cmd_get_phy_caps_data {
 #define IXGBE_ACI_PHY_EEE_EN_10GBASE_KR			BIT(4)
 #define IXGBE_ACI_PHY_EEE_EN_25GBASE_KR			BIT(5)
 #define IXGBE_ACI_PHY_EEE_EN_10BASE_T			BIT(11)
-	u16 eeer_value;
+	__le16 eeer_value;
 	u8 phy_id_oui[4]; /* PHY/Module ID connected on the port */
 	u8 phy_fw_ver[8];
 	u8 link_fec_options;
@@ -440,8 +440,8 @@ struct ixgbe_aci_cmd_get_phy_caps_data {
 		u8 v_oui[3];
 		u8 rsvd3;
 		u8 v_part[16];
-		u32 v_rev;
-		u64 rsvd4;
+		__le32 v_rev;
+		__le64 rsvd4;
 	} qual_modules[IXGBE_ACI_QUAL_MOD_COUNT_MAX];
 };
 
@@ -451,14 +451,14 @@ struct ixgbe_aci_cmd_get_phy_caps_data {
 struct ixgbe_aci_cmd_set_phy_cfg {
 	u8 lport_num;
 	u8 reserved[7];
-	u32 addr_high;
-	u32 addr_low;
+	__le32 addr_high;
+	__le32 addr_low;
 };
 
 /* Set PHY config command data structure */
 struct ixgbe_aci_cmd_set_phy_cfg_data {
-	u64 phy_type_low; /* Use values from IXGBE_PHY_TYPE_LOW_* */
-	u64 phy_type_high; /* Use values from IXGBE_PHY_TYPE_HIGH_* */
+	__le64 phy_type_low; /* Use values from IXGBE_PHY_TYPE_LOW_* */
+	__le64 phy_type_high; /* Use values from IXGBE_PHY_TYPE_HIGH_* */
 	u8 caps;
 #define IXGBE_ACI_PHY_ENA_VALID_MASK		0xef
 #define IXGBE_ACI_PHY_ENA_TX_PAUSE_ABILITY	BIT(0)
@@ -469,8 +469,8 @@ struct ixgbe_aci_cmd_set_phy_cfg_data {
 #define IXGBE_ACI_PHY_ENA_LESM			BIT(6)
 #define IXGBE_ACI_PHY_ENA_AUTO_FEC		BIT(7)
 	u8 low_power_ctrl_an;
-	u16 eee_cap; /* Value from ixgbe_aci_get_phy_caps */
-	u16 eeer_value; /* Use defines from ixgbe_aci_get_phy_caps */
+	__le16 eee_cap; /* Value from ixgbe_aci_get_phy_caps */
+	__le16 eeer_value; /* Use defines from ixgbe_aci_get_phy_caps */
 	u8 link_fec_opt; /* Use defines from ixgbe_aci_get_phy_caps */
 	u8 module_compliance_enforcement;
 };
@@ -491,16 +491,16 @@ struct ixgbe_aci_cmd_restart_an {
 struct ixgbe_aci_cmd_get_link_status {
 	u8 lport_num;
 	u8 reserved;
-	u16 cmd_flags;
+	__le16 cmd_flags;
 #define IXGBE_ACI_LSE_M				GENMASK(1, 0)
 #define IXGBE_ACI_LSE_NOP			0x0
 #define IXGBE_ACI_LSE_DIS			0x2
 #define IXGBE_ACI_LSE_ENA			0x3
 	/* only response uses this flag */
 #define IXGBE_ACI_LSE_IS_ENABLED		0x1
-	u32 reserved2;
-	u32 addr_high;
-	u32 addr_low;
+	__le32 reserved2;
+	__le32 addr_high;
+	__le32 addr_low;
 };
 
 /* Get link status response data structure, also used for Link Status Event */
@@ -551,7 +551,7 @@ struct ixgbe_aci_cmd_get_link_status_data {
 #define IXGBE_ACI_LINK_LB_PHY_LCL	BIT(0)
 #define IXGBE_ACI_LINK_LB_PHY_RMT	BIT(1)
 #define IXGBE_ACI_LINK_LB_MAC_LCL	BIT(2)
-	u16 max_frame_size;
+	__le16 max_frame_size;
 	u8 cfg;
 #define IXGBE_ACI_LINK_25G_KR_FEC_EN		BIT(0)
 #define IXGBE_ACI_LINK_25G_RS_528_FEC_EN	BIT(1)
@@ -571,7 +571,7 @@ struct ixgbe_aci_cmd_get_link_status_data {
 #define IXGBE_ACI_LINK_PWR_QSFP_CLASS_2		1
 #define IXGBE_ACI_LINK_PWR_QSFP_CLASS_3		2
 #define IXGBE_ACI_LINK_PWR_QSFP_CLASS_4		3
-	u16 link_speed;
+	__le16 link_speed;
 #define IXGBE_ACI_LINK_SPEED_M			GENMASK(10, 0)
 #define IXGBE_ACI_LINK_SPEED_10MB		BIT(0)
 #define IXGBE_ACI_LINK_SPEED_100MB		BIT(1)
@@ -586,15 +586,15 @@ struct ixgbe_aci_cmd_get_link_status_data {
 #define IXGBE_ACI_LINK_SPEED_100GB		BIT(10)
 #define IXGBE_ACI_LINK_SPEED_200GB		BIT(11)
 #define IXGBE_ACI_LINK_SPEED_UNKNOWN		BIT(15)
-	u16 reserved3;
+	__le16 reserved3;
 	u8 ext_fec_status;
 #define IXGBE_ACI_LINK_RS_272_FEC_EN	BIT(0) /* RS 272 FEC enabled */
 	u8 reserved4;
-	u64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
-	u64 phy_type_high; /* Use values from ICE_PHY_TYPE_HIGH_* */
+	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
+	__le64 phy_type_high; /* Use values from ICE_PHY_TYPE_HIGH_* */
 	/* Get link status version 2 link partner data */
-	u64 lp_phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
-	u64 lp_phy_type_high; /* Use values from ICE_PHY_TYPE_HIGH_* */
+	__le64 lp_phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
+	__le64 lp_phy_type_high; /* Use values from ICE_PHY_TYPE_HIGH_* */
 	u8 lp_fec_adv;
 #define IXGBE_ACI_LINK_LP_10G_KR_FEC_CAP	BIT(0)
 #define IXGBE_ACI_LINK_LP_25G_KR_FEC_CAP	BIT(1)
@@ -617,7 +617,7 @@ struct ixgbe_aci_cmd_get_link_status_data {
 struct ixgbe_aci_cmd_set_event_mask {
 	u8	lport_num;
 	u8	reserved[7];
-	u16	event_mask;
+	__le16	event_mask;
 #define IXGBE_ACI_LINK_EVENT_UPDOWN		BIT(1)
 #define IXGBE_ACI_LINK_EVENT_MEDIA_NA		BIT(2)
 #define IXGBE_ACI_LINK_EVENT_LINK_FAULT		BIT(3)
@@ -665,7 +665,7 @@ struct ixgbe_aci_cmd_link_topo_params {
 
 struct ixgbe_aci_cmd_link_topo_addr {
 	struct ixgbe_aci_cmd_link_topo_params topo_params;
-	u16 handle;
+	__le16 handle;
 /* Used to decode the handle field */
 #define IXGBE_ACI_LINK_TOPO_HANDLE_BRD_TYPE_M		BIT(9)
 #define IXGBE_ACI_LINK_TOPO_HANDLE_BRD_TYPE_LOM		BIT(9)
@@ -723,7 +723,7 @@ struct ixgbe_aci_cmd_sff_eeprom {
 	u8 lport_num;
 	u8 lport_num_valid;
 #define IXGBE_ACI_SFF_PORT_NUM_VALID		BIT(0)
-	u16 i2c_bus_addr;
+	__le16 i2c_bus_addr;
 #define IXGBE_ACI_SFF_I2CBUS_7BIT_M		GENMASK(6, 0)
 #define IXGBE_ACI_SFF_I2CBUS_10BIT_M		GENMASK(9, 0)
 #define IXGBE_ACI_SFF_I2CBUS_TYPE_M		BIT(10)
@@ -734,11 +734,11 @@ struct ixgbe_aci_cmd_sff_eeprom {
 #define IXGBE_ACI_SFF_UPDATE_BANK		2
 #define IXGBE_ACI_SFF_UPDATE_PAGE_BANK		3
 #define IXGBE_ACI_SFF_IS_WRITE			BIT(15)
-	u16 i2c_offset;
+	__le16 i2c_offset;
 	u8 module_bank;
 	u8 module_page;
-	u32 addr_high;
-	u32 addr_low;
+	__le32 addr_high;
+	__le32 addr_low;
 };
 
 /* NVM Read command (indirect 0x0701)
@@ -749,7 +749,7 @@ struct ixgbe_aci_cmd_sff_eeprom {
  */
 struct ixgbe_aci_cmd_nvm {
 #define IXGBE_ACI_NVM_MAX_OFFSET	0xFFFFFF
-	u16 offset_low;
+	__le16 offset_low;
 	u8 offset_high; /* For Write Activate offset_high is used as flags2 */
 	u8 cmd_flags;
 #define IXGBE_ACI_NVM_LAST_CMD		BIT(0)
@@ -772,11 +772,11 @@ struct ixgbe_aci_cmd_nvm {
 	 * all offset by 8 bits
 	 */
 #define IXGBE_ACI_NVM_ACTIV_REQ_EMPR	BIT(8) /* NVM Write Activate only */
-	u16 module_typeid;
-	u16 length;
+	__le16 module_typeid;
+	__le16 length;
 #define IXGBE_ACI_NVM_ERASE_LEN	0xFFFF
-	u32 addr_high;
-	u32 addr_low;
+	__le32 addr_high;
+	__le32 addr_low;
 };
 
 /* NVM Module_Type ID, needed offset and read_len for
@@ -790,7 +790,7 @@ struct ixgbe_aci_cmd_nvm_checksum {
 #define IXGBE_ACI_NVM_CHECKSUM_VERIFY	BIT(0)
 #define IXGBE_ACI_NVM_CHECKSUM_RECALC	BIT(1)
 	u8 rsvd;
-	u16 checksum; /* Used only by response */
+	__le16 checksum; /* Used only by response */
 #define IXGBE_ACI_NVM_CHECKSUM_CORRECT	0xBABA
 	u8 rsvd2[12];
 };
@@ -814,12 +814,12 @@ struct ixgbe_aci_cmd_nvm_checksum {
  * 32-bit words.
  */
 struct ixgbe_aci_desc {
-	u16 flags;
-	u16 opcode;
-	u16 datalen;
-	u16 retval;
-	u32 cookie_high;
-	u32 cookie_low;
+	__le16 flags;
+	__le16 opcode;
+	__le16 datalen;
+	__le16 retval;
+	__le32 cookie_high;
+	__le32 cookie_low;
 	union {
 		u8 raw[16];
 		struct ixgbe_aci_cmd_get_ver get_ver;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 2e9e2dcba5c5..33468ad06cfd 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -77,15 +77,15 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 		return -EBUSY;
 	}
 
-	opcode = desc->opcode;
+	opcode = le16_to_cpu(desc->opcode);
 
 	if (buf_size > IXGBE_ACI_MAX_BUFFER_SIZE)
 		return -EINVAL;
 
 	if (buf)
-		desc->flags |= IXGBE_ACI_FLAG_BUF;
+		desc->flags |= cpu_to_le16(IXGBE_ACI_FLAG_BUF);
 
-	if (desc->flags & IXGBE_ACI_FLAG_BUF) {
+	if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_BUF)) {
 		if ((buf && !buf_size) ||
 		    (!buf && buf_size))
 			return -EINVAL;
@@ -99,11 +99,11 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 			       buf_tail_size);
 
 		if (((buf_size + 3) & ~0x3) > IXGBE_ACI_LG_BUF)
-			desc->flags |= IXGBE_ACI_FLAG_LB;
+			desc->flags |= cpu_to_le16(IXGBE_ACI_FLAG_LB);
 
-		desc->datalen = buf_size;
+		desc->datalen = cpu_to_le16(buf_size);
 
-		if (desc->flags & IXGBE_ACI_FLAG_RD) {
+		if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_RD)) {
 			for (i = 0; i < buf_size / 4; i++)
 				IXGBE_WRITE_REG(hw, IXGBE_PF_HIBA(i), ((u32 *)buf)[i]);
 			if (buf_tail_size)
@@ -169,12 +169,13 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	 * is a descriptor of an event which is expected to contain
 	 * different opcode than the command.
 	 */
-	if (desc->opcode != opcode &&
+	if (desc->opcode != cpu_to_le16(opcode) &&
 	    opcode != ixgbe_aci_opc_get_fw_event)
 		return -EIO;
 
 	if (desc->retval) {
-		hw->aci.last_status = (enum ixgbe_aci_err)desc->retval;
+		hw->aci.last_status = (enum ixgbe_aci_err)
+			le16_to_cpu(desc->retval);
 		return -EIO;
 	}
 
@@ -210,9 +211,9 @@ int ixgbe_aci_send_cmd(struct ixgbe_hw *hw, struct ixgbe_aci_desc *desc,
 		       void *buf, u16 buf_size)
 {
 	u8 idx = 0, *buf_cpy __free(kfree) = NULL;
+	u16 opcode = le16_to_cpu(desc->opcode);
 	struct ixgbe_aci_desc desc_cpy;
 	enum ixgbe_aci_err last_status;
-	u16 opcode = desc->opcode;
 	bool is_cmd_for_retry;
 	unsigned long timeout;
 	int err;
@@ -305,13 +306,13 @@ int ixgbe_aci_get_event(struct ixgbe_hw *hw, struct ixgbe_aci_event *e,
 		goto aci_get_event_exit;
 
 	/* Returned 0x0014 opcode indicates that no event was obtained */
-	if (desc.opcode == ixgbe_aci_opc_get_fw_event) {
+	if (desc.opcode == cpu_to_le16(ixgbe_aci_opc_get_fw_event)) {
 		err = -ENOENT;
 		goto aci_get_event_exit;
 	}
 
 	/* Determine size of event data */
-	e->msg_len = min_t(u16, desc.datalen, e->buf_len);
+	e->msg_len = min_t(u16, le16_to_cpu(desc.datalen), e->buf_len);
 	/* Write event descriptor to event info structure */
 	memcpy(&e->desc, &desc, sizeof(e->desc));
 
@@ -337,8 +338,8 @@ void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_desc *desc, u16 opcode)
 {
 	/* Zero out the desc. */
 	memset(desc, 0, sizeof(*desc));
-	desc->opcode = opcode;
-	desc->flags = IXGBE_ACI_FLAG_SI;
+	desc->opcode = cpu_to_le16(opcode);
+	desc->flags = cpu_to_le16(IXGBE_ACI_FLAG_SI);
 }
 
 /**
@@ -369,10 +370,10 @@ static int ixgbe_aci_req_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_req_res);
 
-	cmd_resp->res_id = res;
-	cmd_resp->access_type = access;
-	cmd_resp->res_number = sdp_number;
-	cmd_resp->timeout = *timeout;
+	cmd_resp->res_id = cpu_to_le16(res);
+	cmd_resp->access_type = cpu_to_le16(access);
+	cmd_resp->res_number = cpu_to_le32(sdp_number);
+	cmd_resp->timeout = cpu_to_le32(*timeout);
 	*timeout = 0;
 
 	err = ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
@@ -382,7 +383,7 @@ static int ixgbe_aci_req_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
 	 * time the current owner of the resource has to free it.
 	 */
 	if (!err || hw->aci.last_status == IXGBE_ACI_RC_EBUSY)
-		*timeout = cmd_resp->timeout;
+		*timeout = le32_to_cpu(cmd_resp->timeout);
 
 	return err;
 }
@@ -407,8 +408,8 @@ static int ixgbe_aci_release_res(struct ixgbe_hw *hw,
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_release_res);
 
-	cmd->res_id = res;
-	cmd->res_number = sdp_number;
+	cmd->res_id = cpu_to_le16(res);
+	cmd->res_number = cpu_to_le32(sdp_number);
 
 	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
 }
@@ -514,10 +515,10 @@ static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
 				  struct ixgbe_aci_cmd_list_caps_elem *elem,
 				  const char *prefix)
 {
-	u32 logical_id = elem->logical_id;
-	u32 phys_id = elem->phys_id;
-	u32 number = elem->number;
-	u16 cap = elem->cap;
+	u32 logical_id = le32_to_cpu(elem->logical_id);
+	u32 phys_id = le32_to_cpu(elem->phys_id);
+	u32 number = le32_to_cpu(elem->number);
+	u16 cap = le16_to_cpu(elem->cap);
 
 	switch (cap) {
 	case IXGBE_ACI_CAPS_VALID_FUNCTIONS:
@@ -599,7 +600,7 @@ ixgbe_parse_valid_functions_cap(struct ixgbe_hw *hw,
 				struct ixgbe_hw_dev_caps *dev_p,
 				struct ixgbe_aci_cmd_list_caps_elem *cap)
 {
-	dev_p->num_funcs = hweight32(cap->number);
+	dev_p->num_funcs = hweight32(le32_to_cpu(cap->number));
 }
 
 /**
@@ -614,7 +615,7 @@ static void ixgbe_parse_vf_dev_caps(struct ixgbe_hw *hw,
 				    struct ixgbe_hw_dev_caps *dev_p,
 				    struct ixgbe_aci_cmd_list_caps_elem *cap)
 {
-	dev_p->num_vfs_exposed = cap->number;
+	dev_p->num_vfs_exposed = le32_to_cpu(cap->number);
 }
 
 /**
@@ -629,7 +630,7 @@ static void ixgbe_parse_vsi_dev_caps(struct ixgbe_hw *hw,
 				     struct ixgbe_hw_dev_caps *dev_p,
 				     struct ixgbe_aci_cmd_list_caps_elem *cap)
 {
-	dev_p->num_vsi_allocd_to_host = cap->number;
+	dev_p->num_vsi_allocd_to_host = le32_to_cpu(cap->number);
 }
 
 /**
@@ -644,7 +645,7 @@ static void ixgbe_parse_fdir_dev_caps(struct ixgbe_hw *hw,
 				      struct ixgbe_hw_dev_caps *dev_p,
 				      struct ixgbe_aci_cmd_list_caps_elem *cap)
 {
-	dev_p->num_flow_director_fltr = cap->number;
+	dev_p->num_flow_director_fltr = le32_to_cpu(cap->number);
 }
 
 /**
@@ -673,7 +674,7 @@ static void ixgbe_parse_dev_caps(struct ixgbe_hw *hw,
 	memset(dev_p, 0, sizeof(*dev_p));
 
 	for (i = 0; i < cap_count; i++) {
-		u16 cap = cap_resp[i].cap;
+		u16 cap = le16_to_cpu(cap_resp[i].cap);
 
 		ixgbe_parse_e610_caps(hw, &dev_p->common_cap, &cap_resp[i],
 				      "dev caps");
@@ -711,8 +712,8 @@ static void ixgbe_parse_vf_func_caps(struct ixgbe_hw *hw,
 				     struct ixgbe_hw_func_caps *func_p,
 				     struct ixgbe_aci_cmd_list_caps_elem *cap)
 {
-	func_p->num_allocd_vfs = cap->number;
-	func_p->vf_base_id = cap->logical_id;
+	func_p->num_allocd_vfs = le32_to_cpu(cap->number);
+	func_p->vf_base_id = le32_to_cpu(cap->logical_id);
 }
 
 /**
@@ -776,7 +777,7 @@ static void ixgbe_parse_func_caps(struct ixgbe_hw *hw,
 	memset(func_p, 0, sizeof(*func_p));
 
 	for (i = 0; i < cap_count; i++) {
-		u16 cap = cap_resp[i].cap;
+		u16 cap = le16_to_cpu(cap_resp[i].cap);
 
 		ixgbe_parse_e610_caps(hw, &func_p->common_cap,
 				      &cap_resp[i], "func caps");
@@ -833,7 +834,7 @@ int ixgbe_aci_list_caps(struct ixgbe_hw *hw, void *buf, u16 buf_size,
 	err = ixgbe_aci_send_cmd(hw, &desc, buf, buf_size);
 
 	if (cap_count)
-		*cap_count = cmd->count;
+		*cap_count = le32_to_cpu(cmd->count);
 
 	return err;
 }
@@ -984,14 +985,14 @@ int ixgbe_aci_get_phy_caps(struct ixgbe_hw *hw, bool qual_mods, u8 report_mode,
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_phy_caps);
 
 	if (qual_mods)
-		cmd->param0 |= IXGBE_ACI_GET_PHY_RQM;
+		cmd->param0 |= cpu_to_le16(IXGBE_ACI_GET_PHY_RQM);
 
-	cmd->param0 |= report_mode;
+	cmd->param0 |= cpu_to_le16(report_mode);
 	err = ixgbe_aci_send_cmd(hw, &desc, pcaps, pcaps_size);
 
 	if (!err && report_mode == IXGBE_ACI_REPORT_TOPO_CAP_MEDIA) {
-		hw->phy.phy_type_low = pcaps->phy_type_low;
-		hw->phy.phy_type_high = pcaps->phy_type_high;
+		hw->phy.phy_type_low = le64_to_cpu(pcaps->phy_type_low);
+		hw->phy.phy_type_high = le64_to_cpu(pcaps->phy_type_high);
 		memcpy(hw->link.link_info.module_type, &pcaps->module_type,
 		       sizeof(hw->link.link_info.module_type));
 	}
@@ -1052,7 +1053,7 @@ int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_phy_cfg);
 	desc.params.set_phy.lport_num = hw->bus.func;
-	desc.flags |= IXGBE_ACI_FLAG_RD;
+	desc.flags |= cpu_to_le16(IXGBE_ACI_FLAG_RD);
 
 	err = ixgbe_aci_send_cmd(hw, &desc, cfg, sizeof(*cfg));
 	if (!err)
@@ -1309,7 +1310,7 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_status);
 	cmd_flags = (ena_lse) ? IXGBE_ACI_LSE_ENA : IXGBE_ACI_LSE_DIS;
 	resp = &desc.params.get_link_status;
-	resp->cmd_flags = cmd_flags;
+	resp->cmd_flags = cpu_to_le16(cmd_flags);
 	resp->lport_num = hw->bus.func;
 
 	err = ixgbe_aci_send_cmd(hw, &desc, &link_data, sizeof(link_data));
@@ -1320,14 +1321,14 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 	*li_old = *li;
 
 	/* Update current link status information. */
-	li->link_speed = link_data.link_speed;
-	li->phy_type_low = link_data.phy_type_low;
-	li->phy_type_high = link_data.phy_type_high;
+	li->link_speed = le16_to_cpu(link_data.link_speed);
+	li->phy_type_low = le64_to_cpu(link_data.phy_type_low);
+	li->phy_type_high = le64_to_cpu(link_data.phy_type_high);
 	li->link_info = link_data.link_info;
 	li->link_cfg_err = link_data.link_cfg_err;
 	li->an_info = link_data.an_info;
 	li->ext_info = link_data.ext_info;
-	li->max_frame_size = link_data.max_frame_size;
+	li->max_frame_size = le16_to_cpu(link_data.max_frame_size);
 	li->fec_info = link_data.cfg & IXGBE_ACI_FEC_MASK;
 	li->topo_media_conflict = link_data.topo_media_conflict;
 	li->pacing = link_data.cfg & (IXGBE_ACI_CFG_PACING_M |
@@ -1345,7 +1346,8 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 	else
 		hw_fc_info->current_mode = ixgbe_fc_none;
 
-	li->lse_ena = !!(resp->cmd_flags & IXGBE_ACI_LSE_IS_ENABLED);
+	li->lse_ena = !!(le16_to_cpu(resp->cmd_flags) &
+			 IXGBE_ACI_LSE_IS_ENABLED);
 
 	/* Save link status information. */
 	if (link)
@@ -1378,7 +1380,7 @@ int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask)
 
 	cmd->lport_num = port_num;
 
-	cmd->event_mask = mask;
+	cmd->event_mask = cpu_to_le16(mask);
 	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
 }
 
@@ -1441,13 +1443,13 @@ enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)
 		if (rc)
 			return ixgbe_media_type_unknown;
 
-		highest_bit = fls64(pcaps.phy_type_high);
+		highest_bit = fls64(le64_to_cpu(pcaps.phy_type_high));
 		if (highest_bit) {
 			hw->link.link_info.phy_type_high =
 				BIT_ULL(highest_bit - 1);
 			hw->link.link_info.phy_type_low = 0;
 		} else {
-			highest_bit = fls64(pcaps.phy_type_low);
+			highest_bit = fls64(le64_to_cpu(pcaps.phy_type_low));
 			if (highest_bit)
 				hw->link.link_info.phy_type_low =
 					BIT_ULL(highest_bit - 1);
@@ -1769,6 +1771,7 @@ int ixgbe_init_phy_ops_e610(struct ixgbe_hw *hw)
 int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
 {
 	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
+	u64 phy_type_low, phy_type_high;
 	int err;
 
 	/* Set PHY type */
@@ -1791,29 +1794,31 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
 
 	/* Determine supported speeds */
 	hw->phy.speeds_supported = IXGBE_LINK_SPEED_UNKNOWN;
+	phy_type_high = le64_to_cpu(pcaps.phy_type_high);
+	phy_type_low = le64_to_cpu(pcaps.phy_type_low);
 
-	if (pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10BASE_T ||
-	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10M_SGMII)
+	if (phy_type_high & IXGBE_PHY_TYPE_HIGH_10BASE_T ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_10M_SGMII)
 		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_10_FULL;
-	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_100BASE_TX ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_100M_SGMII ||
-	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_100M_USXGMII)
+	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_100BASE_TX ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_100M_SGMII ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_100M_USXGMII)
 		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_100_FULL;
-	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_T  ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_SX ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_LX ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_KX ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1G_SGMII    ||
-	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_1G_USXGMII)
+	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_T  ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_SX ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_LX ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_KX ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_1G_SGMII    ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_1G_USXGMII)
 		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_1GB_FULL;
-	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_T       ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_DA      ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_SR      ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_LR      ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1  ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_C2C     ||
-	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10G_USXGMII)
+	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_T       ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_DA      ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_SR      ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_LR      ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1  ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_C2C     ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_10G_USXGMII)
 		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_10GB_FULL;
 
 	/* 2.5 and 5 Gbps link speeds must be excluded from the
@@ -1825,20 +1830,20 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
 	    hw->device_id != IXGBE_DEV_ID_E610_2_5G_T)
 		hw->phy.autoneg_advertised = hw->phy.speeds_supported;
 
-	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_T   ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_X   ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_KX  ||
-	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_SGMII ||
-	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_USXGMII)
+	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_T   ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_X   ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_KX  ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_SGMII ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_USXGMII)
 		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_2_5GB_FULL;
 
 	if (!hw->phy.autoneg_advertised &&
 	    hw->device_id == IXGBE_DEV_ID_E610_2_5G_T)
 		hw->phy.autoneg_advertised = hw->phy.speeds_supported;
 
-	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_T  ||
-	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_KR ||
-	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_5G_USXGMII)
+	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_T  ||
+	    phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_KR ||
+	    phy_type_high & IXGBE_PHY_TYPE_HIGH_5G_USXGMII)
 		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_5GB_FULL;
 
 	/* Set PHY ID */
@@ -1912,6 +1917,7 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
 	struct ixgbe_aci_cmd_set_phy_cfg_data pcfg;
 	u8 rmode = IXGBE_ACI_REPORT_TOPO_CAP_MEDIA;
 	u64 sup_phy_type_low, sup_phy_type_high;
+	u64 phy_type_low = 0, phy_type_high = 0;
 	int err;
 
 	err = ixgbe_aci_get_link_info(hw, false, NULL);
@@ -1926,8 +1932,8 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
 	if (err)
 		return err;
 
-	sup_phy_type_low = pcaps.phy_type_low;
-	sup_phy_type_high = pcaps.phy_type_high;
+	sup_phy_type_low = le64_to_cpu(pcaps.phy_type_low);
+	sup_phy_type_high = le64_to_cpu(pcaps.phy_type_high);
 
 	/* Get Active configuration to avoid unintended changes. */
 	err = ixgbe_aci_get_phy_caps(hw, false, IXGBE_ACI_REPORT_ACTIVE_CFG,
@@ -1938,52 +1944,52 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
 	ixgbe_copy_phy_caps_to_cfg(&pcaps, &pcfg);
 
 	/* Set default PHY types for a given speed */
-	pcfg.phy_type_low = 0;
-	pcfg.phy_type_high = 0;
 
 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10_FULL) {
-		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10BASE_T;
-		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10M_SGMII;
+		phy_type_high |= IXGBE_PHY_TYPE_HIGH_10BASE_T;
+		phy_type_high |= IXGBE_PHY_TYPE_HIGH_10M_SGMII;
 	}
 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL) {
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_100BASE_TX;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_100M_SGMII;
-		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_100M_USXGMII;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_100BASE_TX;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_100M_SGMII;
+		phy_type_high |= IXGBE_PHY_TYPE_HIGH_100M_USXGMII;
 	}
 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) {
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_T;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_SX;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_LX;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_KX;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1G_SGMII;
-		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_1G_USXGMII;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_T;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_SX;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_LX;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_KX;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_1G_SGMII;
+		phy_type_high |= IXGBE_PHY_TYPE_HIGH_1G_USXGMII;
 	}
 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL) {
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_T;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_X;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_KX;
-		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_2500M_SGMII;
-		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_2500M_USXGMII;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_T;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_X;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_KX;
+		phy_type_high |= IXGBE_PHY_TYPE_HIGH_2500M_SGMII;
+		phy_type_high |= IXGBE_PHY_TYPE_HIGH_2500M_USXGMII;
 	}
 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL) {
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_5GBASE_T;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_5GBASE_KR;
-		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_5G_USXGMII;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_5GBASE_T;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_5GBASE_KR;
+		phy_type_high |= IXGBE_PHY_TYPE_HIGH_5G_USXGMII;
 	}
 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL) {
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_T;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_DA;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_SR;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_LR;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC;
-		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_C2C;
-		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10G_USXGMII;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_T;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_DA;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_SR;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_LR;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC;
+		phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_C2C;
+		phy_type_high |= IXGBE_PHY_TYPE_HIGH_10G_USXGMII;
 	}
 
 	/* Mask the set values to avoid requesting unsupported link types */
-	pcfg.phy_type_low &= sup_phy_type_low;
-	pcfg.phy_type_high &= sup_phy_type_high;
+	phy_type_low &= sup_phy_type_low;
+	pcfg.phy_type_low = cpu_to_le64(phy_type_low);
+	phy_type_high &= sup_phy_type_high;
+	pcfg.phy_type_high = cpu_to_le64(phy_type_high);
 
 	if (pcfg.phy_type_high != pcaps.phy_type_high ||
 	    pcfg.phy_type_low != pcaps.phy_type_low ||
@@ -2093,7 +2099,8 @@ int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
 		return -EOPNOTSUPP;
 
 	if (node_handle)
-		*node_handle = desc.params.get_link_topo.addr.handle;
+		*node_handle =
+			le16_to_cpu(desc.params.get_link_topo.addr.handle);
 	if (node_part_number)
 		*node_part_number = desc.params.get_link_topo.node_part_num;
 
@@ -2175,10 +2182,10 @@ int ixgbe_aci_read_nvm(struct ixgbe_hw *hw, u16 module_typeid, u32 offset,
 	/* If this is the last command in a series, set the proper flag. */
 	if (last_command)
 		cmd->cmd_flags |= IXGBE_ACI_NVM_LAST_CMD;
-	cmd->module_typeid = module_typeid;
-	cmd->offset_low = offset & 0xFFFF;
+	cmd->module_typeid = cpu_to_le16(module_typeid);
+	cmd->offset_low = cpu_to_le16(offset & 0xFFFF);
 	cmd->offset_high = (offset >> 16) & 0xFF;
-	cmd->length = length;
+	cmd->length = cpu_to_le16(length);
 
 	return ixgbe_aci_send_cmd(hw, &desc, data, length);
 }
@@ -2212,7 +2219,8 @@ int ixgbe_nvm_validate_checksum(struct ixgbe_hw *hw)
 
 	ixgbe_release_nvm(hw);
 
-	if (!err && cmd->checksum != IXGBE_ACI_NVM_CHECKSUM_CORRECT) {
+	if (!err && cmd->checksum !=
+		    cpu_to_le16(IXGBE_ACI_NVM_CHECKSUM_CORRECT)) {
 		struct ixgbe_adapter *adapter = container_of(hw, struct ixgbe_adapter,
 							     hw);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ccdfa222da1f..7d950e2e3090 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -3121,7 +3121,7 @@ ixgbe_handle_link_status_event(struct ixgbe_adapter *adapter,
 	link_data = (struct ixgbe_aci_cmd_get_link_status_data *)e->msg_buf;
 
 	link_up = !!(link_data->link_info & IXGBE_ACI_LINK_UP);
-	link_speed = link_data->link_speed;
+	link_speed = le16_to_cpu(link_data->link_speed);
 
 	if (ixgbe_process_link_status_event(adapter, link_up, link_speed))
 		e_dev_warn("Could not process link status event");
@@ -3181,7 +3181,7 @@ static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
 		if (err)
 			break;
 
-		switch (event.desc.opcode) {
+		switch (le16_to_cpu(event.desc.opcode)) {
 		case ixgbe_aci_opc_get_link_status:
 			ixgbe_handle_link_status_event(adapter, &event);
 			break;
-- 
2.42.0

