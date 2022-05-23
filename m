Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83130530C5E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 May 2022 11:42:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAA0040B43;
	Mon, 23 May 2022 09:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDPcOLx6kQsl; Mon, 23 May 2022 09:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2AD740B45;
	Mon, 23 May 2022 09:42:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E5C21BF378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 09:42:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CA8483E1A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 09:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TFbgmF60MAaX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 May 2022 09:42:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 912CF8332A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 09:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653298956; x=1684834956;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ICZySgEhFf7hhJcW7RsWj3f4H97EWZbzDAnNMM3Dwx8=;
 b=Z2HuyZwM4XvTdjmEU6rNKCn8H5JnRKW7GJ7M6BV4NtJL3J8MAIk+nt4Z
 7hqjBy1JW2p/x0Rdg/dmxBcR6EXQVTPl3LIUvTr4CwjMvU07AF09u7mGS
 MmaozMH3KJnXcNOLK4yrGoFWXcGKbenw6jOplQBPfMe6oZossb3lWQF0g
 6T3xPjZClcVw7OQ+LU0MTOWLpvK1VQw6MBt8JxD+NKZGaJWTxZ+y9q9Ko
 +Ki9AQRydY0dFPlMawWmN08F5WY47muvHPGSRma7DYrRCCoI89cWihCHD
 MRV7rpvFmWBrjc1chIc7KlrvaFGhshlXn4qEAtKJChiPKMq0Wo1CJ/ZQm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="273286306"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="273286306"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 02:42:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="572000300"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 23 May 2022 02:42:35 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 24N9gY99001338
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 10:42:34 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 May 2022 11:41:55 +0200
Message-Id: <20220523094155.388032-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix switchdev rules book
 keeping
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

Adding two filters with same matching criteria ends up with
one rule in hardware with act = ICE_FWD_TO_VSI_LIST.
In order to remove them properly we have to keep the
information about vsi handle which is used in VSI bitmap
(ice_adv_fltr_mgmt_list_entry::vsi_list_info::vsi_map).

Fixes: 0d08a441fb1a ("ice: ndo_setup_tc implementation for PF")
Reported-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: compile issue fixed
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 3acd9f921c44..4abf914a3b3e 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -524,6 +524,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	 */
 	fltr->rid = rule_added.rid;
 	fltr->rule_id = rule_added.rule_id;
+	fltr->dest_id = rule_added.vsi_handle;
 
 exit:
 	kfree(list);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
