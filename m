Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8049A9ECD2A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Dec 2024 14:28:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B492D80E3A;
	Wed, 11 Dec 2024 13:28:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LebyAoHfOGjg; Wed, 11 Dec 2024 13:28:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBDBE80B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733923683;
	bh=cAeTSt4MomjSAG6yFK/FIFQ2tgj0pksWvKoS5iYjYZw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cuClJh3S0n+5niQT96JSe5f8K/6QuQgAOEDXL9nPL08uuyCNUS/0ckUyA8ArhyCGn
	 +fhI33UcMtKi7n7dt/dPL1/Mr+gzZQp0+S+iVxMkt7mVmo2Txyes6gOET//cG4roM3
	 6A9MUEszI2Xu4ZWnBwT6oM6uEfH2jCSs7wR3UbIRZwNK+uzKQhYIBQ0wH9rg2yj2xS
	 zU0cGIgQ3edD2WbaDHhwEI7YFQpqA/GRlWnfAycUy1EMNhL/mtpLjLKn5mYplhmPt/
	 Pjk+sJuUdlXrZBFwVnUmJdYMQZSyxSMsjUOaMtqPjnB0rVxarghepbA1MuF5Rw2+ZW
	 se3UYy5Zqdp/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBDBE80B30;
	Wed, 11 Dec 2024 13:28:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D9821962
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 13:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADF1080B30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 13:28:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LnJVsVs5B1ed for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Dec 2024 13:28:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9A40280DC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A40280DC4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A40280DC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 13:27:59 +0000 (UTC)
X-CSE-ConnectionGUID: VC4xNLulQWGWkB4lCFB1xQ==
X-CSE-MsgGUID: lrrd3Ly5QDmFNl0OexZL/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="51718714"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="51718714"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 05:28:00 -0800
X-CSE-ConnectionGUID: +UlZoILzTdWHQ2h5ZADubw==
X-CSE-MsgGUID: OyAPTjnMSyWs17abjU8kiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100750081"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 11 Dec 2024 05:27:57 -0800
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.31])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 19C922FC57;
 Wed, 11 Dec 2024 13:27:54 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Date: Wed, 11 Dec 2024 14:26:36 +0100
Message-ID: <20241211132745.112536-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733923681; x=1765459681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BB6MYlp5Lzw9MQ32QhUcsEN/5sCNPgKSxkS5wq40AQA=;
 b=ID7VIbE9IY/fbql+w4G499PnB6Ohp6iq9PkX9Wh02z86QEkvmz8pkI4+
 5kYyOkQD3OSYKvy6lImKDUrxLsJSUEmX4TUcYaQ+7DNPM3sucUDgRgvli
 DrjW8QW7VUJsXVu1Dd0O8dEwMcpJmA9jSdT1KmeT3OA4Fngt10cyxGpYW
 dFNEjpdxygiISpeHWDpSCiYSjXwrczLQaTGOL0OZsVDjZNVMmvBk9n1mF
 RvMPLALz/uirmZzVQzYk92BPexW/HGXiNf/lOfifcrFZoQnHiNfmjGx3k
 o8CJumPtrwHLLRvig5PufJMc6bC8IjB8+xRYxmzPKAJT0iTBeTsPxsqjI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ID7VIbE9
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix ice_parser_rt::bst_key
 array size
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

base-commit: 51a00be6a0994da2ba6b4ace3b7a0d9373b4b25e
-- 
2.46.0

