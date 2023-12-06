Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 500CE8063E1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D816761437;
	Wed,  6 Dec 2023 01:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D816761437
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824535;
	bh=5sAvka7dn9aBmyUBo91I2PcwrplhvQx1jTSekMhSECU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FFmKK8GkdisQGUQgQrbuPdUohQpvmpTeFA76Do5MgHpPi4EbRodsOJu4E5tJZiXUm
	 bddSsG5WqMMabH+LjmZDk7W5v0eNSvie2oT0Nxu7HB6i8zLZ6ZONYXjL7L0DO62JfI
	 H6+snflgVINWw8oLHUXh23jAK76JTUluUVptFgxkOLA65bqGof5JCBcYlxW5GUvYrx
	 EBN3m5prlu8xu8AJR8Zh3G9En/2JYObG9aswLSpw3em34WNGGHYcas+QIELwbS84dZ
	 6ekjt5CZN/lAilocACXw4cA7gLT0alTPiREH/RceEBb33B3AaH3oIh2l9HRvKhdr6S
	 /eCfB2ysrSmSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2o3MB5GgLU5Q; Wed,  6 Dec 2023 01:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7882861412;
	Wed,  6 Dec 2023 01:02:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7882861412
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 689171BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E35E82C35
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E35E82C35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2gER35YYvcw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9500182C5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9500182C5E
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700312"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700312"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655270"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655270"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:34 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:01:09 -0800
Message-Id: <20231206010114.2259388-11-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824496; x=1733360496;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gaxU5pnC2jcs9AjhNbkSjjHHEQSQMSvr3xD2J9iABgE=;
 b=hAOfP2Jm7klSBJuwyTLHzDw0iqY3QH9+osMxr2ZqFkb34cByuLH7yB/0
 Q7H4yimzuUqdTwBb/IXjGhmkCHGCnCLszxzU+sJCcffYPCrSggTubdwNh
 3T6qrQ4wxwi33lD2Qzfb5JLEvJOEqEJt6g3oMb8TY/pkI7CNHj9RVg3lm
 V4M8vA5jW9YjKv8tbDBw4CIY3eZIbkwUc3i9XT3UuIVxzQAzwmkgMnXQP
 BQUfyICCCsFJMbtzutuNfNQ6ZZfd3uKZtTKKOP0h6tBr3zqbSaQ/Qqbs2
 vGpuZLV4GXPyzn9Vncm6e4ETnVUXzcVITsaecqGBBw77/qS72M/tP1kQy
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hAOfP2Jm
Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/15] igc: field get
 conversion
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Julia Lawall <Julia.Lawall@inria.fr>, aleksander.lobakin@intel.com,
 marcin.szycik@linux.intel.com, horms@kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor the igc driver to use FIELD_GET() for mask and shift reads,
which reduces lines of code and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired in a later patch.

@get@
constant shift,mask;
type T;
expression a;
@@
-((T)((a) & mask) >> shift)
+FIELD_GET(mask, a)

and applied via:
spatch --sp-file field_prep.cocci --in-place --dir \
 drivers/net/ethernet/intel/

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 6 ++----
 drivers/net/ethernet/intel/igc/igc_i225.c | 5 ++---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 ++----
 drivers/net/ethernet/intel/igc/igc_phy.c  | 4 ++--
 4 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index a1d815af507d..9fae8bdec2a7 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -68,8 +68,7 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)
 	u32 eecd = rd32(IGC_EECD);
 	u16 size;
 
-	size = (u16)((eecd & IGC_EECD_SIZE_EX_MASK) >>
-		     IGC_EECD_SIZE_EX_SHIFT);
+	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
 
 	/* Added to a constant, "size" becomes the left-shift value
 	 * for setting word_size.
@@ -162,8 +161,7 @@ static s32 igc_init_phy_params_base(struct igc_hw *hw)
 	phy->reset_delay_us	= 100;
 
 	/* set lan id */
-	hw->bus.func = (rd32(IGC_STATUS) & IGC_STATUS_FUNC_MASK) >>
-			IGC_STATUS_FUNC_SHIFT;
+	hw->bus.func = FIELD_GET(IGC_STATUS_FUNC_MASK, rd32(IGC_STATUS));
 
 	/* Make sure the PHY is in a good state. Several people have reported
 	 * firmware leaving the PHY's page select register set to something
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index d2562c8e8015..0dd61719f1ed 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -579,9 +579,8 @@ s32 igc_set_ltr_i225(struct igc_hw *hw, bool link)
 
 			/* Calculate tw_system (nsec). */
 			if (speed == SPEED_100) {
-				tw_system = ((rd32(IGC_EEE_SU) &
-					     IGC_TW_SYSTEM_100_MASK) >>
-					     IGC_TW_SYSTEM_100_SHIFT) * 500;
+				tw_system = FIELD_GET(IGC_TW_SYSTEM_100_MASK,
+						      rd32(IGC_EEE_SU)) * 500;
 			} else {
 				tw_system = (rd32(IGC_EEE_SU) &
 					     IGC_TW_SYSTEM_1000_MASK) * 500;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d949289a3ddb..ba8d3fe186ae 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3712,8 +3712,7 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
 	}
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK) >>
-			   VLAN_PRIO_SHIFT;
+		int prio = FIELD_GET(VLAN_PRIO_MASK, rule->filter.vlan_tci);
 
 		err = igc_add_vlan_prio_filter(adapter, prio, rule->action);
 		if (err)
@@ -3735,8 +3734,7 @@ static void igc_disable_nfc_rule(struct igc_adapter *adapter,
 		igc_del_etype_filter(adapter, rule->filter.etype);
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK) >>
-			   VLAN_PRIO_SHIFT;
+		int prio = FIELD_GET(VLAN_PRIO_MASK, rule->filter.vlan_tci);
 
 		igc_del_vlan_prio_filter(adapter, prio);
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index d0d9e7170154..7cd8716d2ffa 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -727,7 +727,7 @@ static s32 igc_write_xmdio_reg(struct igc_hw *hw, u16 addr,
  */
 s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data)
 {
-	u8 dev_addr = (offset & GPY_MMD_MASK) >> GPY_MMD_SHIFT;
+	u8 dev_addr = FIELD_GET(GPY_MMD_MASK, offset);
 	s32 ret_val;
 
 	offset = offset & GPY_REG_MASK;
@@ -758,7 +758,7 @@ s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data)
  */
 s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data)
 {
-	u8 dev_addr = (offset & GPY_MMD_MASK) >> GPY_MMD_SHIFT;
+	u8 dev_addr = FIELD_GET(GPY_MMD_MASK, offset);
 	s32 ret_val;
 
 	offset = offset & GPY_REG_MASK;
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
