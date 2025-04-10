Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5B1A83FCC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 12:01:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FAFD61AF1;
	Thu, 10 Apr 2025 10:01:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_D9ct0_XEwC; Thu, 10 Apr 2025 10:01:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0946B61077
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744279294;
	bh=O75KIm3hfXTmqMQRlLEHICygj88aKOmgXuU1JMiAiqs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NUendGoHhatoQ6VfzifevqRR6g6gWn50HxtPRl3O/SAQabJHdS2CPald4Ls3klZxN
	 Mi/r4Rx+G0uHNCKoZfsy5brzG5Ir64NIXcwKNzu/vRz3v4heWsD1C23WwTyRmnRI+W
	 2CKVB3Jw+4tVEo+lqogQIjKDJvs5w+MFDZ9NAR5XKshniyx9Qj8BHxN+Vur0Lf29SA
	 Y2NTuDH3NofGcZYfCRslUXgsKbRldCmUSBSgKLwZ0U25tAN6610xixkBQB9P/v484y
	 q7KExaOeNS3KIzWgJ77En1VpWOBdSaXx9IYSoRziJPd+scojWIY/fy6PbwhdrB7DXN
	 CgtZM6vzMoa1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0946B61077;
	Thu, 10 Apr 2025 10:01:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DF173201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBD7B4027C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NcZMPt_6oqAF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 10:01:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D4E034012E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4E034012E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4E034012E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:30 +0000 (UTC)
X-CSE-ConnectionGUID: ToTSV8OmS4aQYgBVEhPEdA==
X-CSE-MsgGUID: ZnSn/Y+FTE2F7D1TYHdOrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="63183899"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63183899"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 03:01:30 -0700
X-CSE-ConnectionGUID: nrE960KUQ2+ypiZVFyfEPg==
X-CSE-MsgGUID: kT2VfeMqQS++yzosGueHig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159819698"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2025 03:01:28 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Thu, 10 Apr 2025 12:01:15 +0200
Message-ID: <20250410100121.2353754-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744279291; x=1775815291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yKlMupPomslBXJgmLgGa6muRm5xU//dwo/HvznzbRx0=;
 b=SpO7tA2/bh8FKla5QOKsg53NeBBcIAZTUNFRfZWj0xvW0/DAjGvnHDZH
 HPm5m81v8iHJlS884Z56E15tiP5mfotLU1vropriYyLUHTPm8i5bDV7OS
 oV/37OpeNacHN/G+FEaAVO74OEq9QoZ31HJ+ceko1cppUa3S2hR7z3mbc
 bGy0v1KUlVtjgmfb7G7nb2QigLAlrkWvmm0fbAr5UZNjHbojNSzhh+keY
 zn+LpFVA3c5n4RrOpp8O1td2iyyvr5HdzW4ySuvpLoHHb1sDkHAL5Xywr
 lWyxLwbI4LKZ2IPAROSJHA3WqcrZO6vCs3u8GJI9XoA7psFkY/311/n/k
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SpO7tA2/
Subject: [Intel-wired-lan] [iwl-next v2 2/8] ixgbe: use libie adminq
 descriptors
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

Use libie_aq_desc instead of ixgbe_aci_desc. Do needed changes to allow
clean build.

Move additional caps used in ixgbe to libie.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 226 +--------------
 include/linux/net/intel/libie/adminq.h        |  16 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 272 +++++++++---------
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |   4 +-
 5 files changed, 165 insertions(+), 365 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index c97623fb10ac..20185346c357 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -6,15 +6,15 @@
 
 #include "ixgbe_type.h"
 
-int ixgbe_aci_send_cmd(struct ixgbe_hw *hw, struct ixgbe_aci_desc *desc,
+int ixgbe_aci_send_cmd(struct ixgbe_hw *hw, struct libie_aq_desc *desc,
 		       void *buf, u16 buf_size);
 bool ixgbe_aci_check_event_pending(struct ixgbe_hw *hw);
 int ixgbe_aci_get_event(struct ixgbe_hw *hw, struct ixgbe_aci_event *e,
 			bool *pending);
-void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_desc *desc, u16 opcode);
-int ixgbe_acquire_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
-		      enum ixgbe_aci_res_access_type access, u32 timeout);
-void ixgbe_release_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res);
+void ixgbe_fill_dflt_direct_cmd_desc(struct libie_aq_desc *desc, u16 opcode);
+int ixgbe_acquire_res(struct ixgbe_hw *hw, enum libie_aq_res_id res,
+		      enum libie_aq_res_access_type access, u32 timeout);
+void ixgbe_release_res(struct ixgbe_hw *hw, enum libie_aq_res_id res);
 int ixgbe_aci_list_caps(struct ixgbe_hw *hw, void *buf, u16 buf_size,
 			u32 *cap_count, enum ixgbe_aci_opc opc);
 int ixgbe_discover_dev_caps(struct ixgbe_hw *hw,
@@ -62,7 +62,7 @@ int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
 			       struct ixgbe_aci_cmd_get_link_topo *cmd,
 			       u8 *node_part_number, u16 *node_handle);
 int ixgbe_acquire_nvm(struct ixgbe_hw *hw,
-		      enum ixgbe_aci_res_access_type access);
+		      enum libie_aq_res_access_type access);
 void ixgbe_release_nvm(struct ixgbe_hw *hw);
 int ixgbe_aci_read_nvm(struct ixgbe_hw *hw, u16 module_typeid, u32 offset,
 		       u16 length, void *data, bool last_command,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 09df67f03cf4..d2f22d8558f8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -4,6 +4,8 @@
 #ifndef _IXGBE_TYPE_E610_H_
 #define _IXGBE_TYPE_E610_H_
 
+#include <linux/net/intel/libie/adminq.h>
+
 #define BYTES_PER_DWORD	4
 
 /* General E610 defines */
@@ -135,60 +137,6 @@
 /* [ms] timeout of waiting for resource release */
 #define IXGBE_ACI_RELEASE_RES_TIMEOUT		10000
 
-/* FW defined boundary for a large buffer, 4k >= Large buffer > 512 bytes */
-#define IXGBE_ACI_LG_BUF		512
-
-/* Flags sub-structure
- * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
- * |DD |CMP|ERR|VFE| * *  RESERVED * * |LB |RD |VFC|BUF|SI |EI |FE |
- */
-
-#define IXGBE_ACI_FLAG_DD	BIT(0) /* 0x1 */
-#define IXGBE_ACI_FLAG_CMP	BIT(1) /* 0x2 */
-#define IXGBE_ACI_FLAG_ERR	BIT(2) /* 0x4 */
-#define IXGBE_ACI_FLAG_VFE	BIT(3) /* 0x8 */
-#define IXGBE_ACI_FLAG_LB	BIT(9) /* 0x200 */
-#define IXGBE_ACI_FLAG_RD	BIT(10) /* 0x400 */
-#define IXGBE_ACI_FLAG_VFC	BIT(11) /* 0x800 */
-#define IXGBE_ACI_FLAG_BUF	BIT(12) /* 0x1000 */
-#define IXGBE_ACI_FLAG_SI	BIT(13) /* 0x2000 */
-#define IXGBE_ACI_FLAG_EI	BIT(14) /* 0x4000 */
-#define IXGBE_ACI_FLAG_FE	BIT(15) /* 0x8000 */
-
-/* Admin Command Interface (ACI) error codes */
-enum ixgbe_aci_err {
-	IXGBE_ACI_RC_OK		= 0,  /* Success */
-	IXGBE_ACI_RC_EPERM	= 1,  /* Operation not permitted */
-	IXGBE_ACI_RC_ENOENT	= 2,  /* No such element */
-	IXGBE_ACI_RC_ESRCH	= 3,  /* Bad opcode */
-	IXGBE_ACI_RC_EINTR	= 4,  /* Operation interrupted */
-	IXGBE_ACI_RC_EIO	= 5,  /* I/O error */
-	IXGBE_ACI_RC_ENXIO	= 6,  /* No such resource */
-	IXGBE_ACI_RC_E2BIG	= 7,  /* Arg too long */
-	IXGBE_ACI_RC_EAGAIN	= 8,  /* Try again */
-	IXGBE_ACI_RC_ENOMEM	= 9,  /* Out of memory */
-	IXGBE_ACI_RC_EACCES	= 10, /* Permission denied */
-	IXGBE_ACI_RC_EFAULT	= 11, /* Bad address */
-	IXGBE_ACI_RC_EBUSY	= 12, /* Device or resource busy */
-	IXGBE_ACI_RC_EEXIST	= 13, /* Object already exists */
-	IXGBE_ACI_RC_EINVAL	= 14, /* Invalid argument */
-	IXGBE_ACI_RC_ENOTTY	= 15, /* Not a typewriter */
-	IXGBE_ACI_RC_ENOSPC	= 16, /* No space left or alloc failure */
-	IXGBE_ACI_RC_ENOSYS	= 17, /* Function not implemented */
-	IXGBE_ACI_RC_ERANGE	= 18, /* Parameter out of range */
-	IXGBE_ACI_RC_EFLUSHED	= 19, /* Cmd flushed due to prev cmd error */
-	IXGBE_ACI_RC_BAD_ADDR	= 20, /* Descriptor contains a bad pointer */
-	IXGBE_ACI_RC_EMODE	= 21, /* Op not allowed in current dev mode */
-	IXGBE_ACI_RC_EFBIG	= 22, /* File too big */
-	IXGBE_ACI_RC_ESBCOMP	= 23, /* SB-IOSF completion unsuccessful */
-	IXGBE_ACI_RC_ENOSEC	= 24, /* Missing security manifest */
-	IXGBE_ACI_RC_EBADSIG	= 25, /* Bad RSA signature */
-	IXGBE_ACI_RC_ESVN	= 26, /* SVN number prohibits this package */
-	IXGBE_ACI_RC_EBADMAN	= 27, /* Manifest hash mismatch */
-	IXGBE_ACI_RC_EBADBUF	= 28, /* Buffer hash mismatches manifest */
-	IXGBE_ACI_RC_EACCES_BMCU	= 29, /* BMC Update in progress */
-};
-
 /* Admin Command Interface (ACI) opcodes */
 enum ixgbe_aci_opc {
 	ixgbe_aci_opc_get_ver				= 0x0001,
@@ -265,33 +213,8 @@ enum ixgbe_aci_opc {
 	ixgbe_aci_opc_clear_health_status		= 0xFF23,
 };
 
-/* Get version (direct 0x0001) */
-struct ixgbe_aci_cmd_get_ver {
-	__le32 rom_ver;
-	__le32 fw_build;
-	u8 fw_branch;
-	u8 fw_major;
-	u8 fw_minor;
-	u8 fw_patch;
-	u8 api_branch;
-	u8 api_major;
-	u8 api_minor;
-	u8 api_patch;
-};
-
 #define IXGBE_DRV_VER_STR_LEN_E610	32
 
-/* Send driver version (indirect 0x0002) */
-struct ixgbe_aci_cmd_driver_ver {
-	u8 major_ver;
-	u8 minor_ver;
-	u8 build_ver;
-	u8 subbuild_ver;
-	u8 reserved[4];
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
 /* Get Expanded Error Code (0x0005, direct) */
 struct ixgbe_aci_cmd_get_exp_err {
 	__le32 reason;
@@ -303,98 +226,6 @@ struct ixgbe_aci_cmd_get_exp_err {
 /* FW update timeout definitions are in milliseconds */
 #define IXGBE_NVM_TIMEOUT		180000
 
-enum ixgbe_aci_res_access_type {
-	IXGBE_RES_READ = 1,
-	IXGBE_RES_WRITE
-};
-
-enum ixgbe_aci_res_ids {
-	IXGBE_NVM_RES_ID = 1,
-	IXGBE_SPD_RES_ID,
-	IXGBE_CHANGE_LOCK_RES_ID,
-	IXGBE_GLOBAL_CFG_LOCK_RES_ID
-};
-
-/* Request resource ownership (direct 0x0008)
- * Release resource ownership (direct 0x0009)
- */
-struct ixgbe_aci_cmd_req_res {
-	__le16 res_id;
-	__le16 access_type;
-
-	/* Upon successful completion, FW writes this value and driver is
-	 * expected to release resource before timeout. This value is provided
-	 * in milliseconds.
-	 */
-	__le32 timeout;
-#define IXGBE_ACI_RES_NVM_READ_DFLT_TIMEOUT_MS	3000
-#define IXGBE_ACI_RES_NVM_WRITE_DFLT_TIMEOUT_MS	180000
-#define IXGBE_ACI_RES_CHNG_LOCK_DFLT_TIMEOUT_MS	1000
-#define IXGBE_ACI_RES_GLBL_LOCK_DFLT_TIMEOUT_MS	3000
-	/* For SDP: pin ID of the SDP */
-	__le32 res_number;
-	__le16 status;
-#define IXGBE_ACI_RES_GLBL_SUCCESS		0
-#define IXGBE_ACI_RES_GLBL_IN_PROG		1
-#define IXGBE_ACI_RES_GLBL_DONE			2
-	u8 reserved[2];
-};
-
-/* Get function capabilities (indirect 0x000A)
- * Get device capabilities (indirect 0x000B)
- */
-struct ixgbe_aci_cmd_list_caps {
-	u8 cmd_flags;
-	u8 pf_index;
-	u8 reserved[2];
-	__le32 count;
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
-/* Device/Function buffer entry, repeated per reported capability */
-struct ixgbe_aci_cmd_list_caps_elem {
-	__le16 cap;
-#define IXGBE_ACI_CAPS_VALID_FUNCTIONS			0x0005
-#define IXGBE_ACI_MAX_VALID_FUNCTIONS			0x8
-#define IXGBE_ACI_CAPS_SRIOV				0x0012
-#define IXGBE_ACI_CAPS_VF				0x0013
-#define IXGBE_ACI_CAPS_VMDQ				0x0014
-#define IXGBE_ACI_CAPS_VSI				0x0017
-#define IXGBE_ACI_CAPS_DCB				0x0018
-#define IXGBE_ACI_CAPS_RSS				0x0040
-#define IXGBE_ACI_CAPS_RXQS				0x0041
-#define IXGBE_ACI_CAPS_TXQS				0x0042
-#define IXGBE_ACI_CAPS_MSIX				0x0043
-#define IXGBE_ACI_CAPS_FD				0x0045
-#define IXGBE_ACI_CAPS_1588				0x0046
-#define IXGBE_ACI_CAPS_MAX_MTU				0x0047
-#define IXGBE_ACI_CAPS_NVM_VER				0x0048
-#define IXGBE_ACI_CAPS_PENDING_NVM_VER			0x0049
-#define IXGBE_ACI_CAPS_OROM_VER				0x004A
-#define IXGBE_ACI_CAPS_PENDING_OROM_VER			0x004B
-#define IXGBE_ACI_CAPS_PENDING_NET_VER			0x004D
-#define IXGBE_ACI_CAPS_INLINE_IPSEC			0x0070
-#define IXGBE_ACI_CAPS_NUM_ENABLED_PORTS		0x0072
-#define IXGBE_ACI_CAPS_PCIE_RESET_AVOIDANCE		0x0076
-#define IXGBE_ACI_CAPS_POST_UPDATE_RESET_RESTRICT	0x0077
-#define IXGBE_ACI_CAPS_NVM_MGMT				0x0080
-#define IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG0		0x0081
-#define IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG1		0x0082
-#define IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG2		0x0083
-#define IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG3		0x0084
-	u8 major_ver;
-	u8 minor_ver;
-	/* Number of resources described by this capability */
-	__le32 number;
-	/* Only meaningful for some types of resources */
-	__le32 logical_id;
-	/* Only meaningful for some types of resources */
-	__le32 phys_id;
-	__le64 rsvd1;
-	__le64 rsvd2;
-};
-
 /* Disable RXEN (direct 0x000C) */
 struct ixgbe_aci_cmd_disable_rxen {
 	u8 lport_num;
@@ -960,55 +791,6 @@ struct ixgbe_aci_cmd_nvm_comp_tbl {
 	u8 cvs[]; /* Component Version String */
 } __packed;
 
-/**
- * struct ixgbe_aci_desc - Admin Command (AC) descriptor
- * @flags: IXGBE_ACI_FLAG_* flags
- * @opcode: Admin command opcode
- * @datalen: length in bytes of indirect/external data buffer
- * @retval: return value from firmware
- * @cookie_high: opaque data high-half
- * @cookie_low: opaque data low-half
- * @params: command-specific parameters
- *
- * Descriptor format for commands the driver posts via the
- * Admin Command Interface (ACI).
- * The firmware writes back onto the command descriptor and returns
- * the result of the command. Asynchronous events that are not an immediate
- * result of the command are written to the Admin Command Interface (ACI) using
- * the same descriptor format. Descriptors are in little-endian notation with
- * 32-bit words.
- */
-struct ixgbe_aci_desc {
-	__le16 flags;
-	__le16 opcode;
-	__le16 datalen;
-	__le16 retval;
-	__le32 cookie_high;
-	__le32 cookie_low;
-	union {
-		u8 raw[16];
-		struct ixgbe_aci_cmd_get_ver get_ver;
-		struct ixgbe_aci_cmd_driver_ver driver_ver;
-		struct ixgbe_aci_cmd_get_exp_err exp_err;
-		struct ixgbe_aci_cmd_req_res res_owner;
-		struct ixgbe_aci_cmd_list_caps get_cap;
-		struct ixgbe_aci_cmd_disable_rxen disable_rxen;
-		struct ixgbe_aci_cmd_get_phy_caps get_phy;
-		struct ixgbe_aci_cmd_set_phy_cfg set_phy;
-		struct ixgbe_aci_cmd_restart_an restart_an;
-		struct ixgbe_aci_cmd_get_link_status get_link_status;
-		struct ixgbe_aci_cmd_set_event_mask set_event_mask;
-		struct ixgbe_aci_cmd_set_port_id_led set_port_id_led;
-		struct ixgbe_aci_cmd_get_link_topo get_link_topo;
-		struct ixgbe_aci_cmd_get_link_topo_pin get_link_topo_pin;
-		struct ixgbe_aci_cmd_sff_eeprom read_write_sff_param;
-		struct ixgbe_aci_cmd_nvm nvm;
-		struct ixgbe_aci_cmd_nvm_checksum nvm_checksum;
-		struct ixgbe_aci_cmd_nvm_pkg_data pkg_data;
-		struct ixgbe_aci_cmd_nvm_pass_comp_tbl pass_comp_tbl;
-	} params;
-};
-
 /* E610-specific adapter context structures */
 
 struct ixgbe_link_status {
@@ -1172,7 +954,7 @@ struct ixgbe_hw_dev_caps {
 
 /* ACI event information */
 struct ixgbe_aci_event {
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 	u8 *msg_buf;
 	u16 msg_len;
 	u16 buf_len;
@@ -1180,7 +962,7 @@ struct ixgbe_aci_event {
 
 struct ixgbe_aci_info {
 	struct mutex lock;		/* admin command interface lock */
-	enum ixgbe_aci_err last_status;	/* last status of sent admin command */
+	enum libie_aq_err last_status;	/* last status of sent admin command */
 };
 
 enum ixgbe_bank_select {
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/net/intel/libie/adminq.h
index 568980ddf4c1..b247ba2ae547 100644
--- a/include/linux/net/intel/libie/adminq.h
+++ b/include/linux/net/intel/libie/adminq.h
@@ -144,8 +144,10 @@ LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_list_caps);
 
 /* Device/Function buffer entry, repeated per reported capability */
 #define LIBIE_AQC_CAPS_VALID_FUNCTIONS			0x0005
+#define LIBIE_AQC_MAX_VALID_FUNCTIONS			0x8
 #define LIBIE_AQC_CAPS_SRIOV				0x0012
 #define LIBIE_AQC_CAPS_VF				0x0013
+#define LIBIE_AQC_CAPS_VMDQ				0x0014
 #define LIBIE_AQC_CAPS_VSI				0x0017
 #define LIBIE_AQC_CAPS_DCB				0x0018
 #define LIBIE_AQC_CAPS_RSS				0x0040
@@ -163,9 +165,15 @@ LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_list_caps);
 #define LIBIE_AQC_CAPS_PENDING_NET_VER			0x004D
 #define LIBIE_AQC_CAPS_RDMA				0x0051
 #define LIBIE_AQC_CAPS_SENSOR_READING			0x0067
+#define LIBIE_AQC_INLINE_IPSEC				0x0070
+#define LIBIE_AQC_CAPS_NUM_ENABLED_PORTS		0x0072
 #define LIBIE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
 #define LIBIE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT	0x0077
 #define LIBIE_AQC_CAPS_NVM_MGMT				0x0080
+#define LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG0		0x0081
+#define LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG1		0x0082
+#define LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG2		0x0083
+#define LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG3		0x0084
 #define LIBIE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
 #define LIBIE_AQC_CAPS_NAC_TOPOLOGY			0x0087
 #define LIBIE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
@@ -234,13 +242,21 @@ LIBIE_CHECK_STRUCT_LEN(32, libie_aq_desc);
 /* FW defined boundary for a large buffer, 4k >= Large buffer > 512 bytes */
 #define LIBIE_AQ_LG_BUF				512
 
+/* Flags sub-structure
+ * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
+ * |DD |CMP|ERR|VFE| * *  RESERVED * * |LB |RD |VFC|BUF|SI |EI |FE |
+ */
 #define LIBIE_AQ_FLAG_DD			BIT(0)	/* 0x1    */
 #define LIBIE_AQ_FLAG_CMP			BIT(1)	/* 0x2    */
 #define LIBIE_AQ_FLAG_ERR			BIT(2)	/* 0x4    */
+#define LIBIE_AQ_FLAG_VFE			BIT(3)	/* 0x8    */
 #define LIBIE_AQ_FLAG_LB			BIT(9)	/* 0x200  */
 #define LIBIE_AQ_FLAG_RD			BIT(10)	/* 0x400  */
+#define LIBIE_AQ_FLAG_VFC			BIT(11) /* 0x800  */
 #define LIBIE_AQ_FLAG_BUF			BIT(12)	/* 0x1000 */
 #define LIBIE_AQ_FLAG_SI			BIT(13)	/* 0x2000 */
+#define LIBIE_AQ_FLAG_EI			BIT(14)	/* 0x4000 */
+#define LIBIE_AQ_FLAG_FE			BIT(15)	/* 0x8000 */
 
 /* error codes */
 enum libie_aq_err {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 0aec503eed0b..aa814ff60d9d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -56,7 +56,7 @@ static bool ixgbe_should_retry_aci_send_cmd_execute(u16 opcode)
  * Admin Command failed with error Y.
  */
 static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
-				      struct ixgbe_aci_desc *desc,
+				      struct libie_aq_desc *desc,
 				      void *buf, u16 buf_size)
 {
 	u16 opcode, buf_tail_size = buf_size % 4;
@@ -64,7 +64,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	u32 hicr, i, buf_tail = 0;
 	bool valid_buf = false;
 
-	hw->aci.last_status = IXGBE_ACI_RC_OK;
+	hw->aci.last_status = LIBIE_AQ_RC_OK;
 
 	/* It's necessary to check if mechanism is enabled */
 	hicr = IXGBE_READ_REG(hw, IXGBE_PF_HICR);
@@ -73,7 +73,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 		return -EIO;
 
 	if (hicr & IXGBE_PF_HICR_C) {
-		hw->aci.last_status = IXGBE_ACI_RC_EBUSY;
+		hw->aci.last_status = LIBIE_AQ_RC_EBUSY;
 		return -EBUSY;
 	}
 
@@ -83,9 +83,9 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 		return -EINVAL;
 
 	if (buf)
-		desc->flags |= cpu_to_le16(IXGBE_ACI_FLAG_BUF);
+		desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_BUF);
 
-	if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_BUF)) {
+	if (desc->flags & cpu_to_le16(LIBIE_AQ_FLAG_BUF)) {
 		if ((buf && !buf_size) ||
 		    (!buf && buf_size))
 			return -EINVAL;
@@ -98,12 +98,12 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 			memcpy(&buf_tail, buf + buf_size - buf_tail_size,
 			       buf_tail_size);
 
-		if (((buf_size + 3) & ~0x3) > IXGBE_ACI_LG_BUF)
-			desc->flags |= cpu_to_le16(IXGBE_ACI_FLAG_LB);
+		if (((buf_size + 3) & ~0x3) > LIBIE_AQ_LG_BUF)
+			desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 
 		desc->datalen = cpu_to_le16(buf_size);
 
-		if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_RD)) {
+		if (desc->flags & cpu_to_le16(LIBIE_AQ_FLAG_RD)) {
 			for (i = 0; i < buf_size / 4; i++)
 				IXGBE_WRITE_REG(hw, IXGBE_PF_HIBA(i), ((u32 *)buf)[i]);
 			if (buf_tail_size)
@@ -174,7 +174,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 		return -EIO;
 
 	if (desc->retval) {
-		hw->aci.last_status = (enum ixgbe_aci_err)
+		hw->aci.last_status = (enum libie_aq_err)
 			le16_to_cpu(desc->retval);
 		return -EIO;
 	}
@@ -207,12 +207,12 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
  *
  * Return: the exit code of the operation.
  */
-int ixgbe_aci_send_cmd(struct ixgbe_hw *hw, struct ixgbe_aci_desc *desc,
+int ixgbe_aci_send_cmd(struct ixgbe_hw *hw, struct libie_aq_desc *desc,
 		       void *buf, u16 buf_size)
 {
 	u16 opcode = le16_to_cpu(desc->opcode);
-	struct ixgbe_aci_desc desc_cpy;
-	enum ixgbe_aci_err last_status;
+	struct libie_aq_desc desc_cpy;
+	enum libie_aq_err last_status;
 	u8 idx = 0, *buf_cpy = NULL;
 	bool is_cmd_for_retry;
 	unsigned long timeout;
@@ -237,7 +237,7 @@ int ixgbe_aci_send_cmd(struct ixgbe_hw *hw, struct ixgbe_aci_desc *desc,
 		mutex_unlock(&hw->aci.lock);
 
 		if (!is_cmd_for_retry || !err ||
-		    last_status != IXGBE_ACI_RC_EBUSY)
+		    last_status != LIBIE_AQ_RC_EBUSY)
 			break;
 
 		if (buf)
@@ -286,7 +286,7 @@ bool ixgbe_aci_check_event_pending(struct ixgbe_hw *hw)
 int ixgbe_aci_get_event(struct ixgbe_hw *hw, struct ixgbe_aci_event *e,
 			bool *pending)
 {
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 	int err;
 
 	if (!e || (!e->msg_buf && e->buf_len))
@@ -335,12 +335,12 @@ int ixgbe_aci_get_event(struct ixgbe_hw *hw, struct ixgbe_aci_event *e,
  * Helper function to fill the descriptor desc with default values
  * and the provided opcode.
  */
-void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_desc *desc, u16 opcode)
+void ixgbe_fill_dflt_direct_cmd_desc(struct libie_aq_desc *desc, u16 opcode)
 {
 	/* Zero out the desc. */
 	memset(desc, 0, sizeof(*desc));
 	desc->opcode = cpu_to_le16(opcode);
-	desc->flags = cpu_to_le16(IXGBE_ACI_FLAG_SI);
+	desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_SI);
 }
 
 /**
@@ -353,8 +353,8 @@ void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_desc *desc, u16 opcode)
  */
 static int ixgbe_aci_get_fw_ver(struct ixgbe_hw *hw)
 {
-	struct ixgbe_aci_cmd_get_ver *resp;
-	struct ixgbe_aci_desc desc;
+	struct libie_aqc_get_ver *resp;
+	struct libie_aq_desc desc;
 	int err;
 
 	resp = &desc.params.get_ver;
@@ -394,12 +394,12 @@ static int ixgbe_aci_get_fw_ver(struct ixgbe_hw *hw)
  *
  * Return: the exit code of the operation.
  */
-static int ixgbe_aci_req_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
-			     enum ixgbe_aci_res_access_type access,
+static int ixgbe_aci_req_res(struct ixgbe_hw *hw, enum libie_aq_res_id res,
+			     enum libie_aq_res_access_type access,
 			     u8 sdp_number, u32 *timeout)
 {
-	struct ixgbe_aci_cmd_req_res *cmd_resp;
-	struct ixgbe_aci_desc desc;
+	struct libie_aqc_req_res *cmd_resp;
+	struct libie_aq_desc desc;
 	int err;
 
 	cmd_resp = &desc.params.res_owner;
@@ -418,7 +418,7 @@ static int ixgbe_aci_req_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
 	 * with a busy return value and the timeout field indicates the maximum
 	 * time the current owner of the resource has to free it.
 	 */
-	if (!err || hw->aci.last_status == IXGBE_ACI_RC_EBUSY)
+	if (!err || hw->aci.last_status == LIBIE_AQ_RC_EBUSY)
 		*timeout = le32_to_cpu(cmd_resp->timeout);
 
 	return err;
@@ -434,11 +434,11 @@ static int ixgbe_aci_req_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
  *
  * Return: the exit code of the operation.
  */
-static int ixgbe_aci_release_res(struct ixgbe_hw *hw,
-				 enum ixgbe_aci_res_ids res, u8 sdp_number)
+static int ixgbe_aci_release_res(struct ixgbe_hw *hw, enum libie_aq_res_id res,
+				 u8 sdp_number)
 {
-	struct ixgbe_aci_cmd_req_res *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aqc_req_res *cmd;
+	struct libie_aq_desc desc;
 
 	cmd = &desc.params.res_owner;
 
@@ -466,8 +466,8 @@ static int ixgbe_aci_release_res(struct ixgbe_hw *hw,
  *
  * Return: the exit code of the operation.
  */
-int ixgbe_acquire_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
-		      enum ixgbe_aci_res_access_type access, u32 timeout)
+int ixgbe_acquire_res(struct ixgbe_hw *hw, enum libie_aq_res_id res,
+		      enum libie_aq_res_access_type access, u32 timeout)
 {
 #define IXGBE_RES_POLLING_DELAY_MS	10
 	u32 delay = IXGBE_RES_POLLING_DELAY_MS;
@@ -515,7 +515,7 @@ int ixgbe_acquire_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
  *
  * Release a common resource using ixgbe_aci_release_res.
  */
-void ixgbe_release_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res)
+void ixgbe_release_res(struct ixgbe_hw *hw, enum libie_aq_res_id res)
 {
 	u32 total_delay = 0;
 	int err;
@@ -548,7 +548,7 @@ void ixgbe_release_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res)
  */
 static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
 				  struct ixgbe_hw_caps *caps,
-				  struct ixgbe_aci_cmd_list_caps_elem *elem,
+				  struct libie_aqc_list_caps_elem *elem,
 				  const char *prefix)
 {
 	u32 logical_id = le32_to_cpu(elem->logical_id);
@@ -557,67 +557,67 @@ static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
 	u16 cap = le16_to_cpu(elem->cap);
 
 	switch (cap) {
-	case IXGBE_ACI_CAPS_VALID_FUNCTIONS:
+	case LIBIE_AQC_CAPS_VALID_FUNCTIONS:
 		caps->valid_functions = number;
 		break;
-	case IXGBE_ACI_CAPS_SRIOV:
+	case LIBIE_AQC_CAPS_SRIOV:
 		caps->sr_iov_1_1 = (number == 1);
 		break;
-	case IXGBE_ACI_CAPS_VMDQ:
+	case LIBIE_AQC_CAPS_VMDQ:
 		caps->vmdq = (number == 1);
 		break;
-	case IXGBE_ACI_CAPS_DCB:
+	case LIBIE_AQC_CAPS_DCB:
 		caps->dcb = (number == 1);
 		caps->active_tc_bitmap = logical_id;
 		caps->maxtc = phys_id;
 		break;
-	case IXGBE_ACI_CAPS_RSS:
+	case LIBIE_AQC_CAPS_RSS:
 		caps->rss_table_size = number;
 		caps->rss_table_entry_width = logical_id;
 		break;
-	case IXGBE_ACI_CAPS_RXQS:
+	case LIBIE_AQC_CAPS_RXQS:
 		caps->num_rxq = number;
 		caps->rxq_first_id = phys_id;
 		break;
-	case IXGBE_ACI_CAPS_TXQS:
+	case LIBIE_AQC_CAPS_TXQS:
 		caps->num_txq = number;
 		caps->txq_first_id = phys_id;
 		break;
-	case IXGBE_ACI_CAPS_MSIX:
+	case LIBIE_AQC_CAPS_MSIX:
 		caps->num_msix_vectors = number;
 		caps->msix_vector_first_id = phys_id;
 		break;
-	case IXGBE_ACI_CAPS_NVM_VER:
+	case LIBIE_AQC_CAPS_NVM_VER:
 		break;
-	case IXGBE_ACI_CAPS_PENDING_NVM_VER:
+	case LIBIE_AQC_CAPS_PENDING_NVM_VER:
 		caps->nvm_update_pending_nvm = true;
 		break;
-	case IXGBE_ACI_CAPS_PENDING_OROM_VER:
+	case LIBIE_AQC_CAPS_PENDING_OROM_VER:
 		caps->nvm_update_pending_orom = true;
 		break;
-	case IXGBE_ACI_CAPS_PENDING_NET_VER:
+	case LIBIE_AQC_CAPS_PENDING_NET_VER:
 		caps->nvm_update_pending_netlist = true;
 		break;
-	case IXGBE_ACI_CAPS_NVM_MGMT:
+	case LIBIE_AQC_CAPS_NVM_MGMT:
 		caps->nvm_unified_update =
 			(number & IXGBE_NVM_MGMT_UNIFIED_UPD_SUPPORT) ?
 			true : false;
 		break;
-	case IXGBE_ACI_CAPS_MAX_MTU:
+	case LIBIE_AQC_CAPS_MAX_MTU:
 		caps->max_mtu = number;
 		break;
-	case IXGBE_ACI_CAPS_PCIE_RESET_AVOIDANCE:
+	case LIBIE_AQC_CAPS_PCIE_RESET_AVOIDANCE:
 		caps->pcie_reset_avoidance = (number > 0);
 		break;
-	case IXGBE_ACI_CAPS_POST_UPDATE_RESET_RESTRICT:
+	case LIBIE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT:
 		caps->reset_restrict_support = (number == 1);
 		break;
-	case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG0:
-	case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG1:
-	case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG2:
-	case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG3:
+	case LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG0:
+	case LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG1:
+	case LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG2:
+	case LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG3:
 	{
-		u8 index = cap - IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG0;
+		u8 index = cap - LIBIE_AQC_CAPS_EXT_TOPO_DEV_IMG0;
 
 		caps->ext_topo_dev_img_ver_high[index] = number;
 		caps->ext_topo_dev_img_ver_low[index] = logical_id;
@@ -638,62 +638,62 @@ static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
 }
 
 /**
- * ixgbe_parse_valid_functions_cap - Parse IXGBE_ACI_CAPS_VALID_FUNCTIONS caps
+ * ixgbe_parse_valid_functions_cap - Parse LIBIE_AQC_CAPS_VALID_FUNCTIONS caps
  * @hw: pointer to the HW struct
  * @dev_p: pointer to device capabilities structure
  * @cap: capability element to parse
  *
- * Parse IXGBE_ACI_CAPS_VALID_FUNCTIONS for device capabilities.
+ * Parse LIBIE_AQC_CAPS_VALID_FUNCTIONS for device capabilities.
  */
 static void
 ixgbe_parse_valid_functions_cap(struct ixgbe_hw *hw,
 				struct ixgbe_hw_dev_caps *dev_p,
-				struct ixgbe_aci_cmd_list_caps_elem *cap)
+				struct libie_aqc_list_caps_elem *cap)
 {
 	dev_p->num_funcs = hweight32(le32_to_cpu(cap->number));
 }
 
 /**
- * ixgbe_parse_vf_dev_caps - Parse IXGBE_ACI_CAPS_VF device caps
+ * ixgbe_parse_vf_dev_caps - Parse LIBIE_AQC_CAPS_VF device caps
  * @hw: pointer to the HW struct
  * @dev_p: pointer to device capabilities structure
  * @cap: capability element to parse
  *
- * Parse IXGBE_ACI_CAPS_VF for device capabilities.
+ * Parse LIBIE_AQC_CAPS_VF for device capabilities.
  */
 static void ixgbe_parse_vf_dev_caps(struct ixgbe_hw *hw,
 				    struct ixgbe_hw_dev_caps *dev_p,
-				    struct ixgbe_aci_cmd_list_caps_elem *cap)
+				    struct libie_aqc_list_caps_elem *cap)
 {
 	dev_p->num_vfs_exposed = le32_to_cpu(cap->number);
 }
 
 /**
- * ixgbe_parse_vsi_dev_caps - Parse IXGBE_ACI_CAPS_VSI device caps
+ * ixgbe_parse_vsi_dev_caps - Parse LIBIE_AQC_CAPS_VSI device caps
  * @hw: pointer to the HW struct
  * @dev_p: pointer to device capabilities structure
  * @cap: capability element to parse
  *
- * Parse IXGBE_ACI_CAPS_VSI for device capabilities.
+ * Parse LIBIE_AQC_CAPS_VSI for device capabilities.
  */
 static void ixgbe_parse_vsi_dev_caps(struct ixgbe_hw *hw,
 				     struct ixgbe_hw_dev_caps *dev_p,
-				     struct ixgbe_aci_cmd_list_caps_elem *cap)
+				     struct libie_aqc_list_caps_elem *cap)
 {
 	dev_p->num_vsi_allocd_to_host = le32_to_cpu(cap->number);
 }
 
 /**
- * ixgbe_parse_fdir_dev_caps - Parse IXGBE_ACI_CAPS_FD device caps
+ * ixgbe_parse_fdir_dev_caps - Parse LIBIE_AQC_CAPS_FD device caps
  * @hw: pointer to the HW struct
  * @dev_p: pointer to device capabilities structure
  * @cap: capability element to parse
  *
- * Parse IXGBE_ACI_CAPS_FD for device capabilities.
+ * Parse LIBIE_AQC_CAPS_FD for device capabilities.
  */
 static void ixgbe_parse_fdir_dev_caps(struct ixgbe_hw *hw,
 				      struct ixgbe_hw_dev_caps *dev_p,
-				      struct ixgbe_aci_cmd_list_caps_elem *cap)
+				      struct libie_aqc_list_caps_elem *cap)
 {
 	dev_p->num_flow_director_fltr = le32_to_cpu(cap->number);
 }
@@ -716,10 +716,10 @@ static void ixgbe_parse_dev_caps(struct ixgbe_hw *hw,
 				 struct ixgbe_hw_dev_caps *dev_p,
 				 void *buf, u32 cap_count)
 {
-	struct ixgbe_aci_cmd_list_caps_elem *cap_resp;
+	struct libie_aqc_list_caps_elem *cap_resp;
 	u32 i;
 
-	cap_resp = (struct ixgbe_aci_cmd_list_caps_elem *)buf;
+	cap_resp = (struct libie_aqc_list_caps_elem *)buf;
 
 	memset(dev_p, 0, sizeof(*dev_p));
 
@@ -730,17 +730,17 @@ static void ixgbe_parse_dev_caps(struct ixgbe_hw *hw,
 				      "dev caps");
 
 		switch (cap) {
-		case IXGBE_ACI_CAPS_VALID_FUNCTIONS:
+		case LIBIE_AQC_CAPS_VALID_FUNCTIONS:
 			ixgbe_parse_valid_functions_cap(hw, dev_p,
 							&cap_resp[i]);
 			break;
-		case IXGBE_ACI_CAPS_VF:
+		case LIBIE_AQC_CAPS_VF:
 			ixgbe_parse_vf_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
-		case IXGBE_ACI_CAPS_VSI:
+		case LIBIE_AQC_CAPS_VSI:
 			ixgbe_parse_vsi_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
-		case  IXGBE_ACI_CAPS_FD:
+		case  LIBIE_AQC_CAPS_FD:
 			ixgbe_parse_fdir_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
 		default:
@@ -751,16 +751,16 @@ static void ixgbe_parse_dev_caps(struct ixgbe_hw *hw,
 }
 
 /**
- * ixgbe_parse_vf_func_caps - Parse IXGBE_ACI_CAPS_VF function caps
+ * ixgbe_parse_vf_func_caps - Parse LIBIE_AQC_CAPS_VF function caps
  * @hw: pointer to the HW struct
  * @func_p: pointer to function capabilities structure
  * @cap: pointer to the capability element to parse
  *
- * Extract function capabilities for IXGBE_ACI_CAPS_VF.
+ * Extract function capabilities for LIBIE_AQC_CAPS_VF.
  */
 static void ixgbe_parse_vf_func_caps(struct ixgbe_hw *hw,
 				     struct ixgbe_hw_func_caps *func_p,
-				     struct ixgbe_aci_cmd_list_caps_elem *cap)
+				     struct libie_aqc_list_caps_elem *cap)
 {
 	func_p->num_allocd_vfs = le32_to_cpu(cap->number);
 	func_p->vf_base_id = le32_to_cpu(cap->logical_id);
@@ -787,16 +787,16 @@ static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max)
 }
 
 /**
- * ixgbe_parse_vsi_func_caps - Parse IXGBE_ACI_CAPS_VSI function caps
+ * ixgbe_parse_vsi_func_caps - Parse LIBIE_AQC_CAPS_VSI function caps
  * @hw: pointer to the HW struct
  * @func_p: pointer to function capabilities structure
  * @cap: pointer to the capability element to parse
  *
- * Extract function capabilities for IXGBE_ACI_CAPS_VSI.
+ * Extract function capabilities for LIBIE_AQC_CAPS_VSI.
  */
 static void ixgbe_parse_vsi_func_caps(struct ixgbe_hw *hw,
 				      struct ixgbe_hw_func_caps *func_p,
-				      struct ixgbe_aci_cmd_list_caps_elem *cap)
+				      struct libie_aqc_list_caps_elem *cap)
 {
 	func_p->guar_num_vsi = ixgbe_get_num_per_func(hw, IXGBE_MAX_VSI);
 }
@@ -819,10 +819,10 @@ static void ixgbe_parse_func_caps(struct ixgbe_hw *hw,
 				  struct ixgbe_hw_func_caps *func_p,
 				  void *buf, u32 cap_count)
 {
-	struct ixgbe_aci_cmd_list_caps_elem *cap_resp;
+	struct libie_aqc_list_caps_elem *cap_resp;
 	u32 i;
 
-	cap_resp = (struct ixgbe_aci_cmd_list_caps_elem *)buf;
+	cap_resp = (struct libie_aqc_list_caps_elem *)buf;
 
 	memset(func_p, 0, sizeof(*func_p));
 
@@ -833,10 +833,10 @@ static void ixgbe_parse_func_caps(struct ixgbe_hw *hw,
 				      &cap_resp[i], "func caps");
 
 		switch (cap) {
-		case IXGBE_ACI_CAPS_VF:
+		case LIBIE_AQC_CAPS_VF:
 			ixgbe_parse_vf_func_caps(hw, func_p, &cap_resp[i]);
 			break;
-		case IXGBE_ACI_CAPS_VSI:
+		case LIBIE_AQC_CAPS_VSI:
 			ixgbe_parse_vsi_func_caps(hw, func_p, &cap_resp[i]);
 			break;
 		default:
@@ -870,8 +870,8 @@ static void ixgbe_parse_func_caps(struct ixgbe_hw *hw,
 int ixgbe_aci_list_caps(struct ixgbe_hw *hw, void *buf, u16 buf_size,
 			u32 *cap_count, enum ixgbe_aci_opc opc)
 {
-	struct ixgbe_aci_cmd_list_caps *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aqc_list_caps *cmd;
+	struct libie_aq_desc desc;
 	int err;
 
 	cmd = &desc.params.get_cap;
@@ -915,7 +915,7 @@ int ixgbe_discover_dev_caps(struct ixgbe_hw *hw,
 	 * possible size that firmware can return.
 	 */
 	cap_count = IXGBE_ACI_MAX_BUFFER_SIZE /
-		    sizeof(struct ixgbe_aci_cmd_list_caps_elem);
+		    sizeof(struct libie_aqc_list_caps_elem);
 
 	err = ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
 				  &cap_count,
@@ -954,7 +954,7 @@ int ixgbe_discover_func_caps(struct ixgbe_hw *hw,
 	 * possible size that firmware can return.
 	 */
 	cap_count = IXGBE_ACI_MAX_BUFFER_SIZE /
-		    sizeof(struct ixgbe_aci_cmd_list_caps_elem);
+		    sizeof(struct libie_aqc_list_caps_elem);
 
 	err = ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
 				  &cap_count,
@@ -997,9 +997,9 @@ int ixgbe_get_caps(struct ixgbe_hw *hw)
 int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw)
 {
 	struct ixgbe_aci_cmd_disable_rxen *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.disable_rxen;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_disable_rxen);
 
@@ -1025,10 +1025,10 @@ int ixgbe_aci_get_phy_caps(struct ixgbe_hw *hw, bool qual_mods, u8 report_mode,
 {
 	struct ixgbe_aci_cmd_get_phy_caps *cmd;
 	u16 pcaps_size = sizeof(*pcaps);
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 	int err;
 
-	cmd = &desc.params.get_phy;
+	cmd = libie_aq_raw(&desc);
 
 	if (!pcaps || (report_mode & ~IXGBE_ACI_REPORT_MODE_M))
 		return -EINVAL;
@@ -1092,18 +1092,20 @@ void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *caps,
 int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
 			  struct ixgbe_aci_cmd_set_phy_cfg_data *cfg)
 {
-	struct ixgbe_aci_desc desc;
+	struct ixgbe_aci_cmd_set_phy_cfg *cmd;
+	struct libie_aq_desc desc;
 	int err;
 
 	if (!cfg)
 		return -EINVAL;
 
+	cmd = libie_aq_raw(&desc);
 	/* Ensure that only valid bits of cfg->caps can be turned on. */
 	cfg->caps &= IXGBE_ACI_PHY_ENA_VALID_MASK;
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_phy_cfg);
-	desc.params.set_phy.lport_num = hw->bus.func;
-	desc.flags |= cpu_to_le16(IXGBE_ACI_FLAG_RD);
+	cmd->lport_num = hw->bus.func;
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	err = ixgbe_aci_send_cmd(hw, &desc, cfg, sizeof(*cfg));
 	if (!err)
@@ -1124,9 +1126,9 @@ int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
 int ixgbe_aci_set_link_restart_an(struct ixgbe_hw *hw, bool ena_link)
 {
 	struct ixgbe_aci_cmd_restart_an *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.restart_an;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_restart_an);
 
@@ -1152,9 +1154,9 @@ int ixgbe_aci_set_link_restart_an(struct ixgbe_hw *hw, bool ena_link)
 static bool ixgbe_is_media_cage_present(struct ixgbe_hw *hw)
 {
 	struct ixgbe_aci_cmd_get_link_topo *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.get_link_topo;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_topo);
 
@@ -1347,7 +1349,7 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 	struct ixgbe_aci_cmd_get_link_status *resp;
 	struct ixgbe_link_status *li_old, *li;
 	struct ixgbe_fc_info *hw_fc_info;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 	bool tx_pause, rx_pause;
 	u8 cmd_flags;
 	int err;
@@ -1361,7 +1363,7 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_status);
 	cmd_flags = (ena_lse) ? IXGBE_ACI_LSE_ENA : IXGBE_ACI_LSE_DIS;
-	resp = &desc.params.get_link_status;
+	resp = libie_aq_raw(&desc);
 	resp->cmd_flags = cpu_to_le16(cmd_flags);
 	resp->lport_num = hw->bus.func;
 
@@ -1424,9 +1426,9 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask)
 {
 	struct ixgbe_aci_cmd_set_event_mask *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.set_event_mask;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_event_mask);
 
@@ -1497,9 +1499,9 @@ static int ixgbe_start_hw_e610(struct ixgbe_hw *hw)
 int ixgbe_aci_set_port_id_led(struct ixgbe_hw *hw, bool orig_mode)
 {
 	struct ixgbe_aci_cmd_set_port_id_led *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.set_port_id_led;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_port_id_led);
 
@@ -2261,19 +2263,20 @@ int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
 			       struct ixgbe_aci_cmd_get_link_topo *cmd,
 			       u8 *node_part_number, u16 *node_handle)
 {
-	struct ixgbe_aci_desc desc;
+	struct ixgbe_aci_cmd_get_link_topo *resp;
+	struct libie_aq_desc desc;
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_topo);
-	desc.params.get_link_topo = *cmd;
+	resp = libie_aq_raw(&desc);
+	*resp = *cmd;
 
 	if (ixgbe_aci_send_cmd(hw, &desc, NULL, 0))
 		return -EOPNOTSUPP;
 
 	if (node_handle)
-		*node_handle =
-			le16_to_cpu(desc.params.get_link_topo.addr.handle);
+		*node_handle = le16_to_cpu(resp->addr.handle);
 	if (node_part_number)
-		*node_part_number = desc.params.get_link_topo.node_part_num;
+		*node_part_number = resp->node_part_num;
 
 	return 0;
 }
@@ -2287,8 +2290,7 @@ int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
  *
  * Return: the exit code of the operation.
  */
-int ixgbe_acquire_nvm(struct ixgbe_hw *hw,
-		      enum ixgbe_aci_res_access_type access)
+int ixgbe_acquire_nvm(struct ixgbe_hw *hw, enum libie_aq_res_access_type access)
 {
 	u32 fla;
 
@@ -2297,7 +2299,7 @@ int ixgbe_acquire_nvm(struct ixgbe_hw *hw,
 	if ((fla & IXGBE_GLNVM_FLA_LOCKED_M) == 0)
 		return 0;
 
-	return ixgbe_acquire_res(hw, IXGBE_NVM_RES_ID, access,
+	return ixgbe_acquire_res(hw, LIBIE_AQC_RES_ID_NVM, access,
 				 IXGBE_NVM_TIMEOUT);
 }
 
@@ -2316,7 +2318,7 @@ void ixgbe_release_nvm(struct ixgbe_hw *hw)
 	if ((fla & IXGBE_GLNVM_FLA_LOCKED_M) == 0)
 		return;
 
-	ixgbe_release_res(hw, IXGBE_NVM_RES_ID);
+	ixgbe_release_res(hw, LIBIE_AQC_RES_ID_NVM);
 }
 
 /**
@@ -2338,12 +2340,12 @@ int ixgbe_aci_read_nvm(struct ixgbe_hw *hw, u16 module_typeid, u32 offset,
 		       bool read_shadow_ram)
 {
 	struct ixgbe_aci_cmd_nvm *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
 	if (offset > IXGBE_ACI_NVM_MAX_OFFSET)
 		return -EINVAL;
 
-	cmd = &desc.params.nvm;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_read);
 
@@ -2373,7 +2375,7 @@ int ixgbe_aci_read_nvm(struct ixgbe_hw *hw, u16 module_typeid, u32 offset,
 int ixgbe_aci_erase_nvm(struct ixgbe_hw *hw, u16 module_typeid)
 {
 	struct ixgbe_aci_cmd_nvm *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 	__le16 len;
 	int err;
 
@@ -2386,7 +2388,7 @@ int ixgbe_aci_erase_nvm(struct ixgbe_hw *hw, u16 module_typeid)
 	if (err)
 		return err;
 
-	cmd = &desc.params.nvm;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_erase);
 
@@ -2417,9 +2419,9 @@ int ixgbe_aci_update_nvm(struct ixgbe_hw *hw, u16 module_typeid,
 			 bool last_command, u8 command_flags)
 {
 	struct ixgbe_aci_cmd_nvm *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.nvm;
+	cmd = libie_aq_raw(&desc);
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000)
@@ -2437,7 +2439,7 @@ int ixgbe_aci_update_nvm(struct ixgbe_hw *hw, u16 module_typeid,
 	cmd->offset_high = FIELD_GET(IXGBE_ACI_NVM_OFFSET_HI_U_MASK, offset);
 	cmd->length = cpu_to_le16(length);
 
-	desc.flags |= cpu_to_le16(IXGBE_ACI_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	return ixgbe_aci_send_cmd(hw, &desc, data, length);
 }
@@ -2468,10 +2470,10 @@ int ixgbe_nvm_write_activate(struct ixgbe_hw *hw, u16 cmd_flags,
 			     u8 *response_flags)
 {
 	struct ixgbe_aci_cmd_nvm *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 	s32 err;
 
-	cmd = &desc.params.nvm;
+	cmd = libie_aq_raw(&desc);
 	ixgbe_fill_dflt_direct_cmd_desc(&desc,
 					ixgbe_aci_opc_nvm_write_activate);
 
@@ -2499,14 +2501,14 @@ int ixgbe_nvm_write_activate(struct ixgbe_hw *hw, u16 cmd_flags,
 int ixgbe_nvm_validate_checksum(struct ixgbe_hw *hw)
 {
 	struct ixgbe_aci_cmd_nvm_checksum *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 	int err;
 
-	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	err = ixgbe_acquire_nvm(hw, LIBIE_AQC_RES_ACCESS_READ);
 	if (err)
 		return err;
 
-	cmd = &desc.params.nvm_checksum;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_checksum);
 	cmd->flags = IXGBE_ACI_NVM_CHECKSUM_VERIFY;
@@ -2542,7 +2544,7 @@ static int ixgbe_discover_flash_size(struct ixgbe_hw *hw)
 	u32 min_size = 0, max_size = IXGBE_ACI_NVM_MAX_OFFSET + 1;
 	int err;
 
-	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	err = ixgbe_acquire_nvm(hw, LIBIE_AQC_RES_ACCESS_READ);
 	if (err)
 		return err;
 
@@ -2553,7 +2555,7 @@ static int ixgbe_discover_flash_size(struct ixgbe_hw *hw)
 
 		err = ixgbe_read_flat_nvm(hw, offset, &len, &data, false);
 		if (err == -EIO &&
-		    hw->aci.last_status == IXGBE_ACI_RC_EINVAL) {
+		    hw->aci.last_status == LIBIE_AQ_RC_EINVAL) {
 			err = 0;
 			max_size = offset;
 		} else if (!err) {
@@ -2805,7 +2807,7 @@ static int ixgbe_read_flash_module(struct ixgbe_hw *hw,
 	if (!start)
 		return -EINVAL;
 
-	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	err = ixgbe_acquire_nvm(hw, LIBIE_AQC_RES_ACCESS_READ);
 	if (err)
 		return err;
 
@@ -3394,7 +3396,7 @@ int ixgbe_get_flash_data(struct ixgbe_hw *hw)
  */
 int ixgbe_aci_nvm_update_empr(struct ixgbe_hw *hw)
 {
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_update_empr);
 
@@ -3420,15 +3422,15 @@ int ixgbe_nvm_set_pkg_data(struct ixgbe_hw *hw, bool del_pkg_data_flag,
 			   u8 *data, u16 length)
 {
 	struct ixgbe_aci_cmd_nvm_pkg_data *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 
 	if (length != 0 && !data)
 		return -EINVAL;
 
-	cmd = &desc.params.pkg_data;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_pkg_data);
-	desc.flags |= cpu_to_le16(IXGBE_ACI_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	if (del_pkg_data_flag)
 		cmd->cmd_flags |= IXGBE_ACI_NVM_PKG_DELETE;
@@ -3458,17 +3460,17 @@ int ixgbe_nvm_pass_component_tbl(struct ixgbe_hw *hw, u8 *data, u16 length,
 				 u8 *comp_response_code)
 {
 	struct ixgbe_aci_cmd_nvm_pass_comp_tbl *cmd;
-	struct ixgbe_aci_desc desc;
+	struct libie_aq_desc desc;
 	int err;
 
 	if (!data || !comp_response || !comp_response_code)
 		return -EINVAL;
 
-	cmd = &desc.params.pass_comp_tbl;
+	cmd = libie_aq_raw(&desc);
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc,
 					ixgbe_aci_opc_nvm_pass_component_tbl);
-	desc.flags |= cpu_to_le16(IXGBE_ACI_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	cmd->transfer_flag = transfer_flag;
 	err = ixgbe_aci_send_cmd(hw, &desc, data, length);
@@ -3623,7 +3625,7 @@ int ixgbe_read_ee_aci_e610(struct ixgbe_hw *hw, u16 offset, u16 *data)
 			return err;
 	}
 
-	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	err = ixgbe_acquire_nvm(hw, LIBIE_AQC_RES_ACCESS_READ);
 	if (err)
 		return err;
 
@@ -3656,7 +3658,7 @@ int ixgbe_read_ee_aci_buffer_e610(struct ixgbe_hw *hw, u16 offset,
 			return err;
 	}
 
-	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	err = ixgbe_acquire_nvm(hw, LIBIE_AQC_RES_ACCESS_READ);
 	if (err)
 		return err;
 
@@ -3696,7 +3698,7 @@ int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val)
 	if (checksum_val) {
 		u16 tmp_checksum;
 
-		err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+		err = ixgbe_acquire_nvm(hw, LIBIE_AQC_RES_ACCESS_READ);
 		if (err)
 			return err;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
index 39f106e39be6..2144dbe96d9f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
@@ -593,7 +593,7 @@ static int ixgbe_cancel_pending_update(struct ixgbe_adapter *adapter,
 					   "Canceling previous pending update",
 					   component, 0, 0);
 
-	err = ixgbe_acquire_nvm(hw, IXGBE_RES_WRITE);
+	err = ixgbe_acquire_nvm(hw, LIBIE_AQC_RES_ACCESS_WRITE);
 	if (err) {
 		NL_SET_ERR_MSG_MOD(extack,
 				   "Failed to acquire device flash lock");
@@ -686,7 +686,7 @@ int ixgbe_flash_pldm_image(struct devlink *devlink,
 	if (err)
 		return err;
 
-	err = ixgbe_acquire_nvm(hw, IXGBE_RES_WRITE);
+	err = ixgbe_acquire_nvm(hw, LIBIE_AQC_RES_ACCESS_WRITE);
 	if (err) {
 		NL_SET_ERR_MSG_MOD(extack,
 				   "Failed to acquire device flash lock");
-- 
2.42.0

