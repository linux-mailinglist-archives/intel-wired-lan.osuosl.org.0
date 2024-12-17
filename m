Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FC59F4DA9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 15:27:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0BAB6135F;
	Tue, 17 Dec 2024 14:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qaBKOtIIYCcv; Tue, 17 Dec 2024 14:27:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6620E61367
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734445629;
	bh=edWRsKCtRa2GamUzaD8VT6P9LEDvj44Dbsq+1/rMC2o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=svL479kEVfZBRQHRcIWVciQYMFKIe0s2LzI9ixgS/Homne0iFN+yugnkOt52XUHbH
	 fgiXuSHkFJGcvdeDblyvpGXSlnuP7HcWsUeMFLjvtkimOt/HsxQvu7tRh7Bh63Ib5v
	 FochrsJKJfPBcFeBol5hShlTw2wDZzG6Uh9zlfuTvFK5ZHLAZjmuew6L6IsIYUKTbO
	 fLv/ckIy3USBwe7SGCgE5Q67keZ/h3Ng+0GATxeWBuMgCHP49y4/KDPFaVKL9d5tYU
	 x1/XdAhiC34cc21Kt2ivGc0EyPReGlT39XwC/X7kro7o2XLtB/WC8apwowWJOlGSic
	 rvcaEsD/zSAuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6620E61367;
	Tue, 17 Dec 2024 14:27:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CB45BC5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 14:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC98C849AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 14:27:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Am7iIGmHqMMD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 14:27:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 55FE0849AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55FE0849AE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55FE0849AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 14:27:06 +0000 (UTC)
X-CSE-ConnectionGUID: Brwf3Gi7Tv6JEUUG/ECqPw==
X-CSE-MsgGUID: 55iMpuYNQ3q03d2y2wPuIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="52397274"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="52397274"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 06:27:06 -0800
X-CSE-ConnectionGUID: 1WZCAlHlSS+2piTFZj6v5A==
X-CSE-MsgGUID: mXkszip7SzGTGwoMImNrpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101684766"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 17 Dec 2024 06:27:04 -0800
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6AC7628794;
 Tue, 17 Dec 2024 14:27:02 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Date: Tue, 17 Dec 2024 15:23:01 +0100
Message-Id: <20241217142300.7119-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734445626; x=1765981626;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nN/B48GrYdVh6s5Cevsg4m4Yne9Ly9KKSyM/kd+2oqc=;
 b=bOUrY9AFgsw5Vg3Wy7+9X6KiY2TBFn2Brq49cYpkXd7FgFoQvzDxhjPL
 YL/WJo3EklyFUlTI98+jRr7up8tquuaxflyfnS9bRNgJ3mM2WwSlNGfYM
 zDtJiWSDmdD36nLCliMGZvknUNXQYFfvjROoBWll8DCOQMqvHPIRkC4o4
 J9AggCh+MYqU1BhqmB7xWoynElCrWJhvk+HT1nmpfYLoFpVt3XxDEkDvd
 dI/KYlocMYZO2GJAvMO7LMiY+zyRUgnBUzKjNgqz7CCrNl40PDfvHQFWB
 GM5m1K+36VpZQKNJEGPAM1S8vCRjbI98FFPHoMjhsBnPNiXzt5xvVGnFR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bOUrY9AF
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix
 ice_parser_rt::bst_key array size
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

Fix &ice_parser_rt::bst_key size. It was wrongly set to 10 instead of 20
in the initial impl commit (see Fixes tag). All usage code assumed it was
of size 20. That was also the initial size present up to v2 of the intro
series [2], but halved by v3 [3] refactor described as "Replace magic
hardcoded values with macros." The introducing series was so big that
some ugliness was unnoticed, same for bugs :/

ICE_BST_KEY_TCAM_SIZE and ICE_BST_TCAM_KEY_SIZE were differing by one.
There was tmp variable @j in the scope of edited function, but was not
used in all places. This ugliness is now gone.
I'm moving ice_parser_rt::pg_prio a few positions up, to fill up one of
the holes in order to compensate for the added 10 bytes to the ::bst_key,
resulting in the same size of the whole as prior to the fix, and miminal
changes in the offsets of the fields.

Extend also the debug dump print of the key to cover all bytes. To not
have string with 20 "%02x" and 20 params, switch to
ice_debug_array_w_prefix().

This fix obsoletes Ahmed's attempt at [1].

[1] https://lore.kernel.org/intel-wired-lan/20240823230847.172295-1-ahmed.zaki@intel.com
[2] https://lore.kernel.org/intel-wired-lan/20230605054641.2865142-13-junfeng.guo@intel.com
[3] https://lore.kernel.org/intel-wired-lan/20230817093442.2576997-13-junfeng.guo@intel.com

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/intel-wired-lan/b1fb6ff9-b69e-4026-9988-3c783d86c2e0@stanley.mountain
Fixes: 9a4c07aaa0f5 ("ice: add parser execution main loop")
CC: Ahmed Zaki <ahmed.zaki@intel.com>
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v2: mention printing change in commit msg, add missing space after prefix (Simon)

v1: https://lore.kernel.org/intel-wired-lan/20241216170548.GI780307@kernel.org/T/#mbf984a0faa12a5bdb53460b150201fdd7cc1826a
---
 drivers/net/ethernet/intel/ice/ice_parser.h    |  6 ++----
 drivers/net/ethernet/intel/ice/ice_parser_rt.c | 12 +++++-------
 2 files changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 6509d807627c..4f56d53d56b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -257,7 +257,6 @@ ice_pg_nm_cam_match(struct ice_pg_nm_cam_item *table, int size,
 /*** ICE_SID_RXPARSER_BOOST_TCAM and ICE_SID_LBL_RXPARSER_TMEM sections ***/
 #define ICE_BST_TCAM_TABLE_SIZE		256
 #define ICE_BST_TCAM_KEY_SIZE		20
-#define ICE_BST_KEY_TCAM_SIZE		19
 
 /* Boost TCAM item */
 struct ice_bst_tcam_item {
@@ -401,7 +400,6 @@ u16 ice_xlt_kb_flag_get(struct ice_xlt_kb *kb, u64 pkt_flag);
 #define ICE_PARSER_GPR_NUM	128
 #define ICE_PARSER_FLG_NUM	64
 #define ICE_PARSER_ERR_NUM	16
-#define ICE_BST_KEY_SIZE	10
 #define ICE_MARKER_ID_SIZE	9
 #define ICE_MARKER_MAX_SIZE	\
 		(ICE_MARKER_ID_SIZE * BITS_PER_BYTE - 1)
@@ -431,13 +429,13 @@ struct ice_parser_rt {
 	u8 pkt_buf[ICE_PARSER_MAX_PKT_LEN + ICE_PARSER_PKT_REV];
 	u16 pkt_len;
 	u16 po;
-	u8 bst_key[ICE_BST_KEY_SIZE];
+	u8 bst_key[ICE_BST_TCAM_KEY_SIZE];
 	struct ice_pg_cam_key pg_key;
+	u8 pg_prio;
 	struct ice_alu *alu0;
 	struct ice_alu *alu1;
 	struct ice_alu *alu2;
 	struct ice_pg_cam_action *action;
-	u8 pg_prio;
 	struct ice_gpr_pu pu;
 	u8 markers[ICE_MARKER_ID_SIZE];
 	bool protocols[ICE_PO_PAIR_SIZE];
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
index dedf5e854e4b..d9c38ce27e4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
@@ -125,22 +125,20 @@ static void ice_bst_key_init(struct ice_parser_rt *rt,
 	else
 		key[idd] = imem->b_kb.prio;
 
-	idd = ICE_BST_KEY_TCAM_SIZE - 1;
+	idd = ICE_BST_TCAM_KEY_SIZE - 2;
 	for (i = idd; i >= 0; i--) {
 		int j;
 
 		j = ho + idd - i;
 		if (j < ICE_PARSER_MAX_PKT_LEN)
-			key[i] = rt->pkt_buf[ho + idd - i];
+			key[i] = rt->pkt_buf[j];
 		else
 			key[i] = 0;
 	}
 
-	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost TCAM Key:\n");
-	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n",
-		  key[0], key[1], key[2], key[3], key[4],
-		  key[5], key[6], key[7], key[8], key[9]);
-	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
+	ice_debug_array_w_prefix(rt->psr->hw, ICE_DBG_PARSER,
+				 KBUILD_MODNAME "Generated Boost TCAM Key",
+				 key, ICE_BST_TCAM_KEY_SIZE);
 }
 
 static u16 ice_bit_rev_u16(u16 v, int len)
-- 
2.39.3

