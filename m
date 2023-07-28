Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 983D6766733
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 10:32:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06E19840F9;
	Fri, 28 Jul 2023 08:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06E19840F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690533134;
	bh=FKG9GCJ1ZTcZLZjsCj/fR/zIxZ18GmvzYnB5gsrNehE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PiUmCY7cECZ89bE2QHiUDkmLgG8dqv3oORxOUKpITBhgH/toAOvVnKFrRVbNz70nL
	 g3t/4IGXyUnYUmIBSSfeYKlfLf/3EYcpRc9L0iMO3NTvTfI5SpogDphFyywfR+IqVq
	 YECoPoF9JmcOTjMRNKTSjMU2jWtee+JP3ocNQ7jejyoCSA5aspt410kTkW56grQYbo
	 VnwOBT2Be0Mk7WClqPkMdp5T13UMOrxmOZ5oD2wQKCZy+RIm7/nhF+1wpYd4wo4Lp0
	 pwAyVykO7cpjzw82yYsiZK/AlHCpC8yTOdZJ64ricBouDb01a2xr+MJ0larRmrNH1Q
	 N8bVplGh+jEfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2W2AfW3zkUeP; Fri, 28 Jul 2023 08:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8C17840C0;
	Fri, 28 Jul 2023 08:32:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8C17840C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB2211BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 08:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EA97840C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 08:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EA97840C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JgP3ixIB5CPV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 08:32:05 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6469583C1A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 08:32:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6469583C1A
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="348822850"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="348822850"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 01:32:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="797361920"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="797361920"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jul 2023 01:32:02 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D4FE437E09;
 Fri, 28 Jul 2023 09:32:01 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 28 Jul 2023 10:30:42 +0200
Message-Id: <20230728083042.13326-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690533125; x=1722069125;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hnc0lMNk+anUERBMUxuJAA1oybg5268RVleOUAuDplc=;
 b=kmgj2nnl18swaiP+2Pkh2ESEHRAIZRnMLV6lwh8o4afolo2RBAdRxoHU
 RsmQCr+cxuixWcqLLLF0YTQaxzYC7IDiuHtYo2XiWMbQ+G6o3qAKT64im
 NPv+aRCMrC08CT/ORn4zcDb9056LaCryXbTweYEWdHxzxW2pUvMc3fmxE
 IFe2eCHZDlVspSt+yoPz9zbJXREC0mtWhQD1e5RFSQ/Ijd5xc9e0zMl5J
 HX8FPaF3A9HuRSyxmqSvuiUR72aIatLAAtekdpPF8Ti/8B0Ph23EZBn7w
 vx5mlk/VwPQEPg/9+D4qj/tXzDdsWxUMeVGeZ4pXPRdP9r3jYpQPCgLQ1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kmgj2nnl
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Support untagged VLAN
 traffic in br offload
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
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When driver receives SWITCHDEV_FDB_ADD_TO_DEVICE notification
with vid = 1, it means that we have to offload untagged traffic.
This is achieved by adding vlan metadata lookup.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: remove unrelated changes, fix typos, add comment in
    ice_eswitch_br_get_lkups_cnt
---
 drivers/net/ethernet/intel/ice/ice_eswitch_br.c | 10 +++++++---
 drivers/net/ethernet/intel/ice/ice_eswitch_br.h |  9 ---------
 2 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 67bfd1f61cdd..5b425260b0eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -104,13 +104,18 @@ ice_eswitch_br_rule_delete(struct ice_hw *hw, struct ice_rule_query_data *rule)
 static u16
 ice_eswitch_br_get_lkups_cnt(u16 vid)
 {
-	return ice_eswitch_br_is_vid_valid(vid) ? 2 : 1;
+	/* if vid == 0 then we need only one lookup (ICE_MAC_OFOS),
+	 * otherwise we need both mac and vlan
+	 */
+	return vid == 0 ? 1 : 2;
 }
 
 static void
 ice_eswitch_br_add_vlan_lkup(struct ice_adv_lkup_elem *list, u16 vid)
 {
-	if (ice_eswitch_br_is_vid_valid(vid)) {
+	if (vid == 1) {
+		ice_rule_add_vlan_metadata(&list[1]);
+	} else if (vid > 1) {
 		list[1].type = ICE_VLAN_OFOS;
 		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
 		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
@@ -400,7 +405,6 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	unsigned long event;
 	int err;
 
-	/* untagged filtering is not yet supported */
 	if (!(bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING) && vid)
 		return;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index 85a8fadb2928..cf7b0e5acfcb 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
@@ -103,15 +103,6 @@ struct ice_esw_br_vlan {
 		     struct ice_esw_br_fdb_work, \
 		     work)
 
-static inline bool ice_eswitch_br_is_vid_valid(u16 vid)
-{
-	/* In trunk VLAN mode, for untagged traffic the bridge sends requests
-	 * to offload VLAN 1 with pvid and untagged flags set. Since these
-	 * flags are not supported, add a MAC filter instead.
-	 */
-	return vid > 1;
-}
-
 void
 ice_eswitch_br_offloads_deinit(struct ice_pf *pf);
 int
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
