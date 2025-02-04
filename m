Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BCFA270EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 13:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0122811AB;
	Tue,  4 Feb 2025 12:06:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Ua5xI0fHOUd; Tue,  4 Feb 2025 12:06:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 418D4811E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738670761;
	bh=y4KNtUUatJrDvXCNZCyB21KRlqrDGc+a6QWFKe9z1ic=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PhniVGhMuUpLYeAAMbnTigDffp9XWxlah6BrkyzPKMmzArK8uLFTTCao2ZXS7zG82
	 p92L+8+FZc7QEerRdy0LhX1WeQIHiLUlbLTQWVbMvQ8wUHfWVPWhaOc8ZfjQhAbOzE
	 Hoikuim7Z7Xd7EvCTcwt2D39XvNDEqeS+HIYISSiav5wkrVwPR6ZUF5i200g0ZHW5q
	 r8Z7rxVz8I3Bv74RnImZSHXR7NRa8QYXdQyR0QT7jgenD04BDqjXkOIMnpQHcLHLab
	 wzj5ZwtOr9wwauGbdLxnC16QhGnB/SpQjBMeetjAap/pPYna7HRp9g221YWFyJmH7J
	 Cj1OC1HWM4aTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 418D4811E3;
	Tue,  4 Feb 2025 12:06:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 546AA12F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41A6C6078D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yDgYE4ao1DiM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 12:05:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E8F560071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E8F560071
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E8F560071
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:57 +0000 (UTC)
X-CSE-ConnectionGUID: 27c/2SONRy6sOyNPxMPa3Q==
X-CSE-MsgGUID: 9GPWPl8cRia9V2XrW6GvbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="38424847"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="38424847"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 04:05:57 -0800
X-CSE-ConnectionGUID: kqq2s/yYQCKkNHWT4tgM4A==
X-CSE-MsgGUID: iJ9oOahwT8eQUiBXIFEskg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147783254"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Feb 2025 04:05:54 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 413A932CAB;
 Tue,  4 Feb 2025 12:05:53 +0000 (GMT)
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
Date: Tue,  4 Feb 2025 12:50:54 +0100
Message-ID: <20250204115111.1652453-5-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204115111.1652453-1-larysa.zaremba@intel.com>
References: <20250204115111.1652453-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738670757; x=1770206757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+gNRs1X2BAvlhEPkTgX809XWcuXH5nlbdN2f+T0v8jA=;
 b=a5rIJb2TEYR8jAItj9BoAbhBH/NktgtFx9GnbQRh/OOIJX1N1Z/cdigC
 /lV3PacKVagOIXxFZzXH/goP5hYrLoVX49Wm4K3ilM4JXunMGrLjFYy+z
 ESqxzxVjpB6MTEY6xx+WzIM4HLwx7k/xLPD/edoFOeZIVM0mik1Bp2Fse
 QQIX66y9/+H5gLmlO/Gv4angnq75UUXP5Dng0gQnzqhMdxoMzTin6EpzR
 /kYbwj8vaBJeoEIo5ptPactBB9qQaXcdfuHnnbJsptYc0G3nJkmDSqnSO
 KTe+sFNNA+RCYakeRQG7U4uVdJzCkFKc1bfBecbElhEDIgUmVS/4y7IaE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a5rIJb2T
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/6] ice: remove headers
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
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index ea39b999a0d0..2acc9ea5b98b 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -12,14 +12,11 @@
 /**
  * ice_tc_count_lkups - determine lookup count for switch filter
  * @flags: TC-flower flags
- * @headers: Pointer to TC flower filter header structure
  * @fltr: Pointer to outer TC filter structure
  *
  * Determine lookup count based on TC flower input for switch filter.
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

