Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5099E949973
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 22:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA96140520;
	Tue,  6 Aug 2024 20:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kjargd6nQ0VC; Tue,  6 Aug 2024 20:46:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F377A404A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722977213;
	bh=R6U82b5nOww9NT5nFYh4XpVuTnN+8wOXEyW9hWMFv20=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nqx82BFDiP+CzH8FRIXcR5xH/HWSTBSRtx6ywFWP7xp5UoWGQuCV3Q/k1Tm0p79RT
	 5q2SZdKwqFPGqnnOoL8TneC6bFwgZW7A3tP4kV+vjT5KuSKUG3DxjqOxqnomdIyuXf
	 sARXjlefQ83+kS3zBMTwbl0uzeNEBc4bovjrbNjfymb47WxA+wR4XLCzxEi3dsFb8r
	 UjMmW1s4Ef+VQ/2jhzYVjSaDNXufPrRDCmox6cBRc62slcslel4LstdFYsD3VdFs5m
	 xa6lb+Ok8XKH4okYhqeJOg/5hVZI0uuuX0wNRYBb3sqB6Z9ILJOsipc1bSrGPy33CT
	 v1f0jNqNCNVmg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F377A404A3;
	Tue,  6 Aug 2024 20:46:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 101A81BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D21D14010F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gnPokI8TtB4m for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 11A9C4000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11A9C4000B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11A9C4000B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
X-CSE-ConnectionGUID: 5FTI8DWdQkeONVdhfLrP/w==
X-CSE-MsgGUID: CyiX572pSw+VpR2M9lnn6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20835923"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20835923"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
X-CSE-ConnectionGUID: QuHMXrvyQN+yQCTbdCCp2A==
X-CSE-MsgGUID: PYjUgGLTTY+MLPaqJYfRpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56331586"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 06 Aug 2024 13:46:24 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-e810-live-migration-rd32-poll-timeout-v1-4-b5ada29ce703@intel.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722977200; x=1754513200;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=+IUHr6POBfoc8604aaV0f9IRRVTuMWxlinGhT0aYGNs=;
 b=fgPRiHFrblzaNBHEQuRUdRRYb/mPSdukpEC7msEKjb/I37GGVD498IZG
 owQJcXOidgKXl2Zd7gCf7bTXgVRjpfRHnbyZgEEpgkCY1Hq1xNkqCC3zE
 d7AFdIfs3e3vnCx9RaXcfGsKJRSc+cIoouAOWm1XroZYUGowwfxb20BpG
 Zs3aMnodzXPlYApvWOoXLtoTwm7KTG8rKqGUbX5dwOWkl68njWbFuUP4m
 vT1wy/Gq6gclJ5Gh8d3adp9Ch68xcyiaboEDujNQIvzHlV07rJnJl8JWo
 RcPgJXn6N7SuKHI+UBDQvYlLnEh/d4aZdaxM+xXsO+qQBmMI8vRg+VYk+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fgPRiHFr
Subject: [Intel-wired-lan] [PATCH iwl-next 4/7] ice: stop intermixing AQ
 commands/responses debug dumps
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacek Wierzbicki <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

The ice_debug_cq() function is called to generate a debug log of control
queue messages both sent and received. It currently does this over a
potential total of 6 different printk invocations.

The main logic prints over 4 calls to ice_debug():

 1. The metadata including opcode, flags, datalength and return value.
 2. The cookie in the descriptor.
 3. The parameter values.
 4. The address for the databuffer.

In addition, if the descriptor has a data buffer, it can be logged with two
additional prints:

 5. A message indicating the start of the data buffer.
 6. The actual data buffer, printed using print_hex_dump_debug.

This can lead to trouble in the event that two different PFs are logging
messages. The messages become intermixed and it may not be possible to
determine which part of the output belongs to which control queue message.

To fix this, it needs to be possible to unambiguously determine which
messages belong together. This is trivial for the messages that comprise
the main printing. Combine them together into a single invocation of
ice_debug().

The message containing a hex-dump of the data buffer is a bit more
complicated. This is printed separately as part of print_hex_dump_debug.
This function takes a prefix, which is currently always set to
KBUILD_MODNAME. Extend this prefix to include the buffer address for the
databuffer, which is printed as part of the main print, and which is
guaranteed to be unique for each buffer.

Refactor the ice_debug_array(), introducing an ice_debug_array_w_prefix().
Build the prefix by combining KBUILD_MODNAME with the databuffer address
using snprintf().

These changes make it possible to unambiguously determine what data belongs
to what control queue message.

Reported-by: Jacek Wierzbicki <jacek.wierzbicki@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_osdep.h    | 24 ++++++++++++++----------
 drivers/net/ethernet/intel/ice/ice_controlq.c | 21 +++++++++++----------
 2 files changed, 25 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
index 9882e6f3b26d..b9f383494b3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_osdep.h
+++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
@@ -43,11 +43,10 @@ struct device *ice_hw_to_dev(struct ice_hw *hw);
 #define ice_debug(hw, type, fmt, args...) \
 	dev_dbg(ice_hw_to_dev(hw), fmt, ##args)
 
-#define ice_debug_array(hw, type, rowsize, groupsize, buf, len) \
-	print_hex_dump_debug(KBUILD_MODNAME " ",		\
-			     DUMP_PREFIX_OFFSET, rowsize,	\
-			     groupsize, buf, len, false)
-#else
+#define _ice_debug_array(hw, type, prefix, rowsize, groupsize, buf, len) \
+	print_hex_dump_debug(prefix, DUMP_PREFIX_OFFSET,		 \
+			     rowsize, groupsize, buf, len, false)
+#else /* CONFIG_DYNAMIC_DEBUG */
 #define ice_debug(hw, type, fmt, args...)			\
 do {								\
 	if ((type) & (hw)->debug_mask)				\
@@ -55,16 +54,15 @@ do {								\
 } while (0)
 
 #ifdef DEBUG
-#define ice_debug_array(hw, type, rowsize, groupsize, buf, len) \
+#define _ice_debug_array(hw, type, prefix, rowsize, groupsize, buf, len) \
 do {								\
 	if ((type) & (hw)->debug_mask)				\
-		print_hex_dump_debug(KBUILD_MODNAME,		\
-				     DUMP_PREFIX_OFFSET,	\
+		print_hex_dump_debug(prefix, DUMP_PREFIX_OFFSET,\
 				     rowsize, groupsize, buf,	\
 				     len, false);		\
 } while (0)
-#else
-#define ice_debug_array(hw, type, rowsize, groupsize, buf, len) \
+#else /* DEBUG */
+#define _ice_debug_array(hw, type, prefix, rowsize, groupsize, buf, len) \
 do {								\
 	struct ice_hw *hw_l = hw;				\
 	if ((type) & (hw_l)->debug_mask) {			\
@@ -82,4 +80,10 @@ do {								\
 #endif /* DEBUG */
 #endif /* CONFIG_DYNAMIC_DEBUG */
 
+#define ice_debug_array(hw, type, rowsize, groupsize, buf, len) \
+	_ice_debug_array(hw, type, KBUILD_MODNAME, rowsize, groupsize, buf, len)
+
+#define ice_debug_array_w_prefix(hw, type, prefix, buf, len) \
+	_ice_debug_array(hw, type, prefix, 16, 1, buf, len)
+
 #endif /* _ICE_OSDEP_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index ddf07b773313..020600de9533 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -936,17 +936,14 @@ static void ice_debug_cq(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	datalen = le16_to_cpu(cq_desc->datalen);
 	flags = le16_to_cpu(cq_desc->flags);
 
-	ice_debug(hw, ICE_DBG_AQ_DESC, "%s %s: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n",
+	ice_debug(hw, ICE_DBG_AQ_DESC, "%s %s: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n\tcookie (h,l) 0x%08X 0x%08X\n\tparam (0,1)  0x%08X 0x%08X\n\taddr (h,l)   0x%08X 0x%08X\n",
 		  ice_ctl_q_str(cq->qtype), response ? "Response" : "Command",
 		  le16_to_cpu(cq_desc->opcode), flags, datalen,
-		  le16_to_cpu(cq_desc->retval));
-	ice_debug(hw, ICE_DBG_AQ_DESC, "\tcookie (h,l) 0x%08X 0x%08X\n",
+		  le16_to_cpu(cq_desc->retval),
 		  le32_to_cpu(cq_desc->cookie_high),
-		  le32_to_cpu(cq_desc->cookie_low));
-	ice_debug(hw, ICE_DBG_AQ_DESC, "\tparam (0,1)  0x%08X 0x%08X\n",
+		  le32_to_cpu(cq_desc->cookie_low),
 		  le32_to_cpu(cq_desc->params.generic.param0),
-		  le32_to_cpu(cq_desc->params.generic.param1));
-	ice_debug(hw, ICE_DBG_AQ_DESC, "\taddr (h,l)   0x%08X 0x%08X\n",
+		  le32_to_cpu(cq_desc->params.generic.param1),
 		  le32_to_cpu(cq_desc->params.generic.addr_high),
 		  le32_to_cpu(cq_desc->params.generic.addr_low));
 	/* Dump buffer iff 1) one exists and 2) is either a response indicated
@@ -954,10 +951,14 @@ static void ice_debug_cq(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	 */
 	if (buf && cq_desc->datalen &&
 	    (flags & (ICE_AQ_FLAG_DD | ICE_AQ_FLAG_CMP | ICE_AQ_FLAG_RD))) {
-		ice_debug(hw, ICE_DBG_AQ_DESC_BUF, "Buffer:\n");
+		char prefix[] = KBUILD_MODNAME " 0x12341234 0x12341234 ";
 
-		ice_debug_array(hw, ICE_DBG_AQ_DESC_BUF, 16, 1, buf,
-				min_t(u16, buf_len, datalen));
+		sprintf(prefix, KBUILD_MODNAME " 0x%08X 0x%08X ",
+			le32_to_cpu(cq_desc->params.generic.addr_high),
+			le32_to_cpu(cq_desc->params.generic.addr_low));
+		ice_debug_array_w_prefix(hw, ICE_DBG_AQ_DESC_BUF, prefix,
+					 buf,
+					 min_t(u16, buf_len, datalen));
 	}
 }
 

-- 
2.46.0.124.g2dc1a81c8933

