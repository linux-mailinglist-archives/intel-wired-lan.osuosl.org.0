Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F35A5E032
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 16:23:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C9CA82AC8;
	Wed, 12 Mar 2025 15:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ypzV0CZ2Bx50; Wed, 12 Mar 2025 15:23:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A859282AED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741792977;
	bh=IXIRTJD/3/MQwaaMleoHkzDpRXzHcVqN3V7BVE8i074=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zjuPo9bkyRvjn0fuio0YhDbsK73RgPtvBlTqcPymaAvxfpvqeWyXiyNKaGXLrnGa+
	 VXmrei/ReLe0t7TVKsDFcKB7UBCf10/ntlWG3w7RcAFZ6l5TSIEN8vYoZQZvgwG18c
	 7V1t7rFc8k5r2qqzHi0Mz27t0+rI9FKsncwgaQ3BbPwSSY/1VslWPsf0UyHLejsMnq
	 yfx7vZ5E+Ue1D2yTMz0Y8gm2KrGt5GvkjIWVfx+35tEhFuI4vCK3f6YGKbHmhozM9V
	 Kp9SrN0frdMXN1Pg8ouwnf0FLLpEnTOIQ/nI6ngC2k8FQI0T6TT1DU9HMiwFEQnUpt
	 vTw12dH6agPuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A859282AED;
	Wed, 12 Mar 2025 15:22:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6ED381DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3DDE0600D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kFj-0fFeWBoO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 06:24:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 30B7F6087F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30B7F6087F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30B7F6087F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:38 +0000 (UTC)
X-CSE-ConnectionGUID: H97ePHU3R+6iy8Z/M04SoA==
X-CSE-MsgGUID: DHqjYKB4SO66yQmVxNCHng==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="43005558"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="43005558"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:24:38 -0700
X-CSE-ConnectionGUID: d22gElI9S1i2aXtqHM66ZA==
X-CSE-MsgGUID: OcVsJH6pSNWEU0JUON691A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120569501"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa007.fm.intel.com with ESMTP; 11 Mar 2025 23:24:35 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com
Date: Wed, 12 Mar 2025 07:24:21 +0100
Message-ID: <20250312062426.2544608-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250312062426.2544608-1-michal.swiatkowski@linux.intel.com>
References: <20250312062426.2544608-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 12 Mar 2025 15:22:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741760679; x=1773296679;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bTdab5lzrwqvuA+5YOvNEg2KqvCpORA3Sur2UdwXruo=;
 b=fzZk6MGCzt/HQlDLrSfyeCbk1kS3MeCsHLBGqpFhbbZHScVKt+e0hz/n
 rS4h29xr20tISS40jNrenCeE18b8t9zGWDaC85FJFemNQcM6H805IVloc
 4bDmW3jUpv1LSggo1ykuTfl+szVvnEGAzRFWeEDizx6c89he7mQmU11QG
 mvLN0oaT33uNMVnAOqCCNuN5N864gbDYbZpBXimroBz7Kh71yIxneDxc9
 YuMXpy3u1h+yL4T7YcFSldpl+IsEO/9LyqrRpfh5IZNJw9N2d1U/0M1pA
 fQKGmAGM3hGwcepSfsebbW+u5n02YYz5Rrg+YTl+TUtl6E1oMiVKyga5b
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fzZk6MGC
Subject: [Intel-wired-lan] [iwl-next v1 3/8] i40e: use libie adminq
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

Use libie_aq_desc instead of i40e_aq_desc. Do needed changes to allow
clean build.

Get version descriptor is a little less detailed on i40e. To not mess up
with shifting or union inside libie desc use get version descriptor from
i40e.

Move additional caps for i40e to libie.

Fix RCT in declaration that is using libie_aq_desc;

Use libie_aq_raw() wherever it can be used.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  12 +-
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h | 155 +---
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  16 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   6 +-
 include/linux/net/intel/libie/adminq.h        |  19 +
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  68 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 754 +++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  10 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  46 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  14 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  31 +-
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  16 +-
 12 files changed, 497 insertions(+), 650 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index 55b5bb884d73..1be97a3a86ce 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -9,7 +9,7 @@
 #include "i40e_adminq_cmd.h"
 
 #define I40E_ADMINQ_DESC(R, i)   \
-	(&(((struct i40e_aq_desc *)((R).desc_buf.va))[i]))
+	(&(((struct libie_aq_desc *)((R).desc_buf.va))[i]))
 
 #define I40E_ADMINQ_DESC_ALIGNMENT 4096
 
@@ -39,7 +39,7 @@ struct i40e_asq_cmd_details {
 	u16 flags_dis;
 	bool async;
 	bool postpone;
-	struct i40e_aq_desc *wb_desc;
+	struct libie_aq_desc *wb_desc;
 };
 
 #define I40E_ADMINQ_DETAILS(R, i)   \
@@ -47,7 +47,7 @@ struct i40e_asq_cmd_details {
 
 /* ARQ event information */
 struct i40e_arq_event_info {
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 msg_len;
 	u16 buf_len;
 	u8 *msg_buf;
@@ -72,8 +72,8 @@ struct i40e_adminq_info {
 	struct mutex arq_mutex; /* Receive queue lock */
 
 	/* last status values on send and receive queues */
-	enum i40e_admin_queue_err asq_last_status;
-	enum i40e_admin_queue_err arq_last_status;
+	enum libie_aq_err asq_last_status;
+	enum libie_aq_err arq_last_status;
 };
 
 /**
@@ -119,7 +119,7 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
 #define I40E_AQ_LARGE_BUF	512
 #define I40E_ASQ_CMD_TIMEOUT	250000  /* usecs */
 
-void i40e_fill_default_direct_cmd_desc(struct i40e_aq_desc *desc,
+void i40e_fill_default_direct_cmd_desc(struct libie_aq_desc *desc,
 				       u16 opcode);
 
 #endif /* _I40E_ADMINQ_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index c8f35d4de271..76d872b91a38 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -4,6 +4,8 @@
 #ifndef _I40E_ADMINQ_CMD_H_
 #define _I40E_ADMINQ_CMD_H_
 
+#include <linux/net/intel/libie/adminq.h>
+
 #include <linux/bits.h>
 #include <linux/types.h>
 
@@ -30,75 +32,6 @@
 /* API version 1.10 for X722 devices adds ability to request FEC encoding */
 #define I40E_MINOR_VER_FW_REQUEST_FEC_X722 0x000A
 
-struct i40e_aq_desc {
-	__le16 flags;
-	__le16 opcode;
-	__le16 datalen;
-	__le16 retval;
-	__le32 cookie_high;
-	__le32 cookie_low;
-	union {
-		struct {
-			__le32 param0;
-			__le32 param1;
-			__le32 param2;
-			__le32 param3;
-		} internal;
-		struct {
-			__le32 param0;
-			__le32 param1;
-			__le32 addr_high;
-			__le32 addr_low;
-		} external;
-		u8 raw[16];
-	} params;
-};
-
-/* Flags sub-structure
- * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
- * |DD |CMP|ERR|VFE| * *  RESERVED * * |LB |RD |VFC|BUF|SI |EI |FE |
- */
-
-/* command flags and offsets*/
-#define I40E_AQ_FLAG_ERR_SHIFT	2
-#define I40E_AQ_FLAG_LB_SHIFT	9
-#define I40E_AQ_FLAG_RD_SHIFT	10
-#define I40E_AQ_FLAG_BUF_SHIFT	12
-#define I40E_AQ_FLAG_SI_SHIFT	13
-
-#define I40E_AQ_FLAG_ERR	BIT(I40E_AQ_FLAG_ERR_SHIFT) /* 0x4    */
-#define I40E_AQ_FLAG_LB		BIT(I40E_AQ_FLAG_LB_SHIFT)  /* 0x200  */
-#define I40E_AQ_FLAG_RD		BIT(I40E_AQ_FLAG_RD_SHIFT)  /* 0x400  */
-#define I40E_AQ_FLAG_BUF	BIT(I40E_AQ_FLAG_BUF_SHIFT) /* 0x1000 */
-#define I40E_AQ_FLAG_SI		BIT(I40E_AQ_FLAG_SI_SHIFT)  /* 0x2000 */
-
-/* error codes */
-enum i40e_admin_queue_err {
-	I40E_AQ_RC_OK		= 0,  /* success */
-	I40E_AQ_RC_EPERM	= 1,  /* Operation not permitted */
-	I40E_AQ_RC_ENOENT	= 2,  /* No such element */
-	I40E_AQ_RC_ESRCH	= 3,  /* Bad opcode */
-	I40E_AQ_RC_EINTR	= 4,  /* operation interrupted */
-	I40E_AQ_RC_EIO		= 5,  /* I/O error */
-	I40E_AQ_RC_ENXIO	= 6,  /* No such resource */
-	I40E_AQ_RC_E2BIG	= 7,  /* Arg too long */
-	I40E_AQ_RC_EAGAIN	= 8,  /* Try again */
-	I40E_AQ_RC_ENOMEM	= 9,  /* Out of memory */
-	I40E_AQ_RC_EACCES	= 10, /* Permission denied */
-	I40E_AQ_RC_EFAULT	= 11, /* Bad address */
-	I40E_AQ_RC_EBUSY	= 12, /* Device or resource busy */
-	I40E_AQ_RC_EEXIST	= 13, /* object already exists */
-	I40E_AQ_RC_EINVAL	= 14, /* Invalid argument */
-	I40E_AQ_RC_ENOTTY	= 15, /* Not a typewriter */
-	I40E_AQ_RC_ENOSPC	= 16, /* No space left or alloc failure */
-	I40E_AQ_RC_ENOSYS	= 17, /* Function not implemented */
-	I40E_AQ_RC_ERANGE	= 18, /* Parameter out of range */
-	I40E_AQ_RC_EFLUSHED	= 19, /* Cmd flushed due to prev cmd error */
-	I40E_AQ_RC_BAD_ADDR	= 20, /* Descriptor contains a bad pointer */
-	I40E_AQ_RC_EMODE	= 21, /* Op not allowed in current dev mode */
-	I40E_AQ_RC_EFBIG	= 22, /* File too large */
-};
-
 /* Admin Queue command opcodes */
 enum i40e_admin_queue_opc {
 	/* aq commands */
@@ -320,21 +253,6 @@ struct i40e_aqc_get_version {
 	__le16 api_minor;
 };
 
-I40E_CHECK_CMD_LENGTH(i40e_aqc_get_version);
-
-/* Send driver version (indirect 0x0002) */
-struct i40e_aqc_driver_version {
-	u8	driver_major_ver;
-	u8	driver_minor_ver;
-	u8	driver_build_ver;
-	u8	driver_subbuild_ver;
-	u8	reserved[4];
-	__le32	address_high;
-	__le32	address_low;
-};
-
-I40E_CHECK_CMD_LENGTH(i40e_aqc_driver_version);
-
 /* Queue Shutdown (direct 0x0003) */
 struct i40e_aqc_queue_shutdown {
 	__le32	driver_unloading;
@@ -352,75 +270,6 @@ struct i40e_aqc_set_pf_context {
 
 I40E_CHECK_CMD_LENGTH(i40e_aqc_set_pf_context);
 
-/* Request resource ownership (direct 0x0008)
- * Release resource ownership (direct 0x0009)
- */
-struct i40e_aqc_request_resource {
-	__le16	resource_id;
-	__le16	access_type;
-	__le32	timeout;
-	__le32	resource_number;
-	u8	reserved[4];
-};
-
-I40E_CHECK_CMD_LENGTH(i40e_aqc_request_resource);
-
-/* Get function capabilities (indirect 0x000A)
- * Get device capabilities (indirect 0x000B)
- */
-struct i40e_aqc_list_capabilites {
-	u8 command_flags;
-	u8 pf_index;
-	u8 reserved[2];
-	__le32 count;
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
-I40E_CHECK_CMD_LENGTH(i40e_aqc_list_capabilites);
-
-struct i40e_aqc_list_capabilities_element_resp {
-	__le16	id;
-	u8	major_rev;
-	u8	minor_rev;
-	__le32	number;
-	__le32	logical_id;
-	__le32	phys_id;
-	u8	reserved[16];
-};
-
-/* list of caps */
-
-#define I40E_AQ_CAP_ID_SWITCH_MODE	0x0001
-#define I40E_AQ_CAP_ID_MNG_MODE		0x0002
-#define I40E_AQ_CAP_ID_NPAR_ACTIVE	0x0003
-#define I40E_AQ_CAP_ID_OS2BMC_CAP	0x0004
-#define I40E_AQ_CAP_ID_FUNCTIONS_VALID	0x0005
-#define I40E_AQ_CAP_ID_SRIOV		0x0012
-#define I40E_AQ_CAP_ID_VF		0x0013
-#define I40E_AQ_CAP_ID_VMDQ		0x0014
-#define I40E_AQ_CAP_ID_8021QBG		0x0015
-#define I40E_AQ_CAP_ID_8021QBR		0x0016
-#define I40E_AQ_CAP_ID_VSI		0x0017
-#define I40E_AQ_CAP_ID_DCB		0x0018
-#define I40E_AQ_CAP_ID_FCOE		0x0021
-#define I40E_AQ_CAP_ID_ISCSI		0x0022
-#define I40E_AQ_CAP_ID_RSS		0x0040
-#define I40E_AQ_CAP_ID_RXQ		0x0041
-#define I40E_AQ_CAP_ID_TXQ		0x0042
-#define I40E_AQ_CAP_ID_MSIX		0x0043
-#define I40E_AQ_CAP_ID_VF_MSIX		0x0044
-#define I40E_AQ_CAP_ID_FLOW_DIRECTOR	0x0045
-#define I40E_AQ_CAP_ID_1588		0x0046
-#define I40E_AQ_CAP_ID_IWARP		0x0051
-#define I40E_AQ_CAP_ID_LED		0x0061
-#define I40E_AQ_CAP_ID_SDP		0x0062
-#define I40E_AQ_CAP_ID_MDIO		0x0063
-#define I40E_AQ_CAP_ID_WSR_PROT		0x0064
-#define I40E_AQ_CAP_ID_NVM_MGMT		0x0080
-#define I40E_AQ_CAP_ID_FLEX10		0x00F1
-#define I40E_AQ_CAP_ID_CEM		0x00F2
-
 /* Set CPPM Configuration (direct 0x0103) */
 struct i40e_aqc_cppm_configuration {
 	__le16	command_flags;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 099bb8ab7d70..bd54f06b43cd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -23,22 +23,22 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 			   struct i40e_arq_event_info *e,
 			   u16 *events_pending);
 int
-i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
+i40e_asq_send_command(struct i40e_hw *hw, struct libie_aq_desc *desc,
 		      void *buff, /* can be NULL */ u16  buff_size,
 		      struct i40e_asq_cmd_details *cmd_details);
 int
-i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
+i40e_asq_send_command_atomic(struct i40e_hw *hw, struct libie_aq_desc *desc,
 			     void *buff, /* can be NULL */ u16  buff_size,
 			     struct i40e_asq_cmd_details *cmd_details,
 			     bool is_atomic_context);
 int
 i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
-				struct i40e_aq_desc *desc,
+				struct libie_aq_desc *desc,
 				void *buff, /* can be NULL */
 				u16  buff_size,
 				struct i40e_asq_cmd_details *cmd_details,
 				bool is_atomic_context,
-				enum i40e_admin_queue_err *aq_status);
+				enum libie_aq_err *aq_status);
 
 /* debug function for adminq */
 void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask,
@@ -46,7 +46,7 @@ void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask,
 
 bool i40e_check_asq_alive(struct i40e_hw *hw);
 int i40e_aq_queue_shutdown(struct i40e_hw *hw, bool unloading);
-const char *i40e_aq_str(struct i40e_hw *hw, enum i40e_admin_queue_err aq_err);
+const char *i40e_aq_str(struct i40e_hw *hw, enum libie_aq_err aq_err);
 
 int i40e_aq_get_rss_lut(struct i40e_hw *hw, u16 seid,
 			bool pf_lut, u8 *lut, u16 lut_size);
@@ -155,7 +155,7 @@ int
 i40e_aq_add_macvlan_v2(struct i40e_hw *hw, u16 seid,
 		       struct i40e_aqc_add_macvlan_element_data *mv_list,
 		       u16 count, struct i40e_asq_cmd_details *cmd_details,
-		       enum i40e_admin_queue_err *aq_status);
+		       enum libie_aq_err *aq_status);
 int i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 vsi_id,
 			   struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			   u16 count, struct i40e_asq_cmd_details *cmd_details);
@@ -163,7 +163,7 @@ int
 i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
 			  struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			  u16 count, struct i40e_asq_cmd_details *cmd_details,
-			  enum i40e_admin_queue_err *aq_status);
+			  enum libie_aq_err *aq_status);
 
 int i40e_aq_send_msg_to_vf(struct i40e_hw *hw, u16 vfid,
 			   u32 v_opcode, u32 v_retval, u8 *msg, u16 msglen,
@@ -339,7 +339,7 @@ int i40e_nvmupd_command(struct i40e_hw *hw,
 			struct i40e_nvm_access *cmd,
 			u8 *bytes, int *errno);
 void i40e_nvmupd_check_wait_event(struct i40e_hw *hw, u16 opcode,
-				  struct i40e_aq_desc *desc);
+				  struct libie_aq_desc *desc);
 void i40e_nvmupd_clear_wait_state(struct i40e_hw *hw);
 void i40e_set_pci_config_data(struct i40e_hw *hw, u16 link_status);
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 28568e126850..a8a6fe8c91f1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -24,7 +24,7 @@
 
 /* forward declaration */
 struct i40e_hw;
-typedef void (*I40E_ADMINQ_CALLBACK)(struct i40e_hw *, struct i40e_aq_desc *);
+typedef void (*I40E_ADMINQ_CALLBACK)(struct i40e_hw *, struct libie_aq_desc *);
 
 /* Data type manipulation macros. */
 
@@ -555,8 +555,8 @@ struct i40e_hw {
 
 	/* state of nvm update process */
 	enum i40e_nvmupd_state nvmupd_state;
-	struct i40e_aq_desc nvm_wb_desc;
-	struct i40e_aq_desc nvm_aq_event_desc;
+	struct libie_aq_desc nvm_wb_desc;
+	struct libie_aq_desc nvm_aq_event_desc;
 	struct i40e_virt_mem nvm_buff;
 	bool nvm_release_on_done;
 	u16 nvm_wait_opcode;
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/net/intel/libie/adminq.h
index 5963cd3e268f..684cc1c76107 100644
--- a/include/linux/net/intel/libie/adminq.h
+++ b/include/linux/net/intel/libie/adminq.h
@@ -146,17 +146,26 @@ struct libie_aqc_list_caps {
 LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_list_caps);
 
 /* Device/Function buffer entry, repeated per reported capability */
+#define LIBIE_AQC_CAPS_SWITCH_MODE			0x0001
+#define LIBIE_AQC_CAPS_MNG_MODE				0x0002
+#define LIBIE_AQC_CAPS_NPAR_ACTIVE			0x0003
+#define LIBIE_AQC_CAPS_OS2BMC_CAP			0x0004
 #define LIBIE_AQC_CAPS_VALID_FUNCTIONS			0x0005
 #define LIBIE_AQC_MAX_VALID_FUNCTIONS			0x8
 #define LIBIE_AQC_CAPS_SRIOV				0x0012
 #define LIBIE_AQC_CAPS_VF				0x0013
 #define LIBIE_AQC_CAPS_VMDQ				0x0014
+#define LIBIE_AQC_CAPS_8021QBG				0x0015
+#define LIBIE_AQC_CAPS_8021QBR				0x0016
 #define LIBIE_AQC_CAPS_VSI				0x0017
 #define LIBIE_AQC_CAPS_DCB				0x0018
+#define LIBIE_AQC_CAPS_FCOE				0x0021
+#define LIBIE_AQC_CAPS_ISCSI				0x0022
 #define LIBIE_AQC_CAPS_RSS				0x0040
 #define LIBIE_AQC_CAPS_RXQS				0x0041
 #define LIBIE_AQC_CAPS_TXQS				0x0042
 #define LIBIE_AQC_CAPS_MSIX				0x0043
+#define LIBIE_AQC_CAPS_VF_MSIX				0x0044
 #define LIBIE_AQC_CAPS_FD				0x0045
 #define LIBIE_AQC_CAPS_1588				0x0046
 #define LIBIE_AQC_CAPS_MAX_MTU				0x0047
@@ -167,6 +176,10 @@ LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_list_caps);
 #define LIBIE_AQC_CAPS_NET_VER				0x004C
 #define LIBIE_AQC_CAPS_PENDING_NET_VER			0x004D
 #define LIBIE_AQC_CAPS_RDMA				0x0051
+#define LIBIE_AQC_CAPS_LED				0x0061
+#define LIBIE_AQC_CAPS_SDP				0x0062
+#define LIBIE_AQC_CAPS_MDIO				0x0063
+#define LIBIE_AQC_CAPS_WSR_PROT				0x0064
 #define LIBIE_AQC_CAPS_SENSOR_READING			0x0067
 #define LIBIE_AQC_INLINE_IPSEC				0x0070
 #define LIBIE_AQC_CAPS_NUM_ENABLED_PORTS		0x0072
@@ -180,6 +193,8 @@ LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_list_caps);
 #define LIBIE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
 #define LIBIE_AQC_CAPS_NAC_TOPOLOGY			0x0087
 #define LIBIE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
+#define LIBIE_AQC_CAPS_FLEX10				0x00F1
+#define LIBIE_AQC_CAPS_CEM				0x00F2
 #define LIBIE_AQC_BIT_ROCEV2_LAG			0x01
 #define LIBIE_AQC_BIT_SRIOV_LAG				0x02
 
@@ -266,7 +281,11 @@ enum libie_aq_err {
 	LIBIE_AQ_RC_OK		= 0,  /* Success */
 	LIBIE_AQ_RC_EPERM	= 1,  /* Operation not permitted */
 	LIBIE_AQ_RC_ENOENT	= 2,  /* No such element */
+	LIBIE_AQ_RC_ESRCH	= 3,  /* Bad opcode */
+	LIBIE_AQ_RC_EIO		= 5,  /* I/O error */
+	LIBIE_AQ_RC_EAGAIN	= 8,  /* Try again */
 	LIBIE_AQ_RC_ENOMEM	= 9,  /* Out of memory */
+	LIBIE_AQ_RC_EACCES	= 10, /* Permission denied */
 	LIBIE_AQ_RC_EBUSY	= 12, /* Device or resource busy */
 	LIBIE_AQ_RC_EEXIST	= 13, /* Object already exists */
 	LIBIE_AQ_RC_EINVAL	= 14, /* Invalid argument */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 175c1320c143..096ec46bb619 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -18,7 +18,7 @@ static int i40e_alloc_adminq_asq_ring(struct i40e_hw *hw)
 
 	ret_code = i40e_allocate_dma_mem(hw, &hw->aq.asq.desc_buf,
 					 (hw->aq.num_asq_entries *
-					 sizeof(struct i40e_aq_desc)),
+					 sizeof(struct libie_aq_desc)),
 					 I40E_ADMINQ_DESC_ALIGNMENT);
 	if (ret_code)
 		return ret_code;
@@ -44,7 +44,7 @@ static int i40e_alloc_adminq_arq_ring(struct i40e_hw *hw)
 
 	ret_code = i40e_allocate_dma_mem(hw, &hw->aq.arq.desc_buf,
 					 (hw->aq.num_arq_entries *
-					 sizeof(struct i40e_aq_desc)),
+					 sizeof(struct libie_aq_desc)),
 					 I40E_ADMINQ_DESC_ALIGNMENT);
 
 	return ret_code;
@@ -80,7 +80,7 @@ static void i40e_free_adminq_arq(struct i40e_hw *hw)
  **/
 static int i40e_alloc_arq_bufs(struct i40e_hw *hw)
 {
-	struct i40e_aq_desc *desc;
+	struct libie_aq_desc *desc;
 	struct i40e_dma_mem *bi;
 	int ret_code;
 	int i;
@@ -108,9 +108,9 @@ static int i40e_alloc_arq_bufs(struct i40e_hw *hw)
 		/* now configure the descriptors for use */
 		desc = I40E_ADMINQ_DESC(hw->aq.arq, i);
 
-		desc->flags = cpu_to_le16(I40E_AQ_FLAG_BUF);
+		desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_BUF);
 		if (hw->aq.arq_buf_size > I40E_AQ_LARGE_BUF)
-			desc->flags |= cpu_to_le16(I40E_AQ_FLAG_LB);
+			desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 		desc->opcode = 0;
 		/* This is in accordance with Admin queue design, there is no
 		 * register for buffer size configuration
@@ -119,12 +119,12 @@ static int i40e_alloc_arq_bufs(struct i40e_hw *hw)
 		desc->retval = 0;
 		desc->cookie_high = 0;
 		desc->cookie_low = 0;
-		desc->params.external.addr_high =
+		desc->params.generic.addr_high =
 			cpu_to_le32(upper_32_bits(bi->pa));
-		desc->params.external.addr_low =
+		desc->params.generic.addr_low =
 			cpu_to_le32(lower_32_bits(bi->pa));
-		desc->params.external.param0 = 0;
-		desc->params.external.param1 = 0;
+		desc->params.generic.param0 = 0;
+		desc->params.generic.param1 = 0;
 	}
 
 alloc_arq_bufs:
@@ -691,8 +691,8 @@ static u16 i40e_clean_asq(struct i40e_hw *hw)
 	struct i40e_adminq_ring *asq = &(hw->aq.asq);
 	struct i40e_asq_cmd_details *details;
 	u16 ntc = asq->next_to_clean;
-	struct i40e_aq_desc desc_cb;
-	struct i40e_aq_desc *desc;
+	struct libie_aq_desc desc_cb;
+	struct libie_aq_desc *desc;
 
 	desc = I40E_ADMINQ_DESC(*asq, ntc);
 	details = I40E_ADMINQ_DETAILS(*asq, ntc);
@@ -750,7 +750,7 @@ static bool i40e_asq_done(struct i40e_hw *hw)
  **/
 static int
 i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
-				  struct i40e_aq_desc *desc,
+				  struct libie_aq_desc *desc,
 				  void *buff, /* can be NULL */
 				  u16  buff_size,
 				  struct i40e_asq_cmd_details *cmd_details,
@@ -758,7 +758,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 {
 	struct i40e_dma_mem *dma_buff = NULL;
 	struct i40e_asq_cmd_details *details;
-	struct i40e_aq_desc *desc_on_ring;
+	struct libie_aq_desc *desc_on_ring;
 	bool cmd_completed = false;
 	u16  retval = 0;
 	int status = 0;
@@ -771,7 +771,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 		goto asq_send_command_error;
 	}
 
-	hw->aq.asq_last_status = I40E_AQ_RC_OK;
+	hw->aq.asq_last_status = LIBIE_AQ_RC_OK;
 
 	val = rd32(hw, I40E_PF_ATQH);
 	if (val >= hw->aq.num_asq_entries) {
@@ -851,9 +851,9 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 		/* Update the address values in the desc with the pa value
 		 * for respective buffer
 		 */
-		desc_on_ring->params.external.addr_high =
+		desc_on_ring->params.generic.addr_high =
 				cpu_to_le32(upper_32_bits(dma_buff->pa));
-		desc_on_ring->params.external.addr_low =
+		desc_on_ring->params.generic.addr_low =
 				cpu_to_le32(lower_32_bits(dma_buff->pa));
 	}
 
@@ -905,13 +905,13 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 			retval &= 0xff;
 		}
 		cmd_completed = true;
-		if ((enum i40e_admin_queue_err)retval == I40E_AQ_RC_OK)
+		if ((enum libie_aq_err)retval == LIBIE_AQ_RC_OK)
 			status = 0;
-		else if ((enum i40e_admin_queue_err)retval == I40E_AQ_RC_EBUSY)
+		else if ((enum libie_aq_err)retval == LIBIE_AQ_RC_EBUSY)
 			status = -EBUSY;
 		else
 			status = -EIO;
-		hw->aq.asq_last_status = (enum i40e_admin_queue_err)retval;
+		hw->aq.asq_last_status = (enum libie_aq_err)retval;
 	}
 
 	i40e_debug(hw, I40E_DEBUG_AQ_COMMAND,
@@ -954,7 +954,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
  **/
 int
 i40e_asq_send_command_atomic(struct i40e_hw *hw,
-			     struct i40e_aq_desc *desc,
+			     struct libie_aq_desc *desc,
 			     void *buff, /* can be NULL */
 			     u16  buff_size,
 			     struct i40e_asq_cmd_details *cmd_details,
@@ -972,7 +972,7 @@ i40e_asq_send_command_atomic(struct i40e_hw *hw,
 }
 
 int
-i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
+i40e_asq_send_command(struct i40e_hw *hw, struct libie_aq_desc *desc,
 		      void *buff, /* can be NULL */ u16  buff_size,
 		      struct i40e_asq_cmd_details *cmd_details)
 {
@@ -996,12 +996,12 @@ i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
  **/
 int
 i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
-				struct i40e_aq_desc *desc,
+				struct libie_aq_desc *desc,
 				void *buff, /* can be NULL */
 				u16  buff_size,
 				struct i40e_asq_cmd_details *cmd_details,
 				bool is_atomic_context,
-				enum i40e_admin_queue_err *aq_status)
+				enum libie_aq_err *aq_status)
 {
 	int status;
 
@@ -1023,13 +1023,13 @@ i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
  *
  *  Fill the desc with default values
  **/
-void i40e_fill_default_direct_cmd_desc(struct i40e_aq_desc *desc,
+void i40e_fill_default_direct_cmd_desc(struct libie_aq_desc *desc,
 				       u16 opcode)
 {
 	/* zero out the desc */
-	memset((void *)desc, 0, sizeof(struct i40e_aq_desc));
+	memset((void *)desc, 0, sizeof(struct libie_aq_desc));
 	desc->opcode = cpu_to_le16(opcode);
-	desc->flags = cpu_to_le16(I40E_AQ_FLAG_SI);
+	desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_SI);
 }
 
 /**
@@ -1047,7 +1047,7 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 			   u16 *pending)
 {
 	u16 ntc = hw->aq.arq.next_to_clean;
-	struct i40e_aq_desc *desc;
+	struct libie_aq_desc *desc;
 	struct i40e_dma_mem *bi;
 	int ret_code = 0;
 	u16 desc_idx;
@@ -1081,9 +1081,9 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 	desc_idx = ntc;
 
 	hw->aq.arq_last_status =
-		(enum i40e_admin_queue_err)le16_to_cpu(desc->retval);
+		(enum libie_aq_err)le16_to_cpu(desc->retval);
 	flags = le16_to_cpu(desc->flags);
-	if (flags & I40E_AQ_FLAG_ERR) {
+	if (flags & LIBIE_AQ_FLAG_ERR) {
 		ret_code = -EIO;
 		i40e_debug(hw,
 			   I40E_DEBUG_AQ_MESSAGE,
@@ -1107,14 +1107,14 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 	 * size
 	 */
 	bi = &hw->aq.arq.r.arq_bi[ntc];
-	memset((void *)desc, 0, sizeof(struct i40e_aq_desc));
+	memset((void *)desc, 0, sizeof(struct libie_aq_desc));
 
-	desc->flags = cpu_to_le16(I40E_AQ_FLAG_BUF);
+	desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_BUF);
 	if (hw->aq.arq_buf_size > I40E_AQ_LARGE_BUF)
-		desc->flags |= cpu_to_le16(I40E_AQ_FLAG_LB);
+		desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 	desc->datalen = cpu_to_le16((u16)bi->size);
-	desc->params.external.addr_high = cpu_to_le32(upper_32_bits(bi->pa));
-	desc->params.external.addr_low = cpu_to_le32(lower_32_bits(bi->pa));
+	desc->params.generic.addr_high = cpu_to_le32(upper_32_bits(bi->pa));
+	desc->params.generic.addr_low = cpu_to_le32(lower_32_bits(bi->pa));
 
 	/* set tail = the last cleaned desc index. */
 	wr32(hw, I40E_PF_ARQT, ntc);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 370b4bddee44..a0faa84a9e5a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -73,55 +73,47 @@ int i40e_set_mac_type(struct i40e_hw *hw)
  * @hw: pointer to the HW structure
  * @aq_err: the AQ error code to convert
  **/
-const char *i40e_aq_str(struct i40e_hw *hw, enum i40e_admin_queue_err aq_err)
+const char *i40e_aq_str(struct i40e_hw *hw, enum libie_aq_err aq_err)
 {
 	switch (aq_err) {
-	case I40E_AQ_RC_OK:
+	case LIBIE_AQ_RC_OK:
 		return "OK";
-	case I40E_AQ_RC_EPERM:
-		return "I40E_AQ_RC_EPERM";
-	case I40E_AQ_RC_ENOENT:
-		return "I40E_AQ_RC_ENOENT";
-	case I40E_AQ_RC_ESRCH:
-		return "I40E_AQ_RC_ESRCH";
-	case I40E_AQ_RC_EINTR:
-		return "I40E_AQ_RC_EINTR";
-	case I40E_AQ_RC_EIO:
-		return "I40E_AQ_RC_EIO";
-	case I40E_AQ_RC_ENXIO:
-		return "I40E_AQ_RC_ENXIO";
-	case I40E_AQ_RC_E2BIG:
-		return "I40E_AQ_RC_E2BIG";
-	case I40E_AQ_RC_EAGAIN:
-		return "I40E_AQ_RC_EAGAIN";
-	case I40E_AQ_RC_ENOMEM:
-		return "I40E_AQ_RC_ENOMEM";
-	case I40E_AQ_RC_EACCES:
-		return "I40E_AQ_RC_EACCES";
-	case I40E_AQ_RC_EFAULT:
-		return "I40E_AQ_RC_EFAULT";
-	case I40E_AQ_RC_EBUSY:
-		return "I40E_AQ_RC_EBUSY";
-	case I40E_AQ_RC_EEXIST:
-		return "I40E_AQ_RC_EEXIST";
-	case I40E_AQ_RC_EINVAL:
-		return "I40E_AQ_RC_EINVAL";
-	case I40E_AQ_RC_ENOTTY:
-		return "I40E_AQ_RC_ENOTTY";
-	case I40E_AQ_RC_ENOSPC:
-		return "I40E_AQ_RC_ENOSPC";
-	case I40E_AQ_RC_ENOSYS:
-		return "I40E_AQ_RC_ENOSYS";
-	case I40E_AQ_RC_ERANGE:
-		return "I40E_AQ_RC_ERANGE";
-	case I40E_AQ_RC_EFLUSHED:
-		return "I40E_AQ_RC_EFLUSHED";
-	case I40E_AQ_RC_BAD_ADDR:
-		return "I40E_AQ_RC_BAD_ADDR";
-	case I40E_AQ_RC_EMODE:
-		return "I40E_AQ_RC_EMODE";
-	case I40E_AQ_RC_EFBIG:
-		return "I40E_AQ_RC_EFBIG";
+	case LIBIE_AQ_RC_EPERM:
+		return "LIBIE_AQ_RC_EPERM";
+	case LIBIE_AQ_RC_ENOENT:
+		return "LIBIE_AQ_RC_ENOENT";
+	case LIBIE_AQ_RC_ESRCH:
+		return "LIBIE_AQ_RC_ESRCH";
+	case LIBIE_AQ_RC_EIO:
+		return "LIBIE_AQ_RC_EIO";
+	case LIBIE_AQ_RC_EAGAIN:
+		return "LIBIE_AQ_RC_EAGAIN";
+	case LIBIE_AQ_RC_ENOMEM:
+		return "LIBIE_AQ_RC_ENOMEM";
+	case LIBIE_AQ_RC_EACCES:
+		return "LIBIE_AQ_RC_EACCES";
+	case LIBIE_AQ_RC_EBUSY:
+		return "LIBIE_AQ_RC_EBUSY";
+	case LIBIE_AQ_RC_EEXIST:
+		return "LIBIE_AQ_RC_EEXIST";
+	case LIBIE_AQ_RC_EINVAL:
+		return "LIBIE_AQ_RC_EINVAL";
+	case LIBIE_AQ_RC_ENOSPC:
+		return "LIBIE_AQ_RC_ENOSPC";
+	case LIBIE_AQ_RC_ENOSYS:
+		return "LIBIE_AQ_RC_ENOSYS";
+	case LIBIE_AQ_RC_EMODE:
+		return "LIBIE_AQ_RC_EMODE";
+	case LIBIE_AQ_RC_ENOSEC:
+		return "LIBIE_AQ_RC_ENOSEC";
+	case LIBIE_AQ_RC_EBADSIG:
+		return "LIBIE_AQ_RC_EBADSIG";
+	case LIBIE_AQ_RC_ESVN:
+		return "LIBIE_AQ_RC_ESVN";
+	case LIBIE_AQ_RC_EBADMAN:
+		return "LIBIE_AQ_RC_EBADMAN";
+	case LIBIE_AQ_RC_EBADBUF:
+		return "LIBIE_AQ_RC_EBADBUF";
 	}
 
 	snprintf(hw->err_str, sizeof(hw->err_str), "%d", aq_err);
@@ -141,7 +133,7 @@ const char *i40e_aq_str(struct i40e_hw *hw, enum i40e_admin_queue_err aq_err)
 void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask, void *desc,
 		   void *buffer, u16 buf_len)
 {
-	struct i40e_aq_desc *aq_desc = (struct i40e_aq_desc *)desc;
+	struct libie_aq_desc *aq_desc = (struct libie_aq_desc *)desc;
 	u32 effective_mask = hw->debug_mask & mask;
 	char prefix[27];
 	u16 len;
@@ -164,12 +156,12 @@ void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask, void *desc,
 		   le32_to_cpu(aq_desc->cookie_low));
 	i40e_debug(hw, mask & I40E_DEBUG_AQ_DESCRIPTOR,
 		   "\tparam (0,1)  0x%08X 0x%08X\n",
-		   le32_to_cpu(aq_desc->params.internal.param0),
-		   le32_to_cpu(aq_desc->params.internal.param1));
+		   le32_to_cpu(aq_desc->params.generic.param0),
+		   le32_to_cpu(aq_desc->params.generic.param1));
 	i40e_debug(hw, mask & I40E_DEBUG_AQ_DESCRIPTOR,
 		   "\taddr (h,l)   0x%08X 0x%08X\n",
-		   le32_to_cpu(aq_desc->params.external.addr_high),
-		   le32_to_cpu(aq_desc->params.external.addr_low));
+		   le32_to_cpu(aq_desc->params.generic.addr_high),
+		   le32_to_cpu(aq_desc->params.generic.addr_low));
 
 	if (buffer && buf_len != 0 && len != 0 &&
 	    (effective_mask & I40E_DEBUG_AQ_DESC_BUFFER)) {
@@ -214,14 +206,14 @@ bool i40e_check_asq_alive(struct i40e_hw *hw)
 int i40e_aq_queue_shutdown(struct i40e_hw *hw,
 			   bool unloading)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_queue_shutdown *cmd =
-		(struct i40e_aqc_queue_shutdown *)&desc.params.raw;
+	struct i40e_aqc_queue_shutdown *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_queue_shutdown);
 
+	cmd = libie_aq_raw(&desc);
 	if (unloading)
 		cmd->driver_unloading = cpu_to_le32(I40E_AQ_DRIVER_UNLOADING);
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, NULL);
@@ -245,9 +237,8 @@ static int i40e_aq_get_set_rss_lut(struct i40e_hw *hw,
 				   u8 *lut, u16 lut_size,
 				   bool set)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_get_set_rss_lut *cmd_resp =
-		   (struct i40e_aqc_get_set_rss_lut *)&desc.params.raw;
+	struct i40e_aqc_get_set_rss_lut *cmd_resp;
+	struct libie_aq_desc desc;
 	int status;
 	u16 flags;
 
@@ -258,9 +249,10 @@ static int i40e_aq_get_set_rss_lut(struct i40e_hw *hw,
 		i40e_fill_default_direct_cmd_desc(&desc,
 						  i40e_aqc_opc_get_rss_lut);
 
+	cmd_resp = libie_aq_raw(&desc);
 	/* Indirect command */
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
 
 	vsi_id = FIELD_PREP(I40E_AQC_SET_RSS_LUT_VSI_ID_MASK, vsi_id) |
 		 FIELD_PREP(I40E_AQC_SET_RSS_LUT_VSI_VALID, 1);
@@ -326,10 +318,9 @@ static int i40e_aq_get_set_rss_key(struct i40e_hw *hw,
 				   struct i40e_aqc_get_set_rss_key_data *key,
 				   bool set)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_get_set_rss_key *cmd_resp =
-			(struct i40e_aqc_get_set_rss_key *)&desc.params.raw;
 	u16 key_size = sizeof(struct i40e_aqc_get_set_rss_key_data);
+	struct i40e_aqc_get_set_rss_key *cmd_resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (set)
@@ -339,9 +330,10 @@ static int i40e_aq_get_set_rss_key(struct i40e_hw *hw,
 		i40e_fill_default_direct_cmd_desc(&desc,
 						  i40e_aqc_opc_get_rss_key);
 
+	cmd_resp = libie_aq_raw(&desc);
 	/* Indirect command */
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
 
 	vsi_id = FIELD_PREP(I40E_AQC_SET_RSS_KEY_VSI_ID_MASK, vsi_id) |
 		 FIELD_PREP(I40E_AQC_SET_RSS_KEY_VSI_VALID, 1);
@@ -439,13 +431,13 @@ i40e_aq_mac_address_read(struct i40e_hw *hw,
 			 struct i40e_aqc_mac_address_read_data *addrs,
 			 struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_mac_address_read *cmd_data =
-		(struct i40e_aqc_mac_address_read *)&desc.params.raw;
+	struct i40e_aqc_mac_address_read *cmd_data;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_mac_address_read);
-	desc.flags |= cpu_to_le16(I40E_AQ_FLAG_BUF);
+	cmd_data = libie_aq_raw(&desc);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_BUF);
 
 	status = i40e_asq_send_command(hw, &desc, addrs,
 				       sizeof(*addrs), cmd_details);
@@ -465,13 +457,13 @@ int i40e_aq_mac_address_write(struct i40e_hw *hw,
 			      u16 flags, u8 *mac_addr,
 			      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_mac_address_write *cmd_data =
-		(struct i40e_aqc_mac_address_write *)&desc.params.raw;
+	struct i40e_aqc_mac_address_write *cmd_data;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_mac_address_write);
+	cmd_data = libie_aq_raw(&desc);
 	cmd_data->command_flags = cpu_to_le16(flags);
 	cmd_data->mac_sah = cpu_to_le16((u16)mac_addr[0] << 8 | mac_addr[1]);
 	cmd_data->mac_sal = cpu_to_le32(((u32)mac_addr[2] << 24) |
@@ -1060,7 +1052,7 @@ i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 {
 	u16 abilities_size = sizeof(struct i40e_aq_get_phy_abilities_resp);
 	u16 max_delay = I40E_MAX_PHY_TIMEOUT, total_delay = 0;
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (!abilities)
@@ -1070,36 +1062,36 @@ i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 		i40e_fill_default_direct_cmd_desc(&desc,
 					       i40e_aqc_opc_get_phy_abilities);
 
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 		if (abilities_size > I40E_AQ_LARGE_BUF)
-			desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+			desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 		if (qualified_modules)
-			desc.params.external.param0 |=
+			desc.params.generic.param0 |=
 			cpu_to_le32(I40E_AQ_PHY_REPORT_QUALIFIED_MODULES);
 
 		if (report_init)
-			desc.params.external.param0 |=
+			desc.params.generic.param0 |=
 			cpu_to_le32(I40E_AQ_PHY_REPORT_INITIAL_VALUES);
 
 		status = i40e_asq_send_command(hw, &desc, abilities,
 					       abilities_size, cmd_details);
 
 		switch (hw->aq.asq_last_status) {
-		case I40E_AQ_RC_EIO:
+		case LIBIE_AQ_RC_EIO:
 			status = -EIO;
 			break;
-		case I40E_AQ_RC_EAGAIN:
+		case LIBIE_AQ_RC_EAGAIN:
 			usleep_range(1000, 2000);
 			total_delay++;
 			status = -EIO;
 			break;
-		/* also covers I40E_AQ_RC_OK */
+		/* also covers LIBIE_AQ_RC_OK */
 		default:
 			break;
 		}
 
-	} while ((hw->aq.asq_last_status == I40E_AQ_RC_EAGAIN) &&
+	} while ((hw->aq.asq_last_status == LIBIE_AQ_RC_EAGAIN) &&
 		(total_delay < max_delay));
 
 	if (status)
@@ -1136,9 +1128,8 @@ int i40e_aq_set_phy_config(struct i40e_hw *hw,
 			   struct i40e_aq_set_phy_config *config,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aq_set_phy_config *cmd =
-			(struct i40e_aq_set_phy_config *)&desc.params.raw;
+	struct i40e_aq_set_phy_config *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (!config)
@@ -1147,6 +1138,7 @@ int i40e_aq_set_phy_config(struct i40e_hw *hw,
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_phy_config);
 
+	cmd = libie_aq_raw(&desc);
 	*cmd = *config;
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -1258,14 +1250,14 @@ int i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
 int i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_clear_pxe *cmd =
-		(struct i40e_aqc_clear_pxe *)&desc.params.raw;
+	struct i40e_aqc_clear_pxe *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_clear_pxe_mode);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->rx_cnt = 0x2;
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -1287,14 +1279,14 @@ int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
 				bool enable_link,
 				struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_link_restart_an *cmd =
-		(struct i40e_aqc_set_link_restart_an *)&desc.params.raw;
+	struct i40e_aqc_set_link_restart_an *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_link_restart_an);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->command = I40E_AQ_PHY_RESTART_AN;
 	if (enable_link)
 		cmd->command |= I40E_AQ_PHY_LINK_ENABLE;
@@ -1319,16 +1311,16 @@ int i40e_aq_get_link_info(struct i40e_hw *hw,
 			  bool enable_lse, struct i40e_link_status *link,
 			  struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_get_link_status *resp =
-		(struct i40e_aqc_get_link_status *)&desc.params.raw;
 	struct i40e_link_status *hw_link_info = &hw->phy.link_info;
+	struct i40e_aqc_get_link_status *resp;
+	struct libie_aq_desc desc;
 	bool tx_pause, rx_pause;
 	u16 command_flags;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_get_link_status);
 
+	resp = libie_aq_raw(&desc);
 	if (enable_lse)
 		command_flags = I40E_AQ_LSE_ENABLE;
 	else
@@ -1414,14 +1406,14 @@ int i40e_aq_set_phy_int_mask(struct i40e_hw *hw,
 			     u16 mask,
 			     struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_phy_int_mask *cmd =
-		(struct i40e_aqc_set_phy_int_mask *)&desc.params.raw;
+	struct i40e_aqc_set_phy_int_mask *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_phy_int_mask);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->event_mask = cpu_to_le16(mask);
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -1440,11 +1432,11 @@ int i40e_aq_set_phy_int_mask(struct i40e_hw *hw,
 int i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,
 			     struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_lb_mode *cmd =
-		(struct i40e_aqc_set_lb_mode *)&desc.params.raw;
+	struct i40e_aqc_set_lb_mode *cmd;
+	struct libie_aq_desc desc;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_set_lb_modes);
+	cmd = libie_aq_raw(&desc);
 	if (ena_lpbk) {
 		if (hw->nvm.version <= I40E_LEGACY_LOOPBACK_NVM_VER)
 			cmd->lb_mode = cpu_to_le16(I40E_AQ_LB_MAC_LOCAL_LEGACY);
@@ -1466,14 +1458,14 @@ int i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,
 int i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
 			  struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_phy_debug *cmd =
-		(struct i40e_aqc_set_phy_debug *)&desc.params.raw;
+	struct i40e_aqc_set_phy_debug *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_phy_debug);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->command_flags = cmd_flags;
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -1493,23 +1485,22 @@ int i40e_aq_add_vsi(struct i40e_hw *hw,
 		    struct i40e_vsi_context *vsi_ctx,
 		    struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_get_update_vsi *cmd =
-		(struct i40e_aqc_add_get_update_vsi *)&desc.params.raw;
-	struct i40e_aqc_add_get_update_vsi_completion *resp =
-		(struct i40e_aqc_add_get_update_vsi_completion *)
-		&desc.params.raw;
+	struct i40e_aqc_add_get_update_vsi_completion *resp;
+	struct i40e_aqc_add_get_update_vsi *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_add_vsi);
 
+	resp = libie_aq_raw(&desc);
+	cmd = libie_aq_raw(&desc);
 	cmd->uplink_seid = cpu_to_le16(vsi_ctx->uplink_seid);
 	cmd->connection_type = vsi_ctx->connection_type;
 	cmd->vf_id = vsi_ctx->vf_num;
 	cmd->vsi_flags = cpu_to_le16(vsi_ctx->flags);
 
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 
 	status = i40e_asq_send_command_atomic(hw, &desc, &vsi_ctx->info,
 					      sizeof(vsi_ctx->info),
@@ -1537,15 +1528,14 @@ int i40e_aq_set_default_vsi(struct i40e_hw *hw,
 			    u16 seid,
 			    struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
-		(struct i40e_aqc_set_vsi_promiscuous_modes *)
-		&desc.params.raw;
+	struct i40e_aqc_set_vsi_promiscuous_modes *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->promiscuous_flags = cpu_to_le16(I40E_AQC_SET_VSI_DEFAULT);
 	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_DEFAULT);
 	cmd->seid = cpu_to_le16(seid);
@@ -1565,15 +1555,14 @@ int i40e_aq_clear_default_vsi(struct i40e_hw *hw,
 			      u16 seid,
 			      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
-		(struct i40e_aqc_set_vsi_promiscuous_modes *)
-		&desc.params.raw;
+	struct i40e_aqc_set_vsi_promiscuous_modes *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->promiscuous_flags = cpu_to_le16(0);
 	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_DEFAULT);
 	cmd->seid = cpu_to_le16(seid);
@@ -1596,15 +1585,15 @@ int i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
 					struct i40e_asq_cmd_details *cmd_details,
 					bool rx_only_promisc)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
-		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
+	struct i40e_aqc_set_vsi_promiscuous_modes *cmd;
+	struct libie_aq_desc desc;
 	u16 flags = 0;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					i40e_aqc_opc_set_vsi_promiscuous_modes);
 
+	cmd = libie_aq_raw(&desc);
 	if (set) {
 		flags |= I40E_AQC_SET_VSI_PROMISC_UNICAST;
 		if (rx_only_promisc && i40e_is_aq_api_ver_ge(hw, 1, 5))
@@ -1635,15 +1624,15 @@ int i40e_aq_set_vsi_multicast_promiscuous(struct i40e_hw *hw,
 					  u16 seid, bool set,
 					  struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
-		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
+	struct i40e_aqc_set_vsi_promiscuous_modes *cmd;
+	struct libie_aq_desc desc;
 	u16 flags = 0;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					i40e_aqc_opc_set_vsi_promiscuous_modes);
 
+	cmd = libie_aq_raw(&desc);
 	if (set)
 		flags |= I40E_AQC_SET_VSI_PROMISC_MULTICAST;
 
@@ -1670,15 +1659,15 @@ int i40e_aq_set_vsi_mc_promisc_on_vlan(struct i40e_hw *hw,
 				       u16 vid,
 				       struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
-		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
+	struct i40e_aqc_set_vsi_promiscuous_modes *cmd;
+	struct libie_aq_desc desc;
 	u16 flags = 0;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
 
+	cmd = libie_aq_raw(&desc);
 	if (enable)
 		flags |= I40E_AQC_SET_VSI_PROMISC_MULTICAST;
 
@@ -1706,15 +1695,15 @@ int i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
 				       u16 vid,
 				       struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
-		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
+	struct i40e_aqc_set_vsi_promiscuous_modes *cmd;
+	struct libie_aq_desc desc;
 	u16 flags = 0;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
 
+	cmd = libie_aq_raw(&desc);
 	if (enable) {
 		flags |= I40E_AQC_SET_VSI_PROMISC_UNICAST;
 		if (i40e_is_aq_api_ver_ge(hw, 1, 5))
@@ -1747,9 +1736,8 @@ int i40e_aq_set_vsi_bc_promisc_on_vlan(struct i40e_hw *hw,
 				       u16 seid, bool enable, u16 vid,
 				       struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
-		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
+	struct i40e_aqc_set_vsi_promiscuous_modes *cmd;
+	struct libie_aq_desc desc;
 	u16 flags = 0;
 	int status;
 
@@ -1759,6 +1747,7 @@ int i40e_aq_set_vsi_bc_promisc_on_vlan(struct i40e_hw *hw,
 	if (enable)
 		flags |= I40E_AQC_SET_VSI_PROMISC_BROADCAST;
 
+	cmd = libie_aq_raw(&desc);
 	cmd->promiscuous_flags = cpu_to_le16(flags);
 	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_BROADCAST);
 	cmd->seid = cpu_to_le16(seid);
@@ -1782,14 +1771,14 @@ int i40e_aq_set_vsi_broadcast(struct i40e_hw *hw,
 			      u16 seid, bool set_filter,
 			      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
-		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
+	struct i40e_aqc_set_vsi_promiscuous_modes *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					i40e_aqc_opc_set_vsi_promiscuous_modes);
 
+	cmd = libie_aq_raw(&desc);
 	if (set_filter)
 		cmd->promiscuous_flags
 			    |= cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_BROADCAST);
@@ -1814,20 +1803,19 @@ int i40e_aq_get_vsi_params(struct i40e_hw *hw,
 			   struct i40e_vsi_context *vsi_ctx,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_get_update_vsi *cmd =
-		(struct i40e_aqc_add_get_update_vsi *)&desc.params.raw;
-	struct i40e_aqc_add_get_update_vsi_completion *resp =
-		(struct i40e_aqc_add_get_update_vsi_completion *)
-		&desc.params.raw;
+	struct i40e_aqc_add_get_update_vsi_completion *resp;
+	struct i40e_aqc_add_get_update_vsi *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_vsi_parameters);
 
+	resp = libie_aq_raw(&desc);
+	cmd = libie_aq_raw(&desc);
 	cmd->uplink_seid = cpu_to_le16(vsi_ctx->seid);
 
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 
 	status = i40e_asq_send_command(hw, &desc, &vsi_ctx->info,
 				    sizeof(vsi_ctx->info), NULL);
@@ -1856,19 +1844,18 @@ int i40e_aq_update_vsi_params(struct i40e_hw *hw,
 			      struct i40e_vsi_context *vsi_ctx,
 			      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_get_update_vsi *cmd =
-		(struct i40e_aqc_add_get_update_vsi *)&desc.params.raw;
-	struct i40e_aqc_add_get_update_vsi_completion *resp =
-		(struct i40e_aqc_add_get_update_vsi_completion *)
-		&desc.params.raw;
+	struct i40e_aqc_add_get_update_vsi_completion *resp;
+	struct i40e_aqc_add_get_update_vsi *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_update_vsi_parameters);
+	resp = libie_aq_raw(&desc);
+	cmd = libie_aq_raw(&desc);
 	cmd->uplink_seid = cpu_to_le16(vsi_ctx->seid);
 
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 
 	status = i40e_asq_send_command_atomic(hw, &desc, &vsi_ctx->info,
 					      sizeof(vsi_ctx->info),
@@ -1895,16 +1882,16 @@ int i40e_aq_get_switch_config(struct i40e_hw *hw,
 			      u16 buf_size, u16 *start_seid,
 			      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_switch_seid *scfg =
-		(struct i40e_aqc_switch_seid *)&desc.params.raw;
+	struct i40e_aqc_switch_seid *scfg;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_switch_config);
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	scfg = libie_aq_raw(&desc);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 	if (buf_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 	scfg->seid = cpu_to_le16(*start_seid);
 
 	status = i40e_asq_send_command(hw, &desc, buf, buf_size, cmd_details);
@@ -1929,13 +1916,13 @@ int i40e_aq_set_switch_config(struct i40e_hw *hw,
 			      u16 valid_flags, u8 mode,
 			      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_switch_config *scfg =
-		(struct i40e_aqc_set_switch_config *)&desc.params.raw;
+	struct i40e_aqc_set_switch_config *scfg;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_switch_config);
+	scfg = libie_aq_raw(&desc);
 	scfg->flags = cpu_to_le16(flags);
 	scfg->valid_flags = cpu_to_le16(valid_flags);
 	scfg->mode = mode;
@@ -1967,11 +1954,11 @@ int i40e_aq_get_firmware_version(struct i40e_hw *hw,
 				 u16 *api_major_version, u16 *api_minor_version,
 				 struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_get_version *resp =
-		(struct i40e_aqc_get_version *)&desc.params.raw;
+	struct i40e_aqc_get_version *resp;
+	struct libie_aq_desc desc;
 	int status;
 
+	resp = libie_aq_raw(&desc);
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_get_version);
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -2004,22 +1991,22 @@ int i40e_aq_send_driver_version(struct i40e_hw *hw,
 				struct i40e_driver_version *dv,
 				struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_driver_version *cmd =
-		(struct i40e_aqc_driver_version *)&desc.params.raw;
+	struct libie_aqc_driver_ver *cmd;
+	struct libie_aq_desc desc;
 	int status;
 	u16 len;
 
 	if (dv == NULL)
 		return -EINVAL;
 
+	cmd = libie_aq_raw(&desc);
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_driver_version);
 
-	desc.flags |= cpu_to_le16(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD);
-	cmd->driver_major_ver = dv->major_version;
-	cmd->driver_minor_ver = dv->minor_version;
-	cmd->driver_build_ver = dv->build_version;
-	cmd->driver_subbuild_ver = dv->subbuild_version;
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD);
+	cmd->major_ver = dv->major_version;
+	cmd->minor_ver = dv->minor_version;
+	cmd->build_ver = dv->build_version;
+	cmd->subbuild_ver = dv->subbuild_version;
 
 	len = 0;
 	while (len < sizeof(dv->driver_string) &&
@@ -2119,11 +2106,9 @@ int i40e_aq_add_veb(struct i40e_hw *hw, u16 uplink_seid,
 		    bool enable_stats,
 		    struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_veb *cmd =
-		(struct i40e_aqc_add_veb *)&desc.params.raw;
-	struct i40e_aqc_add_veb_completion *resp =
-		(struct i40e_aqc_add_veb_completion *)&desc.params.raw;
+	struct i40e_aqc_add_veb_completion *resp;
+	struct i40e_aqc_add_veb *cmd;
+	struct libie_aq_desc desc;
 	u16 veb_flags = 0;
 	int status;
 
@@ -2131,6 +2116,8 @@ int i40e_aq_add_veb(struct i40e_hw *hw, u16 uplink_seid,
 	if (!!uplink_seid != !!downlink_seid)
 		return -EINVAL;
 
+	resp = libie_aq_raw(&desc);
+	cmd = libie_aq_raw(&desc);
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_add_veb);
 
 	cmd->uplink_seid = cpu_to_le16(uplink_seid);
@@ -2177,15 +2164,14 @@ int i40e_aq_get_veb_parameters(struct i40e_hw *hw,
 			       u16 *vebs_used, u16 *vebs_free,
 			       struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_get_veb_parameters_completion *cmd_resp =
-		(struct i40e_aqc_get_veb_parameters_completion *)
-		&desc.params.raw;
+	struct i40e_aqc_get_veb_parameters_completion *cmd_resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (veb_seid == 0)
 		return -EINVAL;
 
+	cmd_resp = libie_aq_raw(&desc);
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_veb_parameters);
 	cmd_resp->seid = cpu_to_le16(veb_seid);
@@ -2227,10 +2213,9 @@ int i40e_aq_get_veb_parameters(struct i40e_hw *hw,
  **/
 static u16
 i40e_prepare_add_macvlan(struct i40e_aqc_add_macvlan_element_data *mv_list,
-			 struct i40e_aq_desc *desc, u16 count, u16 seid)
+			 struct libie_aq_desc *desc, u16 count, u16 seid)
 {
-	struct i40e_aqc_macvlan *cmd =
-		(struct i40e_aqc_macvlan *)&desc->params.raw;
+	struct i40e_aqc_macvlan *cmd = libie_aq_raw(desc);
 	u16 buf_size;
 	int i;
 
@@ -2248,9 +2233,9 @@ i40e_prepare_add_macvlan(struct i40e_aqc_add_macvlan_element_data *mv_list,
 			mv_list[i].flags |=
 			       cpu_to_le16(I40E_AQC_MACVLAN_ADD_USE_SHARED_MAC);
 
-	desc->flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc->flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	if (buf_size > I40E_AQ_LARGE_BUF)
-		desc->flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc->flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	return buf_size;
 }
@@ -2270,7 +2255,7 @@ i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
 		    struct i40e_aqc_add_macvlan_element_data *mv_list,
 		    u16 count, struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 buf_size;
 
 	if (count == 0 || !mv_list || !hw)
@@ -2301,9 +2286,9 @@ int
 i40e_aq_add_macvlan_v2(struct i40e_hw *hw, u16 seid,
 		       struct i40e_aqc_add_macvlan_element_data *mv_list,
 		       u16 count, struct i40e_asq_cmd_details *cmd_details,
-		       enum i40e_admin_queue_err *aq_status)
+		       enum libie_aq_err *aq_status)
 {
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 buf_size;
 
 	if (count == 0 || !mv_list || !hw)
@@ -2330,9 +2315,8 @@ i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
 		       struct i40e_aqc_remove_macvlan_element_data *mv_list,
 		       u16 count, struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_macvlan *cmd =
-		(struct i40e_aqc_macvlan *)&desc.params.raw;
+	struct i40e_aqc_macvlan *cmd;
+	struct libie_aq_desc desc;
 	u16 buf_size;
 	int status;
 
@@ -2343,14 +2327,15 @@ i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
 
 	/* prep the rest of the request */
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_remove_macvlan);
+	cmd = libie_aq_raw(&desc);
 	cmd->num_addresses = cpu_to_le16(count);
 	cmd->seid[0] = cpu_to_le16(I40E_AQC_MACVLAN_CMD_SEID_VALID | seid);
 	cmd->seid[1] = 0;
 	cmd->seid[2] = 0;
 
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	if (buf_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	status = i40e_asq_send_command_atomic(hw, &desc, mv_list, buf_size,
 					      cmd_details, true);
@@ -2377,10 +2362,10 @@ int
 i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
 			  struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			  u16 count, struct i40e_asq_cmd_details *cmd_details,
-			  enum i40e_admin_queue_err *aq_status)
+			  enum libie_aq_err *aq_status)
 {
 	struct i40e_aqc_macvlan *cmd;
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 buf_size;
 
 	if (count == 0 || !mv_list || !hw)
@@ -2390,15 +2375,15 @@ i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
 
 	/* prep the rest of the request */
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_remove_macvlan);
-	cmd = (struct i40e_aqc_macvlan *)&desc.params.raw;
+	cmd = libie_aq_raw(&desc);
 	cmd->num_addresses = cpu_to_le16(count);
 	cmd->seid[0] = cpu_to_le16(I40E_AQC_MACVLAN_CMD_SEID_VALID | seid);
 	cmd->seid[1] = 0;
 	cmd->seid[2] = 0;
 
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	if (buf_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	return i40e_asq_send_command_atomic_v2(hw, &desc, mv_list, buf_size,
 						 cmd_details, true, aq_status);
@@ -2420,21 +2405,21 @@ int i40e_aq_send_msg_to_vf(struct i40e_hw *hw, u16 vfid,
 			   u32 v_opcode, u32 v_retval, u8 *msg, u16 msglen,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_pf_vf_message *cmd =
-		(struct i40e_aqc_pf_vf_message *)&desc.params.raw;
+	struct i40e_aqc_pf_vf_message *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_send_msg_to_vf);
+	cmd = libie_aq_raw(&desc);
 	cmd->id = cpu_to_le32(vfid);
 	desc.cookie_high = cpu_to_le32(v_opcode);
 	desc.cookie_low = cpu_to_le32(v_retval);
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_SI);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_SI);
 	if (msglen) {
-		desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF |
-						I40E_AQ_FLAG_RD));
+		desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF |
+						LIBIE_AQ_FLAG_RD));
 		if (msglen > I40E_AQ_LARGE_BUF)
-			desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+			desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 		desc.datalen = cpu_to_le16(msglen);
 	}
 	status = i40e_asq_send_command(hw, &desc, msg, msglen, cmd_details);
@@ -2455,9 +2440,8 @@ int i40e_aq_debug_read_register(struct i40e_hw *hw,
 				u32 reg_addr, u64 *reg_val,
 				struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_debug_reg_read_write *cmd_resp =
-		(struct i40e_aqc_debug_reg_read_write *)&desc.params.raw;
+	struct i40e_aqc_debug_reg_read_write *cmd_resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (reg_val == NULL)
@@ -2465,6 +2449,7 @@ int i40e_aq_debug_read_register(struct i40e_hw *hw,
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_debug_read_reg);
 
+	cmd_resp = libie_aq_raw(&desc);
 	cmd_resp->address = cpu_to_le32(reg_addr);
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -2490,13 +2475,13 @@ int i40e_aq_debug_write_register(struct i40e_hw *hw,
 				 u32 reg_addr, u64 reg_val,
 				 struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_debug_reg_read_write *cmd =
-		(struct i40e_aqc_debug_reg_read_write *)&desc.params.raw;
+	struct i40e_aqc_debug_reg_read_write *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_debug_write_reg);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->address = cpu_to_le32(reg_addr);
 	cmd->value_high = cpu_to_le32((u32)(reg_val >> 32));
 	cmd->value_low = cpu_to_le32((u32)(reg_val & 0xFFFFFFFF));
@@ -2523,16 +2508,16 @@ int i40e_aq_request_resource(struct i40e_hw *hw,
 			     u8 sdp_number, u64 *timeout,
 			     struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_request_resource *cmd_resp =
-		(struct i40e_aqc_request_resource *)&desc.params.raw;
+	struct libie_aqc_req_res *cmd_resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_request_resource);
 
-	cmd_resp->resource_id = cpu_to_le16(resource);
+	cmd_resp = libie_aq_raw(&desc);
+	cmd_resp->res_id = cpu_to_le16(resource);
 	cmd_resp->access_type = cpu_to_le16(access);
-	cmd_resp->resource_number = cpu_to_le32(sdp_number);
+	cmd_resp->res_number = cpu_to_le32(sdp_number);
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
 	/* The completion specifies the maximum time in ms that the driver
@@ -2541,7 +2526,7 @@ int i40e_aq_request_resource(struct i40e_hw *hw,
 	 * busy return value and the timeout field indicates the maximum time
 	 * the current owner of the resource has to free it.
 	 */
-	if (!status || hw->aq.asq_last_status == I40E_AQ_RC_EBUSY)
+	if (!status || hw->aq.asq_last_status == LIBIE_AQ_RC_EBUSY)
 		*timeout = le32_to_cpu(cmd_resp->timeout);
 
 	return status;
@@ -2561,15 +2546,15 @@ int i40e_aq_release_resource(struct i40e_hw *hw,
 			     u8 sdp_number,
 			     struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_request_resource *cmd =
-		(struct i40e_aqc_request_resource *)&desc.params.raw;
+	struct libie_aqc_req_res *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_release_resource);
 
-	cmd->resource_id = cpu_to_le16(resource);
-	cmd->resource_number = cpu_to_le32(sdp_number);
+	cmd = libie_aq_raw(&desc);
+	cmd->res_id = cpu_to_le16(resource);
+	cmd->res_number = cpu_to_le32(sdp_number);
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
 
@@ -2593,9 +2578,8 @@ int i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
 		     bool last_command,
 		     struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_nvm_update *cmd =
-		(struct i40e_aqc_nvm_update *)&desc.params.raw;
+	struct i40e_aqc_nvm_update *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	/* In offset the highest byte must be zeroed. */
@@ -2606,6 +2590,7 @@ int i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_nvm_read);
 
+	cmd = libie_aq_raw(&desc);
 	/* If this is the last command in a series, set the proper flag. */
 	if (last_command)
 		cmd->command_flags |= I40E_AQ_NVM_LAST_CMD;
@@ -2613,9 +2598,9 @@ int i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
 	cmd->offset = cpu_to_le32(offset);
 	cmd->length = cpu_to_le16(length);
 
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 	if (length > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	status = i40e_asq_send_command(hw, &desc, data, length, cmd_details);
 
@@ -2638,9 +2623,8 @@ int i40e_aq_erase_nvm(struct i40e_hw *hw, u8 module_pointer,
 		      u32 offset, u16 length, bool last_command,
 		      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_nvm_update *cmd =
-		(struct i40e_aqc_nvm_update *)&desc.params.raw;
+	struct i40e_aqc_nvm_update *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	/* In offset the highest byte must be zeroed. */
@@ -2651,6 +2635,7 @@ int i40e_aq_erase_nvm(struct i40e_hw *hw, u8 module_pointer,
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_nvm_erase);
 
+	cmd = libie_aq_raw(&desc);
 	/* If this is the last command in a series, set the proper flag. */
 	if (last_command)
 		cmd->command_flags |= I40E_AQ_NVM_LAST_CMD;
@@ -2677,7 +2662,7 @@ static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
 				     u32 cap_count,
 				     enum i40e_admin_queue_opc list_type_opc)
 {
-	struct i40e_aqc_list_capabilities_element_resp *cap;
+	struct libie_aqc_list_caps_elem *cap;
 	u32 valid_functions, num_functions;
 	u32 number, logical_id, phys_id;
 	struct i40e_hw_capabilities *p;
@@ -2686,7 +2671,7 @@ static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
 	int status;
 	u32 i = 0;
 
-	cap = (struct i40e_aqc_list_capabilities_element_resp *) buff;
+	cap = (struct libie_aqc_list_caps_elem *)buff;
 
 	if (list_type_opc == i40e_aqc_opc_list_dev_capabilities)
 		p = &hw->dev_caps;
@@ -2696,17 +2681,17 @@ static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
 		return;
 
 	for (i = 0; i < cap_count; i++, cap++) {
-		id = le16_to_cpu(cap->id);
+		id = le16_to_cpu(cap->cap);
 		number = le32_to_cpu(cap->number);
 		logical_id = le32_to_cpu(cap->logical_id);
 		phys_id = le32_to_cpu(cap->phys_id);
-		major_rev = cap->major_rev;
+		major_rev = cap->major_ver;
 
 		switch (id) {
-		case I40E_AQ_CAP_ID_SWITCH_MODE:
+		case LIBIE_AQC_CAPS_SWITCH_MODE:
 			p->switch_mode = number;
 			break;
-		case I40E_AQ_CAP_ID_MNG_MODE:
+		case LIBIE_AQC_CAPS_MNG_MODE:
 			p->management_mode = number;
 			if (major_rev > 1) {
 				p->mng_protocols_over_mctp = logical_id;
@@ -2717,76 +2702,76 @@ static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
 				p->mng_protocols_over_mctp = 0;
 			}
 			break;
-		case I40E_AQ_CAP_ID_NPAR_ACTIVE:
+		case LIBIE_AQC_CAPS_NPAR_ACTIVE:
 			p->npar_enable = number;
 			break;
-		case I40E_AQ_CAP_ID_OS2BMC_CAP:
+		case LIBIE_AQC_CAPS_OS2BMC_CAP:
 			p->os2bmc = number;
 			break;
-		case I40E_AQ_CAP_ID_FUNCTIONS_VALID:
+		case LIBIE_AQC_CAPS_VALID_FUNCTIONS:
 			p->valid_functions = number;
 			break;
-		case I40E_AQ_CAP_ID_SRIOV:
+		case LIBIE_AQC_CAPS_SRIOV:
 			if (number == 1)
 				p->sr_iov_1_1 = true;
 			break;
-		case I40E_AQ_CAP_ID_VF:
+		case LIBIE_AQC_CAPS_VF:
 			p->num_vfs = number;
 			p->vf_base_id = logical_id;
 			break;
-		case I40E_AQ_CAP_ID_VMDQ:
+		case LIBIE_AQC_CAPS_VMDQ:
 			if (number == 1)
 				p->vmdq = true;
 			break;
-		case I40E_AQ_CAP_ID_8021QBG:
+		case LIBIE_AQC_CAPS_8021QBG:
 			if (number == 1)
 				p->evb_802_1_qbg = true;
 			break;
-		case I40E_AQ_CAP_ID_8021QBR:
+		case LIBIE_AQC_CAPS_8021QBR:
 			if (number == 1)
 				p->evb_802_1_qbh = true;
 			break;
-		case I40E_AQ_CAP_ID_VSI:
+		case LIBIE_AQC_CAPS_VSI:
 			p->num_vsis = number;
 			break;
-		case I40E_AQ_CAP_ID_DCB:
+		case LIBIE_AQC_CAPS_DCB:
 			if (number == 1) {
 				p->dcb = true;
 				p->enabled_tcmap = logical_id;
 				p->maxtc = phys_id;
 			}
 			break;
-		case I40E_AQ_CAP_ID_FCOE:
+		case LIBIE_AQC_CAPS_FCOE:
 			if (number == 1)
 				p->fcoe = true;
 			break;
-		case I40E_AQ_CAP_ID_ISCSI:
+		case LIBIE_AQC_CAPS_ISCSI:
 			if (number == 1)
 				p->iscsi = true;
 			break;
-		case I40E_AQ_CAP_ID_RSS:
+		case LIBIE_AQC_CAPS_RSS:
 			p->rss = true;
 			p->rss_table_size = number;
 			p->rss_table_entry_width = logical_id;
 			break;
-		case I40E_AQ_CAP_ID_RXQ:
+		case LIBIE_AQC_CAPS_RXQS:
 			p->num_rx_qp = number;
 			p->base_queue = phys_id;
 			break;
-		case I40E_AQ_CAP_ID_TXQ:
+		case LIBIE_AQC_CAPS_TXQS:
 			p->num_tx_qp = number;
 			p->base_queue = phys_id;
 			break;
-		case I40E_AQ_CAP_ID_MSIX:
+		case LIBIE_AQC_CAPS_MSIX:
 			p->num_msix_vectors = number;
 			i40e_debug(hw, I40E_DEBUG_INIT,
 				   "HW Capability: MSIX vector count = %d\n",
 				   p->num_msix_vectors);
 			break;
-		case I40E_AQ_CAP_ID_VF_MSIX:
+		case LIBIE_AQC_CAPS_VF_MSIX:
 			p->num_msix_vectors_vf = number;
 			break;
-		case I40E_AQ_CAP_ID_FLEX10:
+		case LIBIE_AQC_CAPS_FLEX10:
 			if (major_rev == 1) {
 				if (number == 1) {
 					p->flex10_enable = true;
@@ -2802,42 +2787,42 @@ static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
 			p->flex10_mode = logical_id;
 			p->flex10_status = phys_id;
 			break;
-		case I40E_AQ_CAP_ID_CEM:
+		case LIBIE_AQC_CAPS_CEM:
 			if (number == 1)
 				p->mgmt_cem = true;
 			break;
-		case I40E_AQ_CAP_ID_IWARP:
+		case LIBIE_AQC_CAPS_RDMA:
 			if (number == 1)
 				p->iwarp = true;
 			break;
-		case I40E_AQ_CAP_ID_LED:
+		case LIBIE_AQC_CAPS_LED:
 			if (phys_id < I40E_HW_CAP_MAX_GPIO)
 				p->led[phys_id] = true;
 			break;
-		case I40E_AQ_CAP_ID_SDP:
+		case LIBIE_AQC_CAPS_SDP:
 			if (phys_id < I40E_HW_CAP_MAX_GPIO)
 				p->sdp[phys_id] = true;
 			break;
-		case I40E_AQ_CAP_ID_MDIO:
+		case LIBIE_AQC_CAPS_MDIO:
 			if (number == 1) {
 				p->mdio_port_num = phys_id;
 				p->mdio_port_mode = logical_id;
 			}
 			break;
-		case I40E_AQ_CAP_ID_1588:
+		case LIBIE_AQC_CAPS_1588:
 			if (number == 1)
 				p->ieee_1588 = true;
 			break;
-		case I40E_AQ_CAP_ID_FLOW_DIRECTOR:
+		case LIBIE_AQC_CAPS_FD:
 			p->fd = true;
 			p->fd_filters_guaranteed = number;
 			p->fd_filters_best_effort = logical_id;
 			break;
-		case I40E_AQ_CAP_ID_WSR_PROT:
+		case LIBIE_AQC_CAPS_WSR_PROT:
 			p->wr_csr_prot = (u64)number;
 			p->wr_csr_prot |= (u64)logical_id << 32;
 			break;
-		case I40E_AQ_CAP_ID_NVM_MGMT:
+		case LIBIE_AQC_CAPS_NVM_MGMT:
 			if (number & I40E_NVM_MGMT_SEC_REV_DISABLED)
 				p->sec_rev_disabled = true;
 			if (number & I40E_NVM_MGMT_UPDATE_DISABLED)
@@ -2929,11 +2914,11 @@ int i40e_aq_discover_capabilities(struct i40e_hw *hw,
 				  enum i40e_admin_queue_opc list_type_opc,
 				  struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aqc_list_capabilites *cmd;
-	struct i40e_aq_desc desc;
+	struct libie_aqc_list_caps *cmd;
+	struct libie_aq_desc desc;
 	int status = 0;
 
-	cmd = (struct i40e_aqc_list_capabilites *)&desc.params.raw;
+	cmd = libie_aq_raw(&desc);
 
 	if (list_type_opc != i40e_aqc_opc_list_func_capabilities &&
 		list_type_opc != i40e_aqc_opc_list_dev_capabilities) {
@@ -2943,9 +2928,9 @@ int i40e_aq_discover_capabilities(struct i40e_hw *hw,
 
 	i40e_fill_default_direct_cmd_desc(&desc, list_type_opc);
 
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 	if (buff_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	status = i40e_asq_send_command(hw, &desc, buff, buff_size, cmd_details);
 	*data_size = le16_to_cpu(desc.datalen);
@@ -2978,9 +2963,8 @@ int i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
 		       bool last_command, u8 preservation_flags,
 		       struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_nvm_update *cmd =
-		(struct i40e_aqc_nvm_update *)&desc.params.raw;
+	struct i40e_aqc_nvm_update *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	/* In offset the highest byte must be zeroed. */
@@ -2991,6 +2975,7 @@ int i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_nvm_update);
 
+	cmd = libie_aq_raw(&desc);
 	/* If this is the last command in a series, set the proper flag. */
 	if (last_command)
 		cmd->command_flags |= I40E_AQ_NVM_LAST_CMD;
@@ -3008,9 +2993,9 @@ int i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
 	cmd->offset = cpu_to_le32(offset);
 	cmd->length = cpu_to_le16(length);
 
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	if (length > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	status = i40e_asq_send_command(hw, &desc, data, length, cmd_details);
 
@@ -3036,11 +3021,9 @@ int i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
 			 u16 *local_len, u16 *remote_len,
 			 struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_lldp_get_mib *cmd =
-		(struct i40e_aqc_lldp_get_mib *)&desc.params.raw;
-	struct i40e_aqc_lldp_get_mib *resp =
-		(struct i40e_aqc_lldp_get_mib *)&desc.params.raw;
+	struct i40e_aqc_lldp_get_mib *resp;
+	struct i40e_aqc_lldp_get_mib *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (buff_size == 0 || !buff)
@@ -3048,16 +3031,18 @@ int i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_get_mib);
 	/* Indirect Command */
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 
+	resp = libie_aq_raw(&desc);
+	cmd = libie_aq_raw(&desc);
 	cmd->type = mib_type & I40E_AQ_LLDP_MIB_TYPE_MASK;
 	cmd->type |= FIELD_PREP(I40E_AQ_LLDP_BRIDGE_TYPE_MASK, bridge_type);
 
 	desc.datalen = cpu_to_le16(buff_size);
 
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 	if (buff_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	status = i40e_asq_send_command(hw, &desc, buff, buff_size, cmd_details);
 	if (!status) {
@@ -3086,19 +3071,19 @@ i40e_aq_set_lldp_mib(struct i40e_hw *hw,
 		     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aqc_lldp_set_local_mib *cmd;
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = (struct i40e_aqc_lldp_set_local_mib *)&desc.params.raw;
+	cmd = libie_aq_raw(&desc);
 	if (buff_size == 0 || !buff)
 		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_lldp_set_local_mib);
 	/* Indirect Command */
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	if (buff_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 	desc.datalen = cpu_to_le16(buff_size);
 
 	cmd->type = mib_type;
@@ -3123,13 +3108,13 @@ int i40e_aq_cfg_lldp_mib_change_event(struct i40e_hw *hw,
 				      bool enable_update,
 				      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_lldp_update_mib *cmd =
-		(struct i40e_aqc_lldp_update_mib *)&desc.params.raw;
+	struct i40e_aqc_lldp_update_mib *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_update_mib);
 
+	cmd = libie_aq_raw(&desc);
 	if (!enable_update)
 		cmd->command |= I40E_AQ_LLDP_MIB_UPDATE_DISABLE;
 
@@ -3151,13 +3136,13 @@ int i40e_aq_stop_lldp(struct i40e_hw *hw, bool shutdown_agent,
 		      bool persist,
 		      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_lldp_stop *cmd =
-		(struct i40e_aqc_lldp_stop *)&desc.params.raw;
+	struct i40e_aqc_lldp_stop *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_stop);
 
+	cmd = libie_aq_raw(&desc);
 	if (shutdown_agent)
 		cmd->command |= I40E_AQ_LLDP_AGENT_SHUTDOWN;
 
@@ -3185,13 +3170,13 @@ int i40e_aq_stop_lldp(struct i40e_hw *hw, bool shutdown_agent,
 int i40e_aq_start_lldp(struct i40e_hw *hw, bool persist,
 		       struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_lldp_start *cmd =
-		(struct i40e_aqc_lldp_start *)&desc.params.raw;
+	struct i40e_aqc_lldp_start *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_start);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->command = I40E_AQ_LLDP_AGENT_START;
 
 	if (persist) {
@@ -3218,9 +3203,8 @@ int
 i40e_aq_set_dcb_parameters(struct i40e_hw *hw, bool dcb_enable,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_set_dcb_parameters *cmd =
-		(struct i40e_aqc_set_dcb_parameters *)&desc.params.raw;
+	struct i40e_aqc_set_dcb_parameters *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (!test_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps))
@@ -3229,6 +3213,7 @@ i40e_aq_set_dcb_parameters(struct i40e_hw *hw, bool dcb_enable,
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_dcb_parameters);
 
+	cmd = libie_aq_raw(&desc);
 	if (dcb_enable) {
 		cmd->valid_flags = I40E_DCB_VALID;
 		cmd->command = I40E_AQ_DCB_SET_AGENT;
@@ -3251,7 +3236,7 @@ int i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
 			       void *buff, u16 buff_size,
 			       struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (buff_size == 0 || !buff)
@@ -3259,7 +3244,7 @@ int i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_get_cee_dcb_cfg);
 
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 	status = i40e_asq_send_command(hw, &desc, (void *)buff, buff_size,
 				       cmd_details);
 
@@ -3283,15 +3268,15 @@ int i40e_aq_add_udp_tunnel(struct i40e_hw *hw,
 			   u8 *filter_index,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_udp_tunnel *cmd =
-		(struct i40e_aqc_add_udp_tunnel *)&desc.params.raw;
-	struct i40e_aqc_del_udp_tunnel_completion *resp =
-		(struct i40e_aqc_del_udp_tunnel_completion *)&desc.params.raw;
+	struct i40e_aqc_del_udp_tunnel_completion *resp;
+	struct i40e_aqc_add_udp_tunnel *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_add_udp_tunnel);
 
+	resp = libie_aq_raw(&desc);
+	cmd = libie_aq_raw(&desc);
 	cmd->udp_port = cpu_to_le16(udp_port);
 	cmd->protocol_type = protocol_index;
 
@@ -3312,13 +3297,13 @@ int i40e_aq_add_udp_tunnel(struct i40e_hw *hw,
 int i40e_aq_del_udp_tunnel(struct i40e_hw *hw, u8 index,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_remove_udp_tunnel *cmd =
-		(struct i40e_aqc_remove_udp_tunnel *)&desc.params.raw;
+	struct i40e_aqc_remove_udp_tunnel *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_del_udp_tunnel);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->index = index;
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -3337,9 +3322,8 @@ int i40e_aq_del_udp_tunnel(struct i40e_hw *hw, u8 index,
 int i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_switch_seid *cmd =
-		(struct i40e_aqc_switch_seid *)&desc.params.raw;
+	struct i40e_aqc_switch_seid *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (seid == 0)
@@ -3347,6 +3331,7 @@ int i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_delete_element);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->seid = cpu_to_le16(seid);
 
 	status = i40e_asq_send_command_atomic(hw, &desc, NULL, 0,
@@ -3367,7 +3352,7 @@ int i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
 int i40e_aq_dcb_updated(struct i40e_hw *hw,
 			struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_dcb_updated);
@@ -3393,9 +3378,8 @@ static int i40e_aq_tx_sched_cmd(struct i40e_hw *hw, u16 seid,
 				enum i40e_admin_queue_opc opcode,
 				struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_tx_sched_ind *cmd =
-		(struct i40e_aqc_tx_sched_ind *)&desc.params.raw;
+	struct i40e_aqc_tx_sched_ind *cmd;
+	struct libie_aq_desc desc;
 	int status;
 	bool cmd_param_flag = false;
 
@@ -3422,12 +3406,13 @@ static int i40e_aq_tx_sched_cmd(struct i40e_hw *hw, u16 seid,
 
 	i40e_fill_default_direct_cmd_desc(&desc, opcode);
 
+	cmd = libie_aq_raw(&desc);
 	/* Indirect command */
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 	if (cmd_param_flag)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_RD);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
 	if (buff_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	desc.datalen = cpu_to_le16(buff_size);
 
@@ -3450,14 +3435,14 @@ int i40e_aq_config_vsi_bw_limit(struct i40e_hw *hw,
 				u16 seid, u16 credit, u8 max_credit,
 				struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_configure_vsi_bw_limit *cmd =
-		(struct i40e_aqc_configure_vsi_bw_limit *)&desc.params.raw;
+	struct i40e_aqc_configure_vsi_bw_limit *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_configure_vsi_bw_limit);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->vsi_seid = cpu_to_le16(seid);
 	cmd->credit = cpu_to_le16(credit);
 	cmd->max_credit = max_credit;
@@ -3785,18 +3770,16 @@ int i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
 					  struct i40e_control_filter_stats *stats,
 					  struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_remove_control_packet_filter *cmd =
-		(struct i40e_aqc_add_remove_control_packet_filter *)
-		&desc.params.raw;
-	struct i40e_aqc_add_remove_control_packet_filter_completion *resp =
-		(struct i40e_aqc_add_remove_control_packet_filter_completion *)
-		&desc.params.raw;
+	struct i40e_aqc_add_remove_control_packet_filter_completion *resp;
+	struct i40e_aqc_add_remove_control_packet_filter *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (vsi_seid == 0)
 		return -EINVAL;
 
+	resp = libie_aq_raw(&desc);
+	cmd = libie_aq_raw(&desc);
 	if (is_add) {
 		i40e_fill_default_direct_cmd_desc(&desc,
 				i40e_aqc_opc_add_control_packet_filter);
@@ -3864,15 +3847,15 @@ static int i40e_aq_alternate_read(struct i40e_hw *hw,
 				  u32 reg_addr0, u32 *reg_val0,
 				  u32 reg_addr1, u32 *reg_val1)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_alternate_write *cmd_resp =
-		(struct i40e_aqc_alternate_write *)&desc.params.raw;
+	struct i40e_aqc_alternate_write *cmd_resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (!reg_val0)
 		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_alternate_read);
+	cmd_resp = libie_aq_raw(&desc);
 	cmd_resp->address0 = cpu_to_le32(reg_addr0);
 	cmd_resp->address1 = cpu_to_le32(reg_addr1);
 
@@ -3900,10 +3883,10 @@ int i40e_aq_suspend_port_tx(struct i40e_hw *hw, u16 seid,
 			    struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aqc_tx_sched_ind *cmd;
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = (struct i40e_aqc_tx_sched_ind *)&desc.params.raw;
+	cmd = libie_aq_raw(&desc);
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_suspend_port_tx);
 	cmd->vsi_seid = cpu_to_le16(seid);
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -3921,7 +3904,7 @@ int i40e_aq_suspend_port_tx(struct i40e_hw *hw, u16 seid,
 int i40e_aq_resume_port_tx(struct i40e_hw *hw,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_resume_port_tx);
@@ -3998,11 +3981,9 @@ int i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
 		       u8 *ret_next_table, u32 *ret_next_index,
 		       struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_debug_dump_internals *cmd =
-		(struct i40e_aqc_debug_dump_internals *)&desc.params.raw;
-	struct i40e_aqc_debug_dump_internals *resp =
-		(struct i40e_aqc_debug_dump_internals *)&desc.params.raw;
+	struct i40e_aqc_debug_dump_internals *resp;
+	struct i40e_aqc_debug_dump_internals *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (buff_size == 0 || !buff)
@@ -4010,10 +3991,12 @@ int i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_debug_dump_internals);
+	resp = libie_aq_raw(&desc);
+	cmd = libie_aq_raw(&desc);
 	/* Indirect Command */
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 	if (buff_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	cmd->cluster_id = cluster_id;
 	cmd->table_id = table_id;
@@ -4090,18 +4073,18 @@ i40e_aq_configure_partition_bw(struct i40e_hw *hw,
 			       struct i40e_asq_cmd_details *cmd_details)
 {
 	u16 bwd_size = sizeof(*bw_data);
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_configure_partition_bw);
 
 	/* Indirect command */
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
 
 	if (bwd_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	desc.datalen = cpu_to_le16(bwd_size);
 
@@ -4533,9 +4516,8 @@ int i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
 				 u32 reg_addr, u32 *reg_val,
 				 struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_rx_ctl_reg_read_write *cmd_resp =
-		(struct i40e_aqc_rx_ctl_reg_read_write *)&desc.params.raw;
+	struct i40e_aqc_rx_ctl_reg_read_write *cmd_resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (!reg_val)
@@ -4543,6 +4525,7 @@ int i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_rx_ctl_reg_read);
 
+	cmd_resp = libie_aq_raw(&desc);
 	cmd_resp->address = cpu_to_le32(reg_addr);
 
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
@@ -4571,7 +4554,7 @@ u32 i40e_read_rx_ctl(struct i40e_hw *hw, u32 reg_addr)
 	if (!use_register) {
 do_retry:
 		status = i40e_aq_rx_ctl_read_register(hw, reg_addr, &val, NULL);
-		if (hw->aq.asq_last_status == I40E_AQ_RC_EAGAIN && retry) {
+		if (hw->aq.asq_last_status == LIBIE_AQ_RC_EAGAIN && retry) {
 			usleep_range(1000, 2000);
 			retry--;
 			goto do_retry;
@@ -4599,13 +4582,13 @@ int i40e_aq_rx_ctl_write_register(struct i40e_hw *hw,
 				  u32 reg_addr, u32 reg_val,
 				  struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_rx_ctl_reg_read_write *cmd =
-		(struct i40e_aqc_rx_ctl_reg_read_write *)&desc.params.raw;
+	struct i40e_aqc_rx_ctl_reg_read_write *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_rx_ctl_reg_write);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->address = cpu_to_le32(reg_addr);
 	cmd->value = cpu_to_le32(reg_val);
 
@@ -4633,7 +4616,7 @@ void i40e_write_rx_ctl(struct i40e_hw *hw, u32 reg_addr, u32 reg_val)
 do_retry:
 		status = i40e_aq_rx_ctl_write_register(hw, reg_addr,
 						       reg_val, NULL);
-		if (hw->aq.asq_last_status == I40E_AQ_RC_EAGAIN && retry) {
+		if (hw->aq.asq_last_status == LIBIE_AQ_RC_EAGAIN && retry) {
 			usleep_range(1000, 2000);
 			retry--;
 			goto do_retry;
@@ -4692,14 +4675,14 @@ int i40e_aq_set_phy_register_ext(struct i40e_hw *hw,
 				 u32 reg_addr, u32 reg_val,
 				 struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_phy_register_access *cmd =
-		(struct i40e_aqc_phy_register_access *)&desc.params.raw;
+	struct i40e_aqc_phy_register_access *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_phy_register);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->phy_interface = phy_select;
 	cmd->dev_address = dev_addr;
 	cmd->reg_address = cpu_to_le32(reg_addr);
@@ -4737,14 +4720,14 @@ int i40e_aq_get_phy_register_ext(struct i40e_hw *hw,
 				 u32 reg_addr, u32 *reg_val,
 				 struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_phy_register_access *cmd =
-		(struct i40e_aqc_phy_register_access *)&desc.params.raw;
+	struct i40e_aqc_phy_register_access *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_phy_register);
 
+	cmd = libie_aq_raw(&desc);
 	cmd->phy_interface = phy_select;
 	cmd->dev_address = dev_addr;
 	cmd->reg_address = cpu_to_le32(reg_addr);
@@ -4776,19 +4759,18 @@ int i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
 		      u32 *error_offset, u32 *error_info,
 		      struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_write_personalization_profile *cmd =
-		(struct i40e_aqc_write_personalization_profile *)
-		&desc.params.raw;
+	struct i40e_aqc_write_personalization_profile *cmd;
 	struct i40e_aqc_write_ddp_resp *resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_write_personalization_profile);
 
-	desc.flags |= cpu_to_le16(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD);
+	cmd = libie_aq_raw(&desc);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD);
 	if (buff_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 
 	desc.datalen = cpu_to_le16(buff_size);
 
@@ -4796,7 +4778,7 @@ int i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
 
 	status = i40e_asq_send_command(hw, &desc, buff, buff_size, cmd_details);
 	if (!status) {
-		resp = (struct i40e_aqc_write_ddp_resp *)&desc.params.raw;
+		resp = libie_aq_raw(&desc);
 		if (error_offset)
 			*error_offset = le32_to_cpu(resp->error_offset);
 		if (error_info)
@@ -4818,17 +4800,17 @@ int i40e_aq_get_ddp_list(struct i40e_hw *hw, void *buff,
 			 u16 buff_size, u8 flags,
 			 struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_get_applied_profiles *cmd =
-		(struct i40e_aqc_get_applied_profiles *)&desc.params.raw;
+	struct i40e_aqc_get_applied_profiles *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_personalization_profile_list);
 
-	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+	cmd = libie_aq_raw(&desc);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 	if (buff_size > I40E_AQ_LARGE_BUF)
-		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+		desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 	desc.datalen = cpu_to_le16(buff_size);
 
 	cmd->flags = flags;
@@ -4890,7 +4872,7 @@ i40e_find_segment_in_package(u32 segment_type,
 static int i40e_ddp_exec_aq_section(struct i40e_hw *hw,
 				    struct i40e_profile_aq_section *aq)
 {
-	struct i40e_aq_desc desc;
+	struct libie_aq_desc desc;
 	u8 *msg = NULL;
 	u16 msglen;
 	int status;
@@ -4901,10 +4883,10 @@ static int i40e_ddp_exec_aq_section(struct i40e_hw *hw,
 
 	msglen = aq->datalen;
 	if (msglen) {
-		desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF |
-						I40E_AQ_FLAG_RD));
+		desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF |
+						LIBIE_AQ_FLAG_RD));
 		if (msglen > I40E_AQ_LARGE_BUF)
-			desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+			desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 		desc.datalen = cpu_to_le16(msglen);
 		msg = &aq->data[0];
 	}
@@ -5121,18 +5103,18 @@ i40e_aq_add_cloud_filters(struct i40e_hw *hw, u16 seid,
 			  struct i40e_aqc_cloud_filters_element_data *filters,
 			  u8 filter_count)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_remove_cloud_filters *cmd =
-	(struct i40e_aqc_add_remove_cloud_filters *)&desc.params.raw;
+	struct i40e_aqc_add_remove_cloud_filters *cmd;
+	struct libie_aq_desc desc;
 	u16 buff_len;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_add_cloud_filters);
 
+	cmd = libie_aq_raw(&desc);
 	buff_len = filter_count * sizeof(*filters);
 	desc.datalen = cpu_to_le16(buff_len);
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	cmd->num_filters = filter_count;
 	cmd->seid = cpu_to_le16(seid);
 
@@ -5158,9 +5140,8 @@ i40e_aq_add_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 			     struct i40e_aqc_cloud_filters_element_bb *filters,
 			     u8 filter_count)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_remove_cloud_filters *cmd =
-	(struct i40e_aqc_add_remove_cloud_filters *)&desc.params.raw;
+	struct i40e_aqc_add_remove_cloud_filters *cmd;
+	struct libie_aq_desc desc;
 	u16 buff_len;
 	int status;
 	int i;
@@ -5168,9 +5149,10 @@ i40e_aq_add_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_add_cloud_filters);
 
+	cmd = libie_aq_raw(&desc);
 	buff_len = filter_count * sizeof(*filters);
 	desc.datalen = cpu_to_le16(buff_len);
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	cmd->num_filters = filter_count;
 	cmd->seid = cpu_to_le16(seid);
 	cmd->big_buffer_flag = I40E_AQC_ADD_CLOUD_CMD_BB;
@@ -5214,18 +5196,18 @@ i40e_aq_rem_cloud_filters(struct i40e_hw *hw, u16 seid,
 			  struct i40e_aqc_cloud_filters_element_data *filters,
 			  u8 filter_count)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_remove_cloud_filters *cmd =
-	(struct i40e_aqc_add_remove_cloud_filters *)&desc.params.raw;
+	struct i40e_aqc_add_remove_cloud_filters *cmd;
+	struct libie_aq_desc desc;
 	u16 buff_len;
 	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_remove_cloud_filters);
 
+	cmd = libie_aq_raw(&desc);
 	buff_len = filter_count * sizeof(*filters);
 	desc.datalen = cpu_to_le16(buff_len);
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	cmd->num_filters = filter_count;
 	cmd->seid = cpu_to_le16(seid);
 
@@ -5251,9 +5233,8 @@ i40e_aq_rem_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 			     struct i40e_aqc_cloud_filters_element_bb *filters,
 			     u8 filter_count)
 {
-	struct i40e_aq_desc desc;
-	struct i40e_aqc_add_remove_cloud_filters *cmd =
-	(struct i40e_aqc_add_remove_cloud_filters *)&desc.params.raw;
+	struct i40e_aqc_add_remove_cloud_filters *cmd;
+	struct libie_aq_desc desc;
 	u16 buff_len;
 	int status;
 	int i;
@@ -5261,9 +5242,10 @@ i40e_aq_rem_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_remove_cloud_filters);
 
+	cmd = libie_aq_raw(&desc);
 	buff_len = filter_count * sizeof(*filters);
 	desc.datalen = cpu_to_le16(buff_len);
-	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
+	desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_RD));
 	cmd->num_filters = filter_count;
 	cmd->seid = cpu_to_le16(seid);
 	cmd->big_buffer_flag = I40E_AQC_ADD_CLOUD_CMD_BB;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 352e957443fd..9e0c9597aeb9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -750,7 +750,7 @@ static int i40e_get_ieee_dcb_config(struct i40e_hw *hw)
 				     I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE,
 				     &hw->remote_dcbx_config);
 	/* Don't treat ENOENT as an error for Remote MIBs */
-	if (hw->aq.asq_last_status == I40E_AQ_RC_ENOENT)
+	if (hw->aq.asq_last_status == LIBIE_AQ_RC_ENOENT)
 		ret = 0;
 
 out:
@@ -799,7 +799,7 @@ int i40e_get_dcb_config(struct i40e_hw *hw)
 	}
 
 	/* CEE mode not enabled try querying IEEE data */
-	if (hw->aq.asq_last_status == I40E_AQ_RC_ENOENT)
+	if (hw->aq.asq_last_status == LIBIE_AQ_RC_ENOENT)
 		return i40e_get_ieee_dcb_config(hw);
 
 	if (ret)
@@ -816,7 +816,7 @@ int i40e_get_dcb_config(struct i40e_hw *hw)
 				     I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE,
 				     &hw->remote_dcbx_config);
 	/* Don't treat ENOENT as an error for Remote MIBs */
-	if (hw->aq.asq_last_status == I40E_AQ_RC_ENOENT)
+	if (hw->aq.asq_last_status == LIBIE_AQ_RC_ENOENT)
 		ret = 0;
 
 out:
@@ -925,11 +925,11 @@ i40e_get_fw_lldp_status(struct i40e_hw *hw,
 
 	if (!ret) {
 		*lldp_status = I40E_GET_FW_LLDP_STATUS_ENABLED;
-	} else if (hw->aq.asq_last_status == I40E_AQ_RC_ENOENT) {
+	} else if (hw->aq.asq_last_status == LIBIE_AQ_RC_ENOENT) {
 		/* MIB is not available yet but the agent is running */
 		*lldp_status = I40E_GET_FW_LLDP_STATUS_ENABLED;
 		ret = 0;
-	} else if (hw->aq.asq_last_status == I40E_AQ_RC_EPERM) {
+	} else if (hw->aq.asq_last_status == LIBIE_AQ_RC_EPERM) {
 		*lldp_status = I40E_GET_FW_LLDP_STATUS_DISABLED;
 		ret = 0;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 6cd9da662ae1..6cd6f23d42a6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -489,7 +489,7 @@ static void i40e_dbg_dump_aq_desc(struct i40e_pf *pf)
 	dev_info(&pf->pdev->dev, "AdminQ Tx Ring\n");
 	ring = &(hw->aq.asq);
 	for (i = 0; i < ring->count; i++) {
-		struct i40e_aq_desc *d = I40E_ADMINQ_DESC(*ring, i);
+		struct libie_aq_desc *d = I40E_ADMINQ_DESC(*ring, i);
 
 		dev_info(&pf->pdev->dev,
 			 "   at[%02d] flags=0x%04x op=0x%04x dlen=0x%04x ret=0x%04x cookie_h=0x%08x cookie_l=0x%08x\n",
@@ -502,7 +502,7 @@ static void i40e_dbg_dump_aq_desc(struct i40e_pf *pf)
 	dev_info(&pf->pdev->dev, "AdminQ Rx Ring\n");
 	ring = &(hw->aq.arq);
 	for (i = 0; i < ring->count; i++) {
-		struct i40e_aq_desc *d = I40E_ADMINQ_DESC(*ring, i);
+		struct libie_aq_desc *d = I40E_ADMINQ_DESC(*ring, i);
 
 		dev_info(&pf->pdev->dev,
 			 "   ar[%02d] flags=0x%04x op=0x%04x dlen=0x%04x ret=0x%04x cookie_h=0x%08x cookie_l=0x%08x\n",
@@ -1268,10 +1268,10 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			dev_info(&pf->pdev->dev, "clear_stats vsi [seid] or clear_stats port\n");
 		}
 	} else if (strncmp(cmd_buf, "send aq_cmd", 11) == 0) {
-		struct i40e_aq_desc *desc;
+		struct libie_aq_desc *desc;
 		int ret;
 
-		desc = kzalloc(sizeof(struct i40e_aq_desc), GFP_KERNEL);
+		desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 		if (!desc)
 			goto command_write_done;
 		cnt = sscanf(&cmd_buf[11],
@@ -1279,10 +1279,10 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			     &desc->flags,
 			     &desc->opcode, &desc->datalen, &desc->retval,
 			     &desc->cookie_high, &desc->cookie_low,
-			     &desc->params.internal.param0,
-			     &desc->params.internal.param1,
-			     &desc->params.internal.param2,
-			     &desc->params.internal.param3);
+			     &desc->params.generic.param0,
+			     &desc->params.generic.param1,
+			     &desc->params.generic.addr_high,
+			     &desc->params.generic.addr_low);
 		if (cnt != 10) {
 			dev_info(&pf->pdev->dev,
 				 "send aq_cmd: bad command string, cnt=%d\n",
@@ -1307,19 +1307,19 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			 "AQ desc WB 0x%04x 0x%04x 0x%04x 0x%04x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
 			 desc->flags, desc->opcode, desc->datalen, desc->retval,
 			 desc->cookie_high, desc->cookie_low,
-			 desc->params.internal.param0,
-			 desc->params.internal.param1,
-			 desc->params.internal.param2,
-			 desc->params.internal.param3);
+			 desc->params.generic.param0,
+			 desc->params.generic.param1,
+			 desc->params.generic.addr_high,
+			 desc->params.generic.addr_low);
 		kfree(desc);
 		desc = NULL;
 	} else if (strncmp(cmd_buf, "send indirect aq_cmd", 20) == 0) {
-		struct i40e_aq_desc *desc;
+		struct libie_aq_desc *desc;
 		u16 buffer_len;
 		u8 *buff;
 		int ret;
 
-		desc = kzalloc(sizeof(struct i40e_aq_desc), GFP_KERNEL);
+		desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 		if (!desc)
 			goto command_write_done;
 		cnt = sscanf(&cmd_buf[20],
@@ -1327,10 +1327,10 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			     &desc->flags,
 			     &desc->opcode, &desc->datalen, &desc->retval,
 			     &desc->cookie_high, &desc->cookie_low,
-			     &desc->params.internal.param0,
-			     &desc->params.internal.param1,
-			     &desc->params.internal.param2,
-			     &desc->params.internal.param3,
+			     &desc->params.generic.param0,
+			     &desc->params.generic.param1,
+			     &desc->params.generic.addr_high,
+			     &desc->params.generic.addr_low,
 			     &buffer_len);
 		if (cnt != 11) {
 			dev_info(&pf->pdev->dev,
@@ -1350,7 +1350,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			desc = NULL;
 			goto command_write_done;
 		}
-		desc->flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
+		desc->flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
 		ret = i40e_asq_send_command(&pf->hw, desc, buff,
 					    buffer_len, NULL);
 		if (!ret) {
@@ -1368,10 +1368,10 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			 "AQ desc WB 0x%04x 0x%04x 0x%04x 0x%04x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
 			 desc->flags, desc->opcode, desc->datalen, desc->retval,
 			 desc->cookie_high, desc->cookie_low,
-			 desc->params.internal.param0,
-			 desc->params.internal.param1,
-			 desc->params.internal.param2,
-			 desc->params.internal.param3);
+			 desc->params.generic.param0,
+			 desc->params.generic.param1,
+			 desc->params.generic.addr_high,
+			 desc->params.generic.addr_low);
 		print_hex_dump(KERN_INFO, "AQ buffer WB: ",
 			       DUMP_PREFIX_OFFSET, 16, 1,
 			       buff, buffer_len, true);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 8a7a83f83ee5..537f01cdab3c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1917,13 +1917,13 @@ static int i40e_get_eeprom(struct net_device *netdev,
 		ret_val = i40e_aq_read_nvm(hw, 0x0, offset, len,
 				(u8 *)eeprom_buff + (I40E_NVM_SECTOR_SIZE * i),
 				last, NULL);
-		if (ret_val && hw->aq.asq_last_status == I40E_AQ_RC_EPERM) {
+		if (ret_val && hw->aq.asq_last_status == LIBIE_AQ_RC_EPERM) {
 			dev_info(&pf->pdev->dev,
 				 "read NVM failed, invalid offset 0x%x\n",
 				 offset);
 			break;
 		} else if (ret_val &&
-			   hw->aq.asq_last_status == I40E_AQ_RC_EACCES) {
+			   hw->aq.asq_last_status == LIBIE_AQ_RC_EACCES) {
 			dev_info(&pf->pdev->dev,
 				 "read NVM failed, access, offset 0x%x\n",
 				 offset);
@@ -5251,9 +5251,9 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 	DECLARE_BITMAP(orig_flags, I40E_PF_FLAGS_NBITS);
 	DECLARE_BITMAP(new_flags, I40E_PF_FLAGS_NBITS);
 	struct i40e_netdev_priv *np = netdev_priv(dev);
-	enum i40e_admin_queue_err adq_err;
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
+	enum libie_aq_err adq_err;
 	u32 reset_needed = 0;
 	int status;
 	u32 i, j;
@@ -5373,7 +5373,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 		valid_flags = I40E_AQ_SET_SWITCH_CFG_PROMISC;
 		ret = i40e_aq_set_switch_config(&pf->hw, sw_flags, valid_flags,
 						0, NULL);
-		if (ret && pf->hw.aq.asq_last_status != I40E_AQ_RC_ESRCH) {
+		if (ret && pf->hw.aq.asq_last_status != LIBIE_AQ_RC_ESRCH) {
 			dev_info(&pf->pdev->dev,
 				 "couldn't set switch config bits, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
@@ -5440,16 +5440,16 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 			if (status) {
 				adq_err = pf->hw.aq.asq_last_status;
 				switch (adq_err) {
-				case I40E_AQ_RC_EEXIST:
+				case LIBIE_AQ_RC_EEXIST:
 					dev_warn(&pf->pdev->dev,
 						 "FW LLDP agent is already running\n");
 					reset_needed = 0;
 					break;
-				case I40E_AQ_RC_EPERM:
+				case LIBIE_AQ_RC_EPERM:
 					dev_warn(&pf->pdev->dev,
 						 "Device configuration forbids SW from starting the LLDP agent.\n");
 					return -EINVAL;
-				case I40E_AQ_RC_EAGAIN:
+				case LIBIE_AQ_RC_EAGAIN:
 					dev_warn(&pf->pdev->dev,
 						 "Stop FW LLDP agent command is still being processed, please try again in a second.\n");
 					return -EBUSY;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 65a702668e21..e28d1274e8f6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2339,14 +2339,14 @@ void i40e_aqc_del_filters(struct i40e_vsi *vsi, const char *vsi_name,
 			  int num_del, int *retval)
 {
 	struct i40e_hw *hw = &vsi->back->hw;
-	enum i40e_admin_queue_err aq_status;
+	enum libie_aq_err aq_status;
 	int aq_ret;
 
 	aq_ret = i40e_aq_remove_macvlan_v2(hw, vsi->seid, list, num_del, NULL,
 					   &aq_status);
 
 	/* Explicitly ignore and do not report when firmware returns ENOENT */
-	if (aq_ret && !(aq_status == I40E_AQ_RC_ENOENT)) {
+	if (aq_ret && !(aq_status == LIBIE_AQ_RC_ENOENT)) {
 		*retval = -EIO;
 		dev_info(&vsi->back->pdev->dev,
 			 "ignoring delete macvlan error on %s, err %pe, aq_err %s\n",
@@ -2374,7 +2374,7 @@ void i40e_aqc_add_filters(struct i40e_vsi *vsi, const char *vsi_name,
 			  int num_add)
 {
 	struct i40e_hw *hw = &vsi->back->hw;
-	enum i40e_admin_queue_err aq_status;
+	enum libie_aq_err aq_status;
 	int fcnt;
 
 	i40e_aq_add_macvlan_v2(hw, vsi->seid, list, num_add, NULL, &aq_status);
@@ -6017,8 +6017,8 @@ int i40e_set_bw_limit(struct i40e_vsi *vsi, u16 seid, u64 max_tx_rate)
  **/
 static void i40e_remove_queue_channels(struct i40e_vsi *vsi)
 {
-	enum i40e_admin_queue_err last_aq_status;
 	struct i40e_cloud_filter *cfilter;
+	enum libie_aq_err last_aq_status;
 	struct i40e_channel *ch, *ch_tmp;
 	struct i40e_pf *pf = vsi->back;
 	struct hlist_node *node;
@@ -6559,7 +6559,7 @@ static int i40e_validate_and_set_switch_mode(struct i40e_vsi *vsi)
 	ret = i40e_aq_set_switch_config(hw, pf->last_sw_conf_flags,
 					pf->last_sw_conf_valid_flags,
 					mode, NULL);
-	if (ret && hw->aq.asq_last_status != I40E_AQ_RC_ESRCH)
+	if (ret && hw->aq.asq_last_status != LIBIE_AQ_RC_ESRCH)
 		dev_err(&pf->pdev->dev,
 			"couldn't set switch config bits, err %pe aq_err %s\n",
 			ERR_PTR(ret),
@@ -7234,7 +7234,7 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 			dev_dbg(&pf->pdev->dev,
 				"DCBX offload is supported for this PF.\n");
 		}
-	} else if (pf->hw.aq.asq_last_status == I40E_AQ_RC_EPERM) {
+	} else if (pf->hw.aq.asq_last_status == LIBIE_AQ_RC_EPERM) {
 		dev_info(&pf->pdev->dev, "FW LLDP disabled for this PF.\n");
 		set_bit(I40E_FLAG_FW_LLDP_DIS, pf->flags);
 	} else {
@@ -9439,8 +9439,7 @@ bool i40e_dcb_need_reconfig(struct i40e_pf *pf,
 static int i40e_handle_lldp_event(struct i40e_pf *pf,
 				  struct i40e_arq_event_info *e)
 {
-	struct i40e_aqc_lldp_get_mib *mib =
-		(struct i40e_aqc_lldp_get_mib *)&e->desc.params.raw;
+	struct i40e_aqc_lldp_get_mib *mib = libie_aq_raw(&e->desc);
 	struct i40e_hw *hw = &pf->hw;
 	struct i40e_dcbx_config tmp_dcbx_cfg;
 	bool need_reconfig = false;
@@ -9579,8 +9578,7 @@ void i40e_do_reset_safe(struct i40e_pf *pf, u32 reset_flags)
 static void i40e_handle_lan_overflow_event(struct i40e_pf *pf,
 					   struct i40e_arq_event_info *e)
 {
-	struct i40e_aqc_lan_overflow *data =
-		(struct i40e_aqc_lan_overflow *)&e->desc.params.raw;
+	struct i40e_aqc_lan_overflow *data = libie_aq_raw(&e->desc);
 	u32 queue = le32_to_cpu(data->prtdcb_rupto);
 	u32 qtx_ctl = le32_to_cpu(data->otx_ctl);
 	struct i40e_hw *hw = &pf->hw;
@@ -10097,8 +10095,7 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
 static void i40e_handle_link_event(struct i40e_pf *pf,
 				   struct i40e_arq_event_info *e)
 {
-	struct i40e_aqc_get_link_status *status =
-		(struct i40e_aqc_get_link_status *)&e->desc.params.raw;
+	struct i40e_aqc_get_link_status *status = libie_aq_raw(&e->desc);
 
 	/* Do a new status request to re-enable LSE reporting
 	 * and load new status information into the hw struct
@@ -10470,12 +10467,12 @@ static int i40e_reconstitute_veb(struct i40e_veb *veb)
 static int i40e_get_capabilities(struct i40e_pf *pf,
 				 enum i40e_admin_queue_opc list_type)
 {
-	struct i40e_aqc_list_capabilities_element_resp *cap_buf;
+	struct libie_aqc_list_caps_elem *cap_buf;
 	u16 data_size;
 	int buf_len;
 	int err;
 
-	buf_len = 40 * sizeof(struct i40e_aqc_list_capabilities_element_resp);
+	buf_len = 40 * sizeof(struct libie_aqc_list_caps_elem);
 	do {
 		cap_buf = kzalloc(buf_len, GFP_KERNEL);
 		if (!cap_buf)
@@ -10488,10 +10485,10 @@ static int i40e_get_capabilities(struct i40e_pf *pf,
 		/* data loaded, buffer no longer needed */
 		kfree(cap_buf);
 
-		if (pf->hw.aq.asq_last_status == I40E_AQ_RC_ENOMEM) {
+		if (pf->hw.aq.asq_last_status == LIBIE_AQ_RC_ENOMEM) {
 			/* retry with a larger buffer */
 			buf_len = data_size;
-		} else if (pf->hw.aq.asq_last_status != I40E_AQ_RC_OK || err) {
+		} else if (pf->hw.aq.asq_last_status != LIBIE_AQ_RC_OK || err) {
 			dev_info(&pf->pdev->dev,
 				 "capability discovery failed, err %pe aq_err %s\n",
 				 ERR_PTR(err),
@@ -15045,7 +15042,7 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 		valid_flags = I40E_AQ_SET_SWITCH_CFG_PROMISC;
 		ret = i40e_aq_set_switch_config(&pf->hw, flags, valid_flags, 0,
 						NULL);
-		if (ret && pf->hw.aq.asq_last_status != I40E_AQ_RC_ESRCH) {
+		if (ret && pf->hw.aq.asq_last_status != LIBIE_AQ_RC_ESRCH) {
 			dev_info(&pf->pdev->dev,
 				 "couldn't set switch config bits, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 7f0936f4e05e..5dfbe71205e6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -997,7 +997,7 @@ static int i40e_nvmupd_exec_aq(struct i40e_hw *hw,
 			       u8 *bytes, int *perrno)
 {
 	struct i40e_asq_cmd_details cmd_details;
-	struct i40e_aq_desc *aq_desc;
+	struct libie_aq_desc *aq_desc;
 	u32 buff_size = 0;
 	u8 *buff = NULL;
 	u32 aq_desc_len;
@@ -1011,7 +1011,7 @@ static int i40e_nvmupd_exec_aq(struct i40e_hw *hw,
 	memset(&cmd_details, 0, sizeof(cmd_details));
 	cmd_details.wb_desc = &hw->nvm_wb_desc;
 
-	aq_desc_len = sizeof(struct i40e_aq_desc);
+	aq_desc_len = sizeof(struct libie_aq_desc);
 	memset(&hw->nvm_wb_desc, 0, aq_desc_len);
 
 	/* get the aq descriptor */
@@ -1022,7 +1022,7 @@ static int i40e_nvmupd_exec_aq(struct i40e_hw *hw,
 		*perrno = -EINVAL;
 		return -EINVAL;
 	}
-	aq_desc = (struct i40e_aq_desc *)bytes;
+	aq_desc = (struct libie_aq_desc *)bytes;
 
 	/* if data buffer needed, make sure it's ready */
 	aq_data_len = cmd->data_size - aq_desc_len;
@@ -1087,7 +1087,7 @@ static int i40e_nvmupd_get_aq_result(struct i40e_hw *hw,
 
 	i40e_debug(hw, I40E_DEBUG_NVM, "NVMUPD: %s\n", __func__);
 
-	aq_desc_len = sizeof(struct i40e_aq_desc);
+	aq_desc_len = sizeof(struct libie_aq_desc);
 	aq_total_len = aq_desc_len + le16_to_cpu(hw->nvm_wb_desc.datalen);
 
 	/* check offset range */
@@ -1154,7 +1154,7 @@ static int i40e_nvmupd_get_aq_event(struct i40e_hw *hw,
 
 	i40e_debug(hw, I40E_DEBUG_NVM, "NVMUPD: %s\n", __func__);
 
-	aq_desc_len = sizeof(struct i40e_aq_desc);
+	aq_desc_len = sizeof(struct libie_aq_desc);
 	aq_total_len = aq_desc_len + le16_to_cpu(hw->nvm_aq_event_desc.datalen);
 
 	/* check copylength range */
@@ -1442,7 +1442,7 @@ static int i40e_nvmupd_state_writing(struct i40e_hw *hw,
 	 * so here we try to reacquire the semaphore then retry the write.
 	 * We only do one retry, then give up.
 	 */
-	if (status && hw->aq.asq_last_status == I40E_AQ_RC_EBUSY &&
+	if (status && hw->aq.asq_last_status == LIBIE_AQ_RC_EBUSY &&
 	    !retry_attempt) {
 		u32 old_asq_status = hw->aq.asq_last_status;
 		int old_status = status;
@@ -1628,9 +1628,9 @@ void i40e_nvmupd_clear_wait_state(struct i40e_hw *hw)
  * @desc: AdminQ descriptor
  **/
 void i40e_nvmupd_check_wait_event(struct i40e_hw *hw, u16 opcode,
-				  struct i40e_aq_desc *desc)
+				  struct libie_aq_desc *desc)
 {
-	u32 aq_desc_len = sizeof(struct i40e_aq_desc);
+	u32 aq_desc_len = sizeof(struct libie_aq_desc);
 
 	if (opcode == hw->nvm_wait_opcode) {
 		memcpy(&hw->nvm_aq_event_desc, desc, aq_desc_len);
-- 
2.42.0

