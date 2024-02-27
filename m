Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2F98684EF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 01:15:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 176B360B24;
	Tue, 27 Feb 2024 00:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWhv93WE_Tu3; Tue, 27 Feb 2024 00:15:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4625360B12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708992912;
	bh=idIMnUCvLby8rtoYfm+sCZFba58MTKhEqQtY0vSsNUA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8YqW9r5N6VdupIRkVYafIjR9LdvDyWvdu3mJcAqcSHq3RteI9t/Y1+qEm93RymUm4
	 nVBmjMUSGJMum91HqIHo9hM51TJDjsA5JQ68PEYjiPRc+uHUcMfxtadYybW43MSIxP
	 mAbhDCWWHYXinJGXEnHZwpZpYKnvMEyz94iEJAnEzzjiqBPbbNrdE3pvKHGsL74Q3H
	 RiCGVnH4dSUW3HaZibYiuasn27OR4rwcYsVo8hvwFZAHMr8DTlmYPztMHvEIgOtTrb
	 vnxWC/AHyD4ygGiTPbstMG8W3GllrsKEFUr906nGSse+esE165kygUzrj2nc3qdy1j
	 vud0iGJCdLwmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4625360B12;
	Tue, 27 Feb 2024 00:15:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D0551BF35D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55F9340AD6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l6nBylU6UP5E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 00:15:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 99CE040B31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99CE040B31
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 99CE040B31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="7128812"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7128812"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 16:15:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6816131"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 16:15:00 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 26 Feb 2024 16:14:56 -0800
Message-ID: <20240227001456.3858886-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240227001456.3858886-1-jacob.e.keller@intel.com>
References: <20240227001456.3858886-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708992903; x=1740528903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GsCePI1DqrWoww1qukrW6bcYWmXEgtccb1XVI0Rr6zM=;
 b=C8r+IjClduaQCaXI3HLHrrF1JkHXnfXowFcehBLy14yesxmLU1fN//e2
 I71iyF82DQZu3RStTrjxFIeXu4PlIs1RyGCLx7gyio56IPFBfgpWeJ6W0
 4vZMNJ2gQWGohW35fJcWpcEfX5r4zEmB1osVyV9m/DHRB/QvhmwfqY0jq
 oRmE+D/+fv86rlIIcgjnarnYQNXo0VDFO3DF+hSvkwY0xr6RuAShGO+2E
 Lvj0D1V9FKC4LbL4FTmJ0CvWZFI8QREA2FiZIqkb+Yl1KjWQ1ghaMH9Ja
 ZguVRGvitwVw3E8xddPwQasfh+SMv7uEACsbTYaCckwJck3FKAcTrWTNY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C8r+IjCl
Subject: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: cleanup line splitting
 for context set functions
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The indentation for ice_set_ctx and ice_write_rxq_ctx breaks the function
name after the return type. This style of breaking is used a lot throughout
the ice driver, even in cases where its not actually helpful for
readability. We no longer prefer this style of line splitting in the
driver, and new code is avoiding it.

Normally, I would leave this alone unless the actual function contents or
description needed updating. However, a future change is going to add
inverse functions for converting packed context to unpacked context
structures. To keep this code uniform with the existing set functions, fix
up the style to the modern format of keeping the type on the same line.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 12 +++++-------
 drivers/net/ethernet/intel/ice/ice_common.h | 10 ++++------
 2 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ffe44f2d3dc5..ae97b248261a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1397,9 +1397,8 @@ static const struct ice_ctx_ele ice_rlan_ctx_info[] = {
  * it to HW register space and enables the hardware to prefetch descriptors
  * instead of only fetching them on demand
  */
-int
-ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
-		  u32 rxq_index)
+int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
+		      u32 rxq_index)
 {
 	u8 ctx_buf[ICE_RXQ_CTX_SZ] = { 0 };
 
@@ -4516,11 +4515,10 @@ static void ice_pack_ctx_qword(u8 *src_ctx, u8 *dest_ctx,
  * @hw: pointer to the hardware structure
  * @src_ctx:  pointer to a generic non-packed context structure
  * @dest_ctx: pointer to memory for the packed structure
- * @ce_info:  a description of the structure to be transformed
+ * @ce_info: List of Rx context elements
  */
-int
-ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
-	    const struct ice_ctx_ele *ce_info)
+int ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
+		const struct ice_ctx_ele *ce_info)
 {
 	int f;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 32fd10de620c..ffb22c7ce28b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -53,9 +53,8 @@ int ice_get_caps(struct ice_hw *hw);
 
 void ice_set_safe_mode_caps(struct ice_hw *hw);
 
-int
-ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
-		  u32 rxq_index);
+int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
+		      u32 rxq_index);
 
 int
 ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
@@ -72,9 +71,8 @@ bool ice_check_sq_alive(struct ice_hw *hw, struct ice_ctl_q_info *cq);
 int ice_aq_q_shutdown(struct ice_hw *hw, bool unloading);
 void ice_fill_dflt_direct_cmd_desc(struct ice_aq_desc *desc, u16 opcode);
 extern const struct ice_ctx_ele ice_tlan_ctx_info[];
-int
-ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
-	    const struct ice_ctx_ele *ce_info);
+int ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
+		const struct ice_ctx_ele *ce_info);
 
 extern struct mutex ice_global_cfg_lock_sw;
 
-- 
2.41.0

