Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FEA8D4151
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 00:23:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8786412FC;
	Wed, 29 May 2024 22:23:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qh1XoNAj8aFN; Wed, 29 May 2024 22:23:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A49840499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717021380;
	bh=EHYtYmn1b+2O3tP3fda3tkdeBaiPk1qZAqsszTEBJzY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yngW/sSpTH5JfXMWvtb1xOsc4Of2KWqAHINkf1klOR+ljgjdZ2gYDZwb0gvnXJyVo
	 E7KHHXOYU2WX9BkDBVgaW3xyUGeSVxa/vOJWgvJwdDrkH9dTI/0pEKq0s8WwJpmF6u
	 1S8+HhA69j/2M3OtJIrCE1vfAYlYYxJJczhXAtbcY4SlxglrCkcqkKedpQXxXKpnMw
	 HVKYrnAajxJ9BJ8wbB0lsJnTuojUEavTZNVQIICttFy6Y7zYtRn5agibISSIR0iZiO
	 fzdoBiw4x7WthiwP0yJBYR0mTXYqO8CGqVy4vcmC+0k7RZ21W9EbL8/WicAQ7kB8Pa
	 70gYew31lli9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A49840499;
	Wed, 29 May 2024 22:23:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83CFF1D32A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 07:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A9DB81772
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 07:20:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DP0tri_nffIV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 07:20:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=karen.ostrowska@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B538281236
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B538281236
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B538281236
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 07:20:42 +0000 (UTC)
X-CSE-ConnectionGUID: K6nhZ/yRS42a4NRU3Jfh6w==
X-CSE-MsgGUID: omWRjnkYTMOFKdfV32TOqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23908583"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="23908583"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 00:20:42 -0700
X-CSE-ConnectionGUID: PujpZo6DTIaqZ8E9ieU4qA==
X-CSE-MsgGUID: m8YvJwBUQi6vm8EdmM6K3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35295623"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.123.220.50])
 by fmviesa007.fm.intel.com with ESMTP; 29 May 2024 00:20:40 -0700
From: Karen Ostrowska <karen.ostrowska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 May 2024 09:17:36 +0200
Message-Id: <20240529071736.224973-1-karen.ostrowska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 29 May 2024 22:22:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716967243; x=1748503243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mlvptsq7XkvG6wp3U0Gjq2yqNUa4cp9Vs6EwoVYz544=;
 b=InEB0TJ6EB+naAyv4sK5pBGbxJ2RUkMgW6jO2yTKC27uwPDcsfyIfCfd
 5qg2YKGUsD2qNSQODdJuEOJJs7Z2RqC7H1PcN4F6bLk9/Y5OukP+x/lGQ
 o0vyNLlnrnwd6F16DXLslvxqAnVJROWhlX+POBWdDdmUGb66VMY82+moE
 frFKnOVGfhYstSD3uCjcKnw6Yzl5diT9yEDmqKrlvweC4+ClRKICuOOYJ
 ulEHBczIJqA6tCi/E3o0cl40rZWALkhgmbC5/dD/V7SfGLypPCIctLxv8
 JczW06TqeTaHB148DV86pq4s48WcLwh/BNMoMNRMvoMEbS7X61WbPpLRw
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=InEB0TJ6
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Rebuild TC queues on VSI
 queue reconfiguration
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
Cc: Karen Ostrowska <karen.ostrowska@intel.com>, netdev@vger.kernel.org,
 Jan Sokolowski <jan.sokolowski@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jan Sokolowski <jan.sokolowski@intel.com>

TC queues needs to be correctly updated when the number of queues on
a VSI is reconfigured, so netdev's queue and TC settings will be
dynamically adjusted and could accurately represent the underlying
hardware state after changes to the VSI queue counts.

Fixes: 0754d65bd4be ("ice: Add infrastructure for mqprio support via ndo_setup_tc")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1b61ca3a6eb6..a1798ec4d904 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4136,7 +4136,7 @@ bool ice_is_wol_supported(struct ice_hw *hw)
 int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)
 {
 	struct ice_pf *pf = vsi->back;
-	int err = 0, timeout = 50;
+	int i, err = 0, timeout = 50;
 
 	if (!new_rx && !new_tx)
 		return -EINVAL;
@@ -4162,6 +4162,14 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)
 
 	ice_vsi_close(vsi);
 	ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
+
+	ice_for_each_traffic_class(i) {
+		if (vsi->tc_cfg.ena_tc & BIT(i))
+			netdev_set_tc_queue(vsi->netdev,
+					    vsi->tc_cfg.tc_info[i].netdev_tc,
+					    vsi->tc_cfg.tc_info[i].qcount_tx,
+					    vsi->tc_cfg.tc_info[i].qoffset);
+	}
 	ice_pf_dcb_recfg(pf, locked);
 	ice_vsi_open(vsi);
 done:
-- 
2.31.1

