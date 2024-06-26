Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5926917D78
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 12:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 362F580D00;
	Wed, 26 Jun 2024 10:14:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EAp-TKoURWCs; Wed, 26 Jun 2024 10:14:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02B8B80D03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719396866;
	bh=9mpaIJbR6gUaNnO/A05lykSFi9KIVIq12k7hGmIIf9k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DZrSASwdja1S5yplo3Fc3XnjMuahbSaTjScy8u+oDIAp46B6SONIYTQpRVF3EJM5m
	 +1YRgjUaPiilt9WzyWPEJVYDJm4CuAwMV6+9U2xuXGuJk1KPMfyCa50MSJpCd4owlY
	 oSywYj8ZFrKTXaAjaSRwl7iTIbotQhHxqqhXLy+1nfG1tjm/O7WSTI88GOPsTCyJL8
	 YCD0JA1L3Wk1+vy511RgrTIINtqniypMrxENqYA9by9oXcZTwmsaj5natMf+mXH9es
	 nHP/p0ceX2ytAocQvv0pxoq78k7alTNem3vyvx3cv4gdUG5UZ9FDXyiwXojAjyT8De
	 hbXzcPDvOw6ww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02B8B80D03;
	Wed, 26 Jun 2024 10:14:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C97121BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C368E60B75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NWu58ZKFGTm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 10:14:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A6A1C60A71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6A1C60A71
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6A1C60A71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:14:22 +0000 (UTC)
X-CSE-ConnectionGUID: eILHi03ZRqi1RD8RGNILIQ==
X-CSE-MsgGUID: RECreBI6SV+XioPqI0G78w==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="33992549"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="33992549"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:14:22 -0700
X-CSE-ConnectionGUID: EHoaGLC7Q+ysJ/WV5cHYSA==
X-CSE-MsgGUID: DUmDq3h0TgCWuikKdd9J5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="44608235"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa007.jf.intel.com with ESMTP; 26 Jun 2024 03:14:20 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2024 11:43:42 +0200
Message-Id: <20240626094339.25803-1-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719396863; x=1750932863;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WSjrXhKqPnXqzz6RRySR216p1s0VwPiLtaI04bJOMZM=;
 b=gL9UPZlKlQOdX3b3W+ZgdHj56xgLz39lHtK4bQlYSGLsUqDd+0kDq1VZ
 rcmnIqdlPKU5h5hrlk4A7aJYHZjwr8DIxFPp+Zn03dhMgjBJhNjz2XpIR
 3DJtnJFA7WOIEqVAiGoUWAZMl/G/nd3uLabUI1ap3LI+1HuabxlxDmA4/
 O+P0dwsbYR+aNzbIExBEu8vFc0KLe03XFixuBd0kQOXb2r53jbumBsCI7
 q6JOdtaVxt9SAJwjBXu3F4e0SdvHKhoOwlejA4IOtO/EJWNjmRe82GgV2
 knGfdzB2n7KBSfL2uqOA1SXsPrg2Q17ZVBi3B6AxyPOJ0BFEdR1yPrk0/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gL9UPZlK
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix lldp packets dropping
 after changing the number of channels
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 =?UTF-8?q?Mat=C4=9Bj=20Gr=C3=A9gr?= <mgregr@netx.as>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After vsi setup refactor commit 6624e780a577 ("ice: split ice_vsi_setup
into smaller functions") ice_cfg_sw_lldp function which removes rx rule
directing LLDP packets to vsi is moved from ice_vsi_release to
ice_vsi_decfg function. ice_vsi_decfg is used in more cases than just in
vsi_release resulting in unnecessary removal of rx lldp packets handling
switch rule. This leads to lldp packets being dropped after a change number
of channels via ethtool.
This patch moves ice_cfg_sw_lldp function that removes rx lldp sw rule back
to ice_vsi_relese function.

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Reported-by: Matěj Grégr <mgregr@netx.as>
Closes: https://lore.kernel.org/intel-wired-lan/1be45a76-90af-4813-824f-8398b69745a9@netx.as/T/#u
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7629b0190578..8a8dc5690e62 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2413,13 +2413,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 	struct ice_pf *pf = vsi->back;
 	int err;
 
-	/* The Rx rule will only exist to remove if the LLDP FW
-	 * engine is currently stopped
-	 */
-	if (!ice_is_safe_mode(pf) && vsi->type == ICE_VSI_PF &&
-	    !test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
-		ice_cfg_sw_lldp(vsi, false, false);
-
 	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 	err = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
 	if (err)
@@ -2828,6 +2821,14 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		ice_rss_clean(vsi);
 
 	ice_vsi_close(vsi);
+
+	/* The Rx rule will only exist to remove if the LLDP FW
+	 * engine is currently stopped
+	 */
+	if (!ice_is_safe_mode(pf) && vsi->type == ICE_VSI_PF &&
+	    !test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
+		ice_cfg_sw_lldp(vsi, false, false);
+
 	ice_vsi_decfg(vsi);
 
 	/* retain SW VSI data structure since it is needed to unregister and
-- 
2.36.1

