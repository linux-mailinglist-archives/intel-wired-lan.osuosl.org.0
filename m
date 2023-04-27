Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0DE6F005A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Apr 2023 07:16:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 164B3403AC;
	Thu, 27 Apr 2023 05:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 164B3403AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682572596;
	bh=j7gBdFATFFL3KoN0uO4psbaiqoRRo1hLJYYYUSsR9yk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UJCr+T0Wqea78PGAKI3G6XlrZY3sZC9VNmCrYluLI8YMrko5uj1OUD5O+MAUBkSF+
	 vryO+RpLCboybOhufqCLOTavt6yXbl3L7SY9KpISIp4U+m842mB0G4s3X14GE40+N+
	 I9Jo7oiTEEBn20MRSGkQdjTg4aQey8O5KnSEZ5vuS20Li1dwnEhFHMxb8ymvePWLk5
	 Zilz1o+vT+wGC8mBvyvUWO8/nAGTAtKkXbwOePkiOGwWxG+r1SCAyhyW7WEndDxEvZ
	 oVh1SssCvHnSgxGV4f1NqfKcSgVdZN8KLugD3Duy6tdy87Igl1aJCkeustpKIFkYmz
	 SyVsRDrw5f6ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-n46vumgWoL; Thu, 27 Apr 2023 05:16:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12FFE4017A;
	Thu, 27 Apr 2023 05:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12FFE4017A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 144A41BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 05:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E019760BE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 05:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E019760BE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DXN6iDp6Njwa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Apr 2023 05:16:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA78660BC8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA78660BC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 05:16:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412660656"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="412660656"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 22:16:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="724736867"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="724736867"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga008.jf.intel.com with ESMTP; 26 Apr 2023 22:16:26 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Apr 2023 06:57:11 +0200
Message-Id: <20230427045711.1625449-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682572588; x=1714108588;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ax1iHNDOz68QYb0nmNeUoZrbFq3pcH/YD2ufToMu8f0=;
 b=AZaD4+Tqh21NZ6ObtzoG7vKM26Ww1VM/QIdVR6VRBQESzAjz2b3xMR2K
 5zthKCB4RRh3ykbIZ16zys368IQ0Ysgak2MmoMJkdlMFNi7WF4robF5oc
 B3pYm1zmGkutXXvKdpnhUYnpNp2PgTHQX0RwFUm9qSqZWBKRRTaimNhqr
 eY+JiqyBcD+4UVu86HIfI9XgwWC38vZdP+3CsfTieEWL3ECw/o5PG5OM5
 mmPPZcstccd1kwlTQj5xm4/55P6AOH0J9ipci+mmGNL8KV2Xe/NEjhWPb
 GAN9Te3TwUdSA1lL0Gs9iYVUnO7mAgTOs9R5JW7Pq1BmZ65UHZ6PDQEBG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AZaD4+Tq
Subject: [Intel-wired-lan] [PATCH net v1] ice: block LAN in case of VF to VF
 offload
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
Cc: netdev@vger.kernel.org, marcin.szycik@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VF to VF traffic shouldn't go outside. To enforce it, set only the loopback
enable bit in case of all ingress type rules added via the tc tool.

Fixes: 0d08a441fb1a ("ice: ndo_setup_tc implementation for PF")
Reported-by: Sujai Buvaneswaran <Sujai.Buvaneswaran@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 76f29a5bf8d7..d1a31f236d26 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -693,17 +693,18 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	 * results into order of switch rule evaluation.
 	 */
 	rule_info.priority = 7;
+	rule_info.flags_info.act_valid = true;
 
 	if (fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
 		rule_info.sw_act.flag |= ICE_FLTR_RX;
 		rule_info.sw_act.src = hw->pf_id;
 		rule_info.rx = true;
+		rule_info.flags_info.act = ICE_SINGLE_ACT_LB_ENABLE;
 	} else {
 		rule_info.sw_act.flag |= ICE_FLTR_TX;
 		rule_info.sw_act.src = vsi->idx;
 		rule_info.rx = false;
 		rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
-		rule_info.flags_info.act_valid = true;
 	}
 
 	/* specify the cookie as filter_rule_id */
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
