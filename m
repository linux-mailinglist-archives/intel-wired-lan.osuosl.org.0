Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C044F4EEAEF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 12:04:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62B106F652;
	Fri,  1 Apr 2022 10:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6GOctx_WluC; Fri,  1 Apr 2022 10:04:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 544D0612DA;
	Fri,  1 Apr 2022 10:04:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67B581BF376
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 10:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 634EF612DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 10:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyyI87j3sFr7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 10:04:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6B9C61243
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 10:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648807446; x=1680343446;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H8/Mr8ry/6Pw7aFrAFOAt4kb5oKYhQakBj02jM66gJ8=;
 b=QR2OvL4XO8QZQYFpAmoP58ycqBWYFPAiSMSIMUF2GKwLBSthTN1nFkz4
 gVss86sUCJAIPBYjSSrK6kar+T0ULKJey89PBtwHcz+XJWAccUcJFC10r
 bqnMu79RAVs2sTbgF8QEr3BA8DqHJ6nJD0gB+bGEdFx+wy1ll04kK2XME
 vWoifEaVarJtBiobkIxgrZPFJpOt4WrcSwsAJYFnaE4T37sxq9DCjfUpl
 1quGOmJpy5NIblO3bXILFT0UNKg4ml+tmVlfVJZ3Dw2TKEHr6E+z9q+O7
 X0bPIN1noFxoxwxdcWwebMvpKp/tNurfYTD5MFdL9PyL702zUXSMcJ3JR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="240686525"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="240686525"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 03:04:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="788754697"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 01 Apr 2022 03:04:05 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 231A44Tr029396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 1 Apr 2022 11:04:04 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Apr 2022 11:59:58 +0200
Message-Id: <20220401095958.438230-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: return proper error code in
 ice_add_adv_rule
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When number of words exceeds ICE_MAX_CHAIN_WORDS, -ENOSPC
should be returned not -EINVAL. Do not overwrite this
error code in ice_add_tc_flower_adv_fltr.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 5 ++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 1 -
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index ed7130b7abfe..01f7029ec22f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5992,9 +5992,12 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 				word_cnt++;
 	}
 
-	if (!word_cnt || word_cnt > ICE_MAX_CHAIN_WORDS)
+	if (!word_cnt)
 		return -EINVAL;
 
+	if (word_cnt > ICE_MAX_CHAIN_WORDS)
+		return -ENOSPC;
+
 	/* locate a dummy packet */
 	profile = ice_find_dummy_packet(lkups, lkups_cnt, rinfo->tun_type);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index f3a51597f7f6..4cee0fcf91d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -748,7 +748,6 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	} else if (ret) {
 		NL_SET_ERR_MSG_MOD(tc_fltr->extack,
 				   "Unable to add filter due to error");
-		ret = -EIO;
 		goto exit;
 	}
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
