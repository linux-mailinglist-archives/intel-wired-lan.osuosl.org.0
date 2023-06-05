Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24736721C17
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:45:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE7F160C03;
	Mon,  5 Jun 2023 02:45:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE7F160C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685933118;
	bh=xOnG6BU+pTPmTn8cP2wz8d+CdWXNUvhIRMIBtao8nj4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vIAKgdLvuLb8Jof3QkWVqnS9SfMKkuKoS0ljJp2JvIM5/XQeAf+8PTCX4aRq1m9/C
	 shAIVDVGm+BNX488JMK4IzDBN2wGiFjGbC6qC8Zb3cJ39NSLNRUIzI5pSNsPOouFWZ
	 UCNAaMaFsEULPmIJV8udsOrnE3dWttONBaO1i9kABIt0gh8CH1ZwP7Qgq04bCD6ZaF
	 p7SNvAYXt9Rd9++lW/wguboNOWVJq6U4inUHw4qZArDAU/wTB2H86gVT/T/aETfZz+
	 kohyGTeFMFUILBE4Ipl6AJZF/q5lJ8e9NYKu2SR2CenyH9EHzJv3twr8HCnXTma+gD
	 tPBUNJy2wgOIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ue3iU6i_NzOU; Mon,  5 Jun 2023 02:45:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EDF960BB9;
	Mon,  5 Jun 2023 02:45:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EDF960BB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 23D451BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F11E481F97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F11E481F97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g3bdAYqFI7J9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:45:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3796781FDA
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3796781FDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="355119132"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="355119132"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="821001566"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="821001566"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2023 19:45:03 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:44:52 +0800
Message-Id: <20230605024453.2378898-3-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605024453.2378898-1-junfeng.guo@intel.com>
References: <20230605024453.2378898-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685933105; x=1717469105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IWy/OydvYYzWt6klA2GM6wpRTHwXjxC1U0vzhsGoxmU=;
 b=Bs7Ao2PdEbBarguACk4O//c2Z8UUAmQd0Lm/NZfsAvLaIqPSalTuq24d
 CQPo8DE+eNb3ILdTf0mWn5evIwt+HTSLXgDdPHZuBBKTjfAbkhu2wpGu/
 xuGWwjV7VwWfO9xWQxY3qfJbvucL4VQE4QdH6mN8fJOFcjl9OhKZmEJxl
 8sh8aPX3oCydE+vYMH1qkMlvndjsHjJDPc3wb5bBnVn8cgtRPpi6zjpNb
 otaF+bapgIUtqkptT06hZX9UwJZYmGISRr8+Twtzp7M9EpYRk7YIAt4tx
 t08gqJ82uKutcGf/m5s1jbYZqCpih5ofHdDrgoholEd8WhVv9bSRjiUha
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bs7Ao2Pd
Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: add method to disable
 FDIR SWAP option
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The SWAP Flag in the FDIR Programming Descriptor doesn't work, thus
add a method to disable the FDIR SWAP option by setting the swap and
inset register set with certain values. The boolean fd_swap is used
to enable/disable the SWAP option.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 49 ++++++++++++++++++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  2 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
 3 files changed, 49 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 5ce413965930..2362be913101 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2954,6 +2954,48 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 }
 
 /**
+ * ice_disable_fd_swap - set register appropriately to disable FD swap
+ * @hw: pointer to the HW struct
+ * @prof_id: profile ID
+ */
+static void
+ice_disable_fd_swap(struct ice_hw *hw, u16 prof_id)
+{
+	u8 swap_val, i;
+
+	swap_val = ICE_SWAP_VALID;
+
+	/* Since the SWAP Flag in the Programming Desc doesn't work,
+	 * here add method to disable the SWAP Option via setting
+	 * certain SWAP and INSET register sets.
+	 */
+	for (i = 0; i < hw->blk[ICE_BLK_FD].es.fvw / 4; i++) {
+		u32 raw_swap, raw_in;
+		u8 j;
+
+		raw_swap = 0;
+		raw_in = 0;
+
+		for (j = 0; j < 4; j++) {
+			raw_swap |= (swap_val++) << (j * BITS_PER_BYTE);
+			raw_in |= ICE_INSET_DFLT << (j * BITS_PER_BYTE);
+		}
+
+		/* write the FDIR swap register set */
+		wr32(hw, GLQF_FDSWAP(prof_id, i), raw_swap);
+
+		ice_debug(hw, ICE_DBG_INIT, "swap wr(%d, %d): %x = %08x\n",
+			  prof_id, i, GLQF_FDSWAP(prof_id, i), raw_swap);
+
+		/* write the FDIR inset register set */
+		wr32(hw, GLQF_FDINSET(prof_id, i), raw_in);
+
+		ice_debug(hw, ICE_DBG_INIT, "inset wr(%d, %d): %x = %08x\n",
+			  prof_id, i, GLQF_FDINSET(prof_id, i), raw_in);
+	}
+}
+
+/*
  * ice_add_prof - add profile
  * @hw: pointer to the HW struct
  * @blk: hardware block
@@ -2963,6 +3005,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
  * @attr_cnt: number of elements in attr array
  * @es: extraction sequence (length of array is determined by the block)
  * @masks: mask for extraction sequence
+ * @fd_swap: enable/disable FDIR paired src/dst fields swap option
  *
  * This function registers a profile, which matches a set of PTYPES with a
  * particular extraction sequence. While the hardware profile is allocated
@@ -2972,7 +3015,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks)
+	     struct ice_fv_word *es, u16 *masks, bool fd_swap)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
@@ -2992,7 +3035,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 		status = ice_alloc_prof_id(hw, blk, &prof_id);
 		if (status)
 			goto err_ice_add_prof;
-		if (blk == ICE_BLK_FD) {
+		if (blk == ICE_BLK_FD && fd_swap) {
 			/* For Flow Director block, the extraction sequence may
 			 * need to be altered in the case where there are paired
 			 * fields that have no match. This is necessary because
@@ -3003,6 +3046,8 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 			status = ice_update_fd_swap(hw, prof_id, es);
 			if (status)
 				goto err_ice_add_prof;
+		} else if (blk == ICE_BLK_FD) {
+			ice_disable_fd_swap(hw, prof_id);
 		}
 		status = ice_update_prof_masking(hw, blk, prof_id, masks);
 		if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 7af7c8e9aa4e..2270e861fd39 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -42,7 +42,7 @@ bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype);
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks);
+	     struct ice_fv_word *es, u16 *masks, bool fd_swap);
 int
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index ef103e47a8dc..ff7740df28c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1402,7 +1402,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	/* Add a HW profile for this flow profile */
 	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
 			      params->attr, params->attr_cnt, params->es,
-			      params->mask);
+			      params->mask, true);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
