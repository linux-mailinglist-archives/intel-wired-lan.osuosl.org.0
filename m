Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA496A359BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 10:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B826A6FACE;
	Fri, 14 Feb 2025 09:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j7NX0lIshjTa; Fri, 14 Feb 2025 09:09:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16CA66FC3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739524148;
	bh=oB9UsKuIzU7LOCfuexN0BdM4e5cuJ6XCsdT/bbJPKS0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F7oQ5/Jbl7CqqzreEJLygXf6tWKXS+611V3O6VES8keLuU4A3/7xrzyzc19+VjxN7
	 p+wK+dWrNbUq2LDqHQ0FIi2/XusHFlhZBmi27eoHH2pYnlNHXV3trIIx1QgvPZF/oJ
	 +j0bifPyx/wOhJhtP4jJiYZkqa+5G/+/l6f4rGF0w4pHrfA84LbCDqgrHBg75tRII7
	 xwO4+wxTXsAkxOAGlFGC76bY0DoOO/XUgNGJZnslHBsFW+VkmZ0yhf4gxob7XU6QSD
	 qkqd0yI5xa6LgmdQRae+HkQZtT1+PbuBxrFTx9bGuhFr+NgoCGV3b8n5kDGLs5sJpU
	 n6ledbOvScMUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16CA66FC3B;
	Fri, 14 Feb 2025 09:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 244A11E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B5818491F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hbH5qNQKcGav for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 09:09:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 409B584923
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 409B584923
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 409B584923
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:04 +0000 (UTC)
X-CSE-ConnectionGUID: doq8buJUTp6YLJqMGSElxQ==
X-CSE-MsgGUID: Lx7MT/7XREWkr8gbnmZfdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="65617733"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="65617733"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:09:04 -0800
X-CSE-ConnectionGUID: fbkt04u1RDa2WOy+VAF0uA==
X-CSE-MsgGUID: Ehd8NKKNQPW4p0udW+uDVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113145485"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 14 Feb 2025 01:09:01 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0A6BC37B80;
 Fri, 14 Feb 2025 09:08:59 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Date: Fri, 14 Feb 2025 09:50:38 +0100
Message-ID: <20250214085215.2846063-5-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250214085215.2846063-1-larysa.zaremba@intel.com>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739524144; x=1771060144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+SSx3/ctdiG9A9qumt7VFQMFd0KSKxENjMKVcnqhLVo=;
 b=lm5ppjO3AtjbXG5JXNGhG0qxdPn4tvoFMvJODa2hDpH+0Pg66OAhS/Lr
 VpmnMiqKoNILyNRgyE0Q4w3rT0uCVU4UeEZNBM1Ji5U3VkuKkapibZAhJ
 F2skxcCnK2LjYOI/5In0H1+y82j6Me4u3Qa5DBqhSLStJoddDXdd5R63t
 dwAp29eJ7U3vlfuIYLqoM/hwLg9npt4I4NvbOJz2Bgep/01sGcd1XqPBB
 CZJ0aB40lAzLt7HJcq358ogaJvUespwwiqikPx7zMkSdJKMKXi4vgmmYy
 zfQvfA/J83vRnhmgFbsXr2R0BZ/jbn4ZX62CXRW5oxdF0845oBPi/YI0+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lm5ppjO3
Subject: [Intel-wired-lan] [PATCH iwl-next v4 4/6] ice: remove headers
 argument from ice_tc_count_lkups
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

Remove the headers argument from the ice_tc_count_lkups() function, because
it is not used anywhere.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index ea39b999a0d0..d8d28d74222a 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -12,14 +12,11 @@
 /**
  * ice_tc_count_lkups - determine lookup count for switch filter
  * @flags: TC-flower flags
- * @headers: Pointer to TC flower filter header structure
  * @fltr: Pointer to outer TC filter structure
  *
- * Determine lookup count based on TC flower input for switch filter.
+ * Return: lookup count based on TC flower input for a switch filter.
  */
-static int
-ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
-		   struct ice_tc_flower_fltr *fltr)
+static int ice_tc_count_lkups(u32 flags, struct ice_tc_flower_fltr *fltr)
 {
 	int lkups_cnt = 1; /* 0th lookup is metadata */
 
@@ -770,7 +767,6 @@ static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
 static int
 ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 {
-	struct ice_tc_flower_lyr_2_4_hdrs *headers = &fltr->outer_headers;
 	struct ice_adv_rule_info rule_info = { 0 };
 	struct ice_rule_query_data rule_added;
 	struct ice_hw *hw = &vsi->back->hw;
@@ -785,7 +781,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		return -EOPNOTSUPP;
 	}
 
-	lkups_cnt = ice_tc_count_lkups(flags, headers, fltr);
+	lkups_cnt = ice_tc_count_lkups(flags, fltr);
 	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
 	if (!list)
 		return -ENOMEM;
@@ -985,7 +981,6 @@ static int
 ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 			   struct ice_tc_flower_fltr *tc_fltr)
 {
-	struct ice_tc_flower_lyr_2_4_hdrs *headers = &tc_fltr->outer_headers;
 	struct ice_adv_rule_info rule_info = {0};
 	struct ice_rule_query_data rule_added;
 	struct ice_adv_lkup_elem *list;
@@ -1021,7 +1016,7 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 			return PTR_ERR(dest_vsi);
 	}
 
-	lkups_cnt = ice_tc_count_lkups(flags, headers, tc_fltr);
+	lkups_cnt = ice_tc_count_lkups(flags, tc_fltr);
 	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
 	if (!list)
 		return -ENOMEM;
-- 
2.43.0

