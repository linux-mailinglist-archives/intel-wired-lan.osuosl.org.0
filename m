Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DC2A5D60F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 07:24:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 744194057B;
	Wed, 12 Mar 2025 06:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ADpfiziFsUsS; Wed, 12 Mar 2025 06:24:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76BDA40585
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741760685;
	bh=kS2sleWUNGhjGLI6wfrnJn1nQTmsnUnuzb5IPU71QG4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ux8dQPO7uxtb65UteGWmedqfU+cKB/5gJ6vAuuvw2uuQPTJBgAjvBqKP0sw6jVsaf
	 EVLIul+DEhzZrX0KAKCo8Kl34CH2XaoAjukqvpaniP2vHxv1OWiRiphYQ93IU9e/zQ
	 HhtG56qw8O9Ig6saelIz62mrzeobAQzMaceGxc+uvusXW0pVNf8HPVkuwssCC974Hs
	 ydY09+IPlucNTBLGcJT04dQz3jmdW65CiTAgQgwmd6RsRh8v4b23J2uLYnOZkIsrsy
	 HmkeDwkDoBkHLo4P8pXVcbWG/EadHdbAAsdH/IecwjuG8wrjkJ0GyoWepXsi4af+FO
	 EOa9nFnpq6VEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76BDA40585;
	Wed, 12 Mar 2025 06:24:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3787D1DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2641460D5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IbGlxNAkozjA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 06:24:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 77EA360D87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77EA360D87
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77EA360D87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:40 +0000 (UTC)
X-CSE-ConnectionGUID: NwifdIYHTUCu/hTo25lNbg==
X-CSE-MsgGUID: Gbh9Pck1SmmekHJ3OMhZzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="43005562"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="43005562"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:24:40 -0700
X-CSE-ConnectionGUID: KiFZk5XDSGK1AzQDAOblSg==
X-CSE-MsgGUID: gC+rGoePR1yfqlDFsk9Y0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120569509"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa007.fm.intel.com with ESMTP; 11 Mar 2025 23:24:37 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com
Date: Wed, 12 Mar 2025 07:24:22 +0100
Message-ID: <20250312062426.2544608-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250312062426.2544608-1-michal.swiatkowski@linux.intel.com>
References: <20250312062426.2544608-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741760681; x=1773296681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2HbfinEFyAup30Yyf7hag84o6TC5VvayxX0bVDYd0C4=;
 b=E4gYvpCSmkxpRRc+NRBOTv7x2zvuZxqImFH5dT/E7KtRaoNsLTgFlbNk
 rG8DWLGevBK1LjJoF2x/lmZemf6Z3dWelMx1M8YqD2/8FWrV2Tj7WjNyO
 I8B+XT+Z15yM1o4uF2TzOsFH+ncGIjj+9EGWrHHMMWfQ1bYVykrYlSm8e
 FpP6gSe5w40gBQgag7u9WD0PRgIjypPKV1pxQykHbeOILTQWM0loR+Ezk
 yNrb+FN1qdZwwW5v3cLv9hNGrDtCvov8GmSZu3Ssbbdb9RBnh8FNVUJtt
 4KWAsn/PsKNHBFEe8vr4aMlW6aTfu8GSmpBiNieYPf4ixcRmyoxVxk/pd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E4gYvpCS
Subject: [Intel-wired-lan] [iwl-next v1 4/8] iavf: use libie adminq
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

Use libie_aq_desc instead of iavf_aq_desc. Do needed changes to allow
clean build

Use libie_aq_raw() wherever it can be used.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_adminq.h |  12 +-
 .../net/ethernet/intel/iavf/iavf_adminq_cmd.h |  83 +----------
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   4 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_adminq.c |  62 ++++----
 drivers/net/ethernet/intel/iavf/iavf_common.c | 134 +++++++++---------
 6 files changed, 106 insertions(+), 191 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.h b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
index 406506f64bdd..bbf5c4b3a2ae 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
@@ -9,7 +9,7 @@
 #include "iavf_adminq_cmd.h"
 
 #define IAVF_ADMINQ_DESC(R, i)   \
-	(&(((struct iavf_aq_desc *)((R).desc_buf.va))[i]))
+	(&(((struct libie_aq_desc *)((R).desc_buf.va))[i]))
 
 #define IAVF_ADMINQ_DESC_ALIGNMENT 4096
 
@@ -39,7 +39,7 @@ struct iavf_asq_cmd_details {
 	u16 flags_dis;
 	bool async;
 	bool postpone;
-	struct iavf_aq_desc *wb_desc;
+	struct libie_aq_desc *wb_desc;
 };
 
 #define IAVF_ADMINQ_DETAILS(R, i)   \
@@ -47,7 +47,7 @@ struct iavf_asq_cmd_details {
 
 /* ARQ event information */
 struct iavf_arq_event_info {
-	struct iavf_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 msg_len;
 	u16 buf_len;
 	u8 *msg_buf;
@@ -72,8 +72,8 @@ struct iavf_adminq_info {
 	struct mutex arq_mutex; /* Receive queue lock */
 
 	/* last status values on send and receive queues */
-	enum iavf_admin_queue_err asq_last_status;
-	enum iavf_admin_queue_err arq_last_status;
+	enum libie_aq_err asq_last_status;
+	enum libie_aq_err arq_last_status;
 };
 
 /**
@@ -123,6 +123,6 @@ static inline int iavf_aq_rc_to_posix(int aq_ret, int aq_rc)
 #define IAVF_AQ_LARGE_BUF	512
 #define IAVF_ASQ_CMD_TIMEOUT	250000  /* usecs */
 
-void iavf_fill_default_direct_cmd_desc(struct iavf_aq_desc *desc, u16 opcode);
+void iavf_fill_default_direct_cmd_desc(struct libie_aq_desc *desc, u16 opcode);
 
 #endif /* _IAVF_ADMINQ_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h b/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
index bc512308557b..0482c9ce9b9c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
@@ -4,6 +4,8 @@
 #ifndef _IAVF_ADMINQ_CMD_H_
 #define _IAVF_ADMINQ_CMD_H_
 
+#include <linux/net/intel/libie/adminq.h>
+
 /* This header file defines the iavf Admin Queue commands and is shared between
  * iavf Firmware and Software.
  *
@@ -21,87 +23,6 @@
 /* API version 1.7 implements additional link and PHY-specific APIs  */
 #define IAVF_MINOR_VER_GET_LINK_INFO_XL710 0x0007
 
-struct iavf_aq_desc {
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
-#define IAVF_AQ_FLAG_DD_SHIFT	0
-#define IAVF_AQ_FLAG_CMP_SHIFT	1
-#define IAVF_AQ_FLAG_ERR_SHIFT	2
-#define IAVF_AQ_FLAG_VFE_SHIFT	3
-#define IAVF_AQ_FLAG_LB_SHIFT	9
-#define IAVF_AQ_FLAG_RD_SHIFT	10
-#define IAVF_AQ_FLAG_VFC_SHIFT	11
-#define IAVF_AQ_FLAG_BUF_SHIFT	12
-#define IAVF_AQ_FLAG_SI_SHIFT	13
-#define IAVF_AQ_FLAG_EI_SHIFT	14
-#define IAVF_AQ_FLAG_FE_SHIFT	15
-
-#define IAVF_AQ_FLAG_DD		BIT(IAVF_AQ_FLAG_DD_SHIFT)  /* 0x1    */
-#define IAVF_AQ_FLAG_CMP	BIT(IAVF_AQ_FLAG_CMP_SHIFT) /* 0x2    */
-#define IAVF_AQ_FLAG_ERR	BIT(IAVF_AQ_FLAG_ERR_SHIFT) /* 0x4    */
-#define IAVF_AQ_FLAG_VFE	BIT(IAVF_AQ_FLAG_VFE_SHIFT) /* 0x8    */
-#define IAVF_AQ_FLAG_LB		BIT(IAVF_AQ_FLAG_LB_SHIFT)  /* 0x200  */
-#define IAVF_AQ_FLAG_RD		BIT(IAVF_AQ_FLAG_RD_SHIFT)  /* 0x400  */
-#define IAVF_AQ_FLAG_VFC	BIT(IAVF_AQ_FLAG_VFC_SHIFT) /* 0x800  */
-#define IAVF_AQ_FLAG_BUF	BIT(IAVF_AQ_FLAG_BUF_SHIFT) /* 0x1000 */
-#define IAVF_AQ_FLAG_SI		BIT(IAVF_AQ_FLAG_SI_SHIFT)  /* 0x2000 */
-#define IAVF_AQ_FLAG_EI		BIT(IAVF_AQ_FLAG_EI_SHIFT)  /* 0x4000 */
-#define IAVF_AQ_FLAG_FE		BIT(IAVF_AQ_FLAG_FE_SHIFT)  /* 0x8000 */
-
-/* error codes */
-enum iavf_admin_queue_err {
-	IAVF_AQ_RC_OK		= 0,  /* success */
-	IAVF_AQ_RC_EPERM	= 1,  /* Operation not permitted */
-	IAVF_AQ_RC_ENOENT	= 2,  /* No such element */
-	IAVF_AQ_RC_ESRCH	= 3,  /* Bad opcode */
-	IAVF_AQ_RC_EINTR	= 4,  /* operation interrupted */
-	IAVF_AQ_RC_EIO		= 5,  /* I/O error */
-	IAVF_AQ_RC_ENXIO	= 6,  /* No such resource */
-	IAVF_AQ_RC_E2BIG	= 7,  /* Arg too long */
-	IAVF_AQ_RC_EAGAIN	= 8,  /* Try again */
-	IAVF_AQ_RC_ENOMEM	= 9,  /* Out of memory */
-	IAVF_AQ_RC_EACCES	= 10, /* Permission denied */
-	IAVF_AQ_RC_EFAULT	= 11, /* Bad address */
-	IAVF_AQ_RC_EBUSY	= 12, /* Device or resource busy */
-	IAVF_AQ_RC_EEXIST	= 13, /* object already exists */
-	IAVF_AQ_RC_EINVAL	= 14, /* Invalid argument */
-	IAVF_AQ_RC_ENOTTY	= 15, /* Not a typewriter */
-	IAVF_AQ_RC_ENOSPC	= 16, /* No space left or alloc failure */
-	IAVF_AQ_RC_ENOSYS	= 17, /* Function not implemented */
-	IAVF_AQ_RC_ERANGE	= 18, /* Parameter out of range */
-	IAVF_AQ_RC_EFLUSHED	= 19, /* Cmd flushed due to prev cmd error */
-	IAVF_AQ_RC_BAD_ADDR	= 20, /* Descriptor contains a bad pointer */
-	IAVF_AQ_RC_EMODE	= 21, /* Op not allowed in current dev mode */
-	IAVF_AQ_RC_EFBIG	= 22, /* File too large */
-};
-
 /* Admin Queue command opcodes */
 enum iavf_admin_queue_opc {
 	/* aq commands */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index cac9d1a35a52..34b5ed87a9aa 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -22,7 +22,7 @@ enum iavf_status iavf_clean_arq_element(struct iavf_hw *hw,
 					struct iavf_arq_event_info *e,
 					u16 *events_pending);
 enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
-				       struct iavf_aq_desc *desc,
+				       struct libie_aq_desc *desc,
 				       void *buff, /* can be NULL */
 				       u16 buff_size,
 				       struct iavf_asq_cmd_details *cmd_details);
@@ -34,7 +34,7 @@ void iavf_debug_aq(struct iavf_hw *hw, enum iavf_debug_mask mask,
 
 bool iavf_check_asq_alive(struct iavf_hw *hw);
 enum iavf_status iavf_aq_queue_shutdown(struct iavf_hw *hw, bool unloading);
-const char *iavf_aq_str(struct iavf_hw *hw, enum iavf_admin_queue_err aq_err);
+const char *iavf_aq_str(struct iavf_hw *hw, enum libie_aq_err aq_err);
 const char *iavf_stat_str(struct iavf_hw *hw, enum iavf_status stat_err);
 
 enum iavf_status iavf_aq_set_rss_lut(struct iavf_hw *hw, u16 seid,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index f9e1319620f4..c9961a2d1217 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -19,7 +19,7 @@
 
 /* forward declaration */
 struct iavf_hw;
-typedef void (*IAVF_ADMINQ_CALLBACK)(struct iavf_hw *, struct iavf_aq_desc *);
+typedef void (*IAVF_ADMINQ_CALLBACK)(struct iavf_hw *, struct libie_aq_desc *);
 
 /* Data type manipulation macros. */
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
index 82fcd18ad660..6937b7dd44cb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
@@ -18,7 +18,7 @@ static enum iavf_status iavf_alloc_adminq_asq_ring(struct iavf_hw *hw)
 	ret_code = iavf_allocate_dma_mem(hw, &hw->aq.asq.desc_buf,
 					 iavf_mem_atq_ring,
 					 (hw->aq.num_asq_entries *
-					 sizeof(struct iavf_aq_desc)),
+					 sizeof(struct libie_aq_desc)),
 					 IAVF_ADMINQ_DESC_ALIGNMENT);
 	if (ret_code)
 		return ret_code;
@@ -45,7 +45,7 @@ static enum iavf_status iavf_alloc_adminq_arq_ring(struct iavf_hw *hw)
 	ret_code = iavf_allocate_dma_mem(hw, &hw->aq.arq.desc_buf,
 					 iavf_mem_arq_ring,
 					 (hw->aq.num_arq_entries *
-					 sizeof(struct iavf_aq_desc)),
+					 sizeof(struct libie_aq_desc)),
 					 IAVF_ADMINQ_DESC_ALIGNMENT);
 
 	return ret_code;
@@ -81,7 +81,7 @@ static void iavf_free_adminq_arq(struct iavf_hw *hw)
  **/
 static enum iavf_status iavf_alloc_arq_bufs(struct iavf_hw *hw)
 {
-	struct iavf_aq_desc *desc;
+	struct libie_aq_desc *desc;
 	struct iavf_dma_mem *bi;
 	enum iavf_status ret_code;
 	int i;
@@ -111,9 +111,9 @@ static enum iavf_status iavf_alloc_arq_bufs(struct iavf_hw *hw)
 		/* now configure the descriptors for use */
 		desc = IAVF_ADMINQ_DESC(hw->aq.arq, i);
 
-		desc->flags = cpu_to_le16(IAVF_AQ_FLAG_BUF);
+		desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_BUF);
 		if (hw->aq.arq_buf_size > IAVF_AQ_LARGE_BUF)
-			desc->flags |= cpu_to_le16(IAVF_AQ_FLAG_LB);
+			desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 		desc->opcode = 0;
 		/* This is in accordance with Admin queue design, there is no
 		 * register for buffer size configuration
@@ -122,12 +122,12 @@ static enum iavf_status iavf_alloc_arq_bufs(struct iavf_hw *hw)
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
@@ -558,8 +558,8 @@ static u16 iavf_clean_asq(struct iavf_hw *hw)
 	struct iavf_adminq_ring *asq = &hw->aq.asq;
 	struct iavf_asq_cmd_details *details;
 	u16 ntc = asq->next_to_clean;
-	struct iavf_aq_desc desc_cb;
-	struct iavf_aq_desc *desc;
+	struct libie_aq_desc desc_cb;
+	struct libie_aq_desc *desc;
 
 	desc = IAVF_ADMINQ_DESC(*asq, ntc);
 	details = IAVF_ADMINQ_DETAILS(*asq, ntc);
@@ -573,7 +573,7 @@ static u16 iavf_clean_asq(struct iavf_hw *hw)
 			desc_cb = *desc;
 			cb_func(hw, &desc_cb);
 		}
-		memset((void *)desc, 0, sizeof(struct iavf_aq_desc));
+		memset((void *)desc, 0, sizeof(struct libie_aq_desc));
 		memset((void *)details, 0,
 		       sizeof(struct iavf_asq_cmd_details));
 		ntc++;
@@ -615,14 +615,14 @@ bool iavf_asq_done(struct iavf_hw *hw)
  *  queue.  It runs the queue, cleans the queue, etc
  **/
 enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
-				       struct iavf_aq_desc *desc,
+				       struct libie_aq_desc *desc,
 				       void *buff, /* can be NULL */
 				       u16  buff_size,
 				       struct iavf_asq_cmd_details *cmd_details)
 {
 	struct iavf_dma_mem *dma_buff = NULL;
 	struct iavf_asq_cmd_details *details;
-	struct iavf_aq_desc *desc_on_ring;
+	struct libie_aq_desc *desc_on_ring;
 	bool cmd_completed = false;
 	enum iavf_status status = 0;
 	u16  retval = 0;
@@ -637,7 +637,7 @@ enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
 		goto asq_send_command_error;
 	}
 
-	hw->aq.asq_last_status = IAVF_AQ_RC_OK;
+	hw->aq.asq_last_status = LIBIE_AQ_RC_OK;
 
 	val = rd32(hw, IAVF_VF_ATQH1);
 	if (val >= hw->aq.num_asq_entries) {
@@ -717,9 +717,9 @@ enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
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
 
@@ -766,13 +766,13 @@ enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
 			retval &= 0xff;
 		}
 		cmd_completed = true;
-		if ((enum iavf_admin_queue_err)retval == IAVF_AQ_RC_OK)
+		if ((enum libie_aq_err)retval == LIBIE_AQ_RC_OK)
 			status = 0;
-		else if ((enum iavf_admin_queue_err)retval == IAVF_AQ_RC_EBUSY)
+		else if ((enum libie_aq_err)retval == LIBIE_AQ_RC_EBUSY)
 			status = IAVF_ERR_NOT_READY;
 		else
 			status = IAVF_ERR_ADMIN_QUEUE_ERROR;
-		hw->aq.asq_last_status = (enum iavf_admin_queue_err)retval;
+		hw->aq.asq_last_status = (enum libie_aq_err)retval;
 	}
 
 	iavf_debug(hw, IAVF_DEBUG_AQ_MESSAGE,
@@ -809,12 +809,12 @@ enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
  *
  *  Fill the desc with default values
  **/
-void iavf_fill_default_direct_cmd_desc(struct iavf_aq_desc *desc, u16 opcode)
+void iavf_fill_default_direct_cmd_desc(struct libie_aq_desc *desc, u16 opcode)
 {
 	/* zero out the desc */
-	memset((void *)desc, 0, sizeof(struct iavf_aq_desc));
+	memset((void *)desc, 0, sizeof(struct libie_aq_desc));
 	desc->opcode = cpu_to_le16(opcode);
-	desc->flags = cpu_to_le16(IAVF_AQ_FLAG_SI);
+	desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_SI);
 }
 
 /**
@@ -832,7 +832,7 @@ enum iavf_status iavf_clean_arq_element(struct iavf_hw *hw,
 					u16 *pending)
 {
 	u16 ntc = hw->aq.arq.next_to_clean;
-	struct iavf_aq_desc *desc;
+	struct libie_aq_desc *desc;
 	enum iavf_status ret_code = 0;
 	struct iavf_dma_mem *bi;
 	u16 desc_idx;
@@ -866,9 +866,9 @@ enum iavf_status iavf_clean_arq_element(struct iavf_hw *hw,
 	desc_idx = ntc;
 
 	hw->aq.arq_last_status =
-		(enum iavf_admin_queue_err)le16_to_cpu(desc->retval);
+		(enum libie_aq_err)le16_to_cpu(desc->retval);
 	flags = le16_to_cpu(desc->flags);
-	if (flags & IAVF_AQ_FLAG_ERR) {
+	if (flags & LIBIE_AQ_FLAG_ERR) {
 		ret_code = IAVF_ERR_ADMIN_QUEUE_ERROR;
 		iavf_debug(hw,
 			   IAVF_DEBUG_AQ_MESSAGE,
@@ -892,14 +892,14 @@ enum iavf_status iavf_clean_arq_element(struct iavf_hw *hw,
 	 * size
 	 */
 	bi = &hw->aq.arq.r.arq_bi[ntc];
-	memset((void *)desc, 0, sizeof(struct iavf_aq_desc));
+	memset((void *)desc, 0, sizeof(struct libie_aq_desc));
 
-	desc->flags = cpu_to_le16(IAVF_AQ_FLAG_BUF);
+	desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_BUF);
 	if (hw->aq.arq_buf_size > IAVF_AQ_LARGE_BUF)
-		desc->flags |= cpu_to_le16(IAVF_AQ_FLAG_LB);
+		desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 	desc->datalen = cpu_to_le16((u16)bi->size);
-	desc->params.external.addr_high = cpu_to_le32(upper_32_bits(bi->pa));
-	desc->params.external.addr_low = cpu_to_le32(lower_32_bits(bi->pa));
+	desc->params.generic.addr_high = cpu_to_le32(upper_32_bits(bi->pa));
+	desc->params.generic.addr_low = cpu_to_le32(lower_32_bits(bi->pa));
 
 	/* set tail = the last cleaned desc index. */
 	wr32(hw, IAVF_VF_ARQT1, ntc);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index aa751ce3425b..cc71e48b5689 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -12,55 +12,47 @@
  * @hw: pointer to the HW structure
  * @aq_err: the AQ error code to convert
  **/
-const char *iavf_aq_str(struct iavf_hw *hw, enum iavf_admin_queue_err aq_err)
+const char *iavf_aq_str(struct iavf_hw *hw, enum libie_aq_err aq_err)
 {
 	switch (aq_err) {
-	case IAVF_AQ_RC_OK:
+	case LIBIE_AQ_RC_OK:
 		return "OK";
-	case IAVF_AQ_RC_EPERM:
-		return "IAVF_AQ_RC_EPERM";
-	case IAVF_AQ_RC_ENOENT:
-		return "IAVF_AQ_RC_ENOENT";
-	case IAVF_AQ_RC_ESRCH:
-		return "IAVF_AQ_RC_ESRCH";
-	case IAVF_AQ_RC_EINTR:
-		return "IAVF_AQ_RC_EINTR";
-	case IAVF_AQ_RC_EIO:
-		return "IAVF_AQ_RC_EIO";
-	case IAVF_AQ_RC_ENXIO:
-		return "IAVF_AQ_RC_ENXIO";
-	case IAVF_AQ_RC_E2BIG:
-		return "IAVF_AQ_RC_E2BIG";
-	case IAVF_AQ_RC_EAGAIN:
-		return "IAVF_AQ_RC_EAGAIN";
-	case IAVF_AQ_RC_ENOMEM:
-		return "IAVF_AQ_RC_ENOMEM";
-	case IAVF_AQ_RC_EACCES:
-		return "IAVF_AQ_RC_EACCES";
-	case IAVF_AQ_RC_EFAULT:
-		return "IAVF_AQ_RC_EFAULT";
-	case IAVF_AQ_RC_EBUSY:
-		return "IAVF_AQ_RC_EBUSY";
-	case IAVF_AQ_RC_EEXIST:
-		return "IAVF_AQ_RC_EEXIST";
-	case IAVF_AQ_RC_EINVAL:
-		return "IAVF_AQ_RC_EINVAL";
-	case IAVF_AQ_RC_ENOTTY:
-		return "IAVF_AQ_RC_ENOTTY";
-	case IAVF_AQ_RC_ENOSPC:
-		return "IAVF_AQ_RC_ENOSPC";
-	case IAVF_AQ_RC_ENOSYS:
-		return "IAVF_AQ_RC_ENOSYS";
-	case IAVF_AQ_RC_ERANGE:
-		return "IAVF_AQ_RC_ERANGE";
-	case IAVF_AQ_RC_EFLUSHED:
-		return "IAVF_AQ_RC_EFLUSHED";
-	case IAVF_AQ_RC_BAD_ADDR:
-		return "IAVF_AQ_RC_BAD_ADDR";
-	case IAVF_AQ_RC_EMODE:
-		return "IAVF_AQ_RC_EMODE";
-	case IAVF_AQ_RC_EFBIG:
-		return "IAVF_AQ_RC_EFBIG";
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
@@ -228,7 +220,7 @@ const char *iavf_stat_str(struct iavf_hw *hw, enum iavf_status stat_err)
 void iavf_debug_aq(struct iavf_hw *hw, enum iavf_debug_mask mask, void *desc,
 		   void *buffer, u16 buf_len)
 {
-	struct iavf_aq_desc *aq_desc = (struct iavf_aq_desc *)desc;
+	struct libie_aq_desc *aq_desc = (struct libie_aq_desc *)desc;
 	u8 *buf = (u8 *)buffer;
 
 	if ((!(mask & hw->debug_mask)) || !desc)
@@ -244,11 +236,11 @@ void iavf_debug_aq(struct iavf_hw *hw, enum iavf_debug_mask mask, void *desc,
 		   le32_to_cpu(aq_desc->cookie_high),
 		   le32_to_cpu(aq_desc->cookie_low));
 	iavf_debug(hw, mask, "\tparam (0,1)  0x%08X 0x%08X\n",
-		   le32_to_cpu(aq_desc->params.internal.param0),
-		   le32_to_cpu(aq_desc->params.internal.param1));
+		   le32_to_cpu(aq_desc->params.generic.param0),
+		   le32_to_cpu(aq_desc->params.generic.param1));
 	iavf_debug(hw, mask, "\taddr (h,l)   0x%08X 0x%08X\n",
-		   le32_to_cpu(aq_desc->params.external.addr_high),
-		   le32_to_cpu(aq_desc->params.external.addr_low));
+		   le32_to_cpu(aq_desc->params.generic.addr_high),
+		   le32_to_cpu(aq_desc->params.generic.addr_low));
 
 	if (buffer && aq_desc->datalen) {
 		u16 len = le16_to_cpu(aq_desc->datalen);
@@ -297,11 +289,11 @@ bool iavf_check_asq_alive(struct iavf_hw *hw)
  **/
 enum iavf_status iavf_aq_queue_shutdown(struct iavf_hw *hw, bool unloading)
 {
-	struct iavf_aq_desc desc;
-	struct iavf_aqc_queue_shutdown *cmd =
-		(struct iavf_aqc_queue_shutdown *)&desc.params.raw;
+	struct iavf_aqc_queue_shutdown *cmd;
+	struct libie_aq_desc desc;
 	enum iavf_status status;
 
+	cmd = libie_aq_raw(&desc);
 	iavf_fill_default_direct_cmd_desc(&desc, iavf_aqc_opc_queue_shutdown);
 
 	if (unloading)
@@ -327,12 +319,13 @@ static enum iavf_status iavf_aq_get_set_rss_lut(struct iavf_hw *hw,
 						u8 *lut, u16 lut_size,
 						bool set)
 {
+	struct iavf_aqc_get_set_rss_lut *cmd_resp;
+	struct libie_aq_desc desc;
 	enum iavf_status status;
-	struct iavf_aq_desc desc;
-	struct iavf_aqc_get_set_rss_lut *cmd_resp =
-		   (struct iavf_aqc_get_set_rss_lut *)&desc.params.raw;
 	u16 flags;
 
+	cmd_resp = libie_aq_raw(&desc);
+
 	if (set)
 		iavf_fill_default_direct_cmd_desc(&desc,
 						  iavf_aqc_opc_set_rss_lut);
@@ -341,8 +334,8 @@ static enum iavf_status iavf_aq_get_set_rss_lut(struct iavf_hw *hw,
 						  iavf_aqc_opc_get_rss_lut);
 
 	/* Indirect command */
-	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_BUF);
-	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
 
 	vsi_id = FIELD_PREP(IAVF_AQC_SET_RSS_LUT_VSI_ID_MASK, vsi_id) |
 		 FIELD_PREP(IAVF_AQC_SET_RSS_LUT_VSI_VALID, 1);
@@ -392,11 +385,12 @@ iavf_status iavf_aq_get_set_rss_key(struct iavf_hw *hw, u16 vsi_id,
 				    struct iavf_aqc_get_set_rss_key_data *key,
 				    bool set)
 {
-	enum iavf_status status;
-	struct iavf_aq_desc desc;
-	struct iavf_aqc_get_set_rss_key *cmd_resp =
-			(struct iavf_aqc_get_set_rss_key *)&desc.params.raw;
 	u16 key_size = sizeof(struct iavf_aqc_get_set_rss_key_data);
+	struct iavf_aqc_get_set_rss_key *cmd_resp;
+	struct libie_aq_desc desc;
+	enum iavf_status status;
+
+	cmd_resp = libie_aq_raw(&desc);
 
 	if (set)
 		iavf_fill_default_direct_cmd_desc(&desc,
@@ -406,8 +400,8 @@ iavf_status iavf_aq_get_set_rss_key(struct iavf_hw *hw, u16 vsi_id,
 						  iavf_aqc_opc_get_rss_key);
 
 	/* Indirect command */
-	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_BUF);
-	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
 
 	vsi_id = FIELD_PREP(IAVF_AQC_SET_RSS_KEY_VSI_ID_MASK, vsi_id) |
 		 FIELD_PREP(IAVF_AQC_SET_RSS_KEY_VSI_VALID, 1);
@@ -452,18 +446,18 @@ enum iavf_status iavf_aq_send_msg_to_pf(struct iavf_hw *hw,
 					struct iavf_asq_cmd_details *cmd_details)
 {
 	struct iavf_asq_cmd_details details;
-	struct iavf_aq_desc desc;
+	struct libie_aq_desc desc;
 	enum iavf_status status;
 
 	iavf_fill_default_direct_cmd_desc(&desc, iavf_aqc_opc_send_msg_to_pf);
-	desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_SI);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_SI);
 	desc.cookie_high = cpu_to_le32(v_opcode);
 	desc.cookie_low = cpu_to_le32(v_retval);
 	if (msglen) {
-		desc.flags |= cpu_to_le16((u16)(IAVF_AQ_FLAG_BUF
-						| IAVF_AQ_FLAG_RD));
+		desc.flags |= cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF
+						| LIBIE_AQ_FLAG_RD));
 		if (msglen > IAVF_AQ_LARGE_BUF)
-			desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_LB);
+			desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
 		desc.datalen = cpu_to_le16(msglen);
 	}
 	if (!cmd_details) {
-- 
2.42.0

