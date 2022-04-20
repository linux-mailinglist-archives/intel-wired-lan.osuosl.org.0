Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7885C508681
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 13:00:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2570A40B94;
	Wed, 20 Apr 2022 11:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G5hcCQ67nfVL; Wed, 20 Apr 2022 11:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EB5940B7A;
	Wed, 20 Apr 2022 11:00:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 713CA1BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E6E24182D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3r38U-swbZx1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 11:00:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7238441826
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650452422; x=1681988422;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C/EDuweWqryjNBJYnIENGduBjX7Mcfaxj5Qo76gnhVU=;
 b=h/c2AZHPFwlb3D71pYvEHXSYWjS/ZLqu5Ep+dVBH3tNiIjG7M0byvy1u
 qW2o44NSTcA/y9pEC4/E2J1ApFSoxyNFM3gnwxonJi71ajuxClPSsILdw
 uJSP7ijw72e2IySpr/cv6MMC3W7Kp3XjDAzJXBiBP+IGb6n2t/dCtWg8c
 nFAe3BW/JWxR5o+DrPLGGTQ+2rxxASxRtCQn27VCrUIvXDORu399jeR6b
 PBby60O0JiNfdqMJzY3lnV13WIeM/gwbO7WYGbxGwby8ulzPhK/qSXCYf
 SQiD3n1UgQEM9v+bJjUZxcJ4dCcM8ppSq4Nt8/HhJcQG1RZWW2WeOumaR w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="261602225"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="261602225"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 04:00:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="658018773"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2022 04:00:21 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 23KB0Kpk031627
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 12:00:20 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Apr 2022 12:55:41 +0200
Message-Id: <20220420105541.275957-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: return ENOSPC when
 exceeding ICE_MAX_CHAIN_WORDS
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
v2: change title as Paul suggested
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 5 ++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 1 -
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 968b96a6e0ac..79ab2128857f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -6265,9 +6265,12 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
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
index 5b300c8cb009..ce6b5f31a1c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -781,7 +781,6 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
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
