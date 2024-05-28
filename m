Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 597938D26A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 23:00:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F7EE40930;
	Tue, 28 May 2024 21:00:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WcXJnKVBr_0P; Tue, 28 May 2024 21:00:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 338A540863
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716930045;
	bh=EbkrFv81zBt8QoPUiSwxLTjJekCaxCO6rn2Lq5Dxx+U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v08Ka/mQs+lKCljt3659Sk652aWqFzRdn4wojVCMQ17FYX388lm2bdE8QNAs047AY
	 EBiXk8GVZEK+KU9kSxkNce7duD+QzzpDnjmnpzLuJ9x06oqHiaZpyouM0/6NOJ4X6M
	 IRX1XZCpGrqrC24LsNACkKaVWe4PxSpIslWZnfazLEcqfAH+iuoznwo2vogusN4BfX
	 8WJaALYRvbzi9osbElkYVHvvtLcLk4as+wDrpwqZDUEUwnakZPNVmk5vsjgiahhtlv
	 pneQ2Wzx8IwpjuLhzEoYwgtyqXPvQu/oXmS+0J1uj1a7XCKHT0DYWzy+UYZJRny3ys
	 F0tAKMrLWBh0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 338A540863;
	Tue, 28 May 2024 21:00:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4BF1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 09:04:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48E0E6067A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 09:04:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5QBrvvT-AGK8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 09:04:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karen.ostrowska@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7927F60654
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7927F60654
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7927F60654
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 09:04:56 +0000 (UTC)
X-CSE-ConnectionGUID: RWH1H0FnR7SU+RfXINH2nw==
X-CSE-MsgGUID: 7zcKgS8wTUWbDGt/7I9jEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13405975"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13405975"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:04:44 -0700
X-CSE-ConnectionGUID: +2CEXDd7Tby+oO7Rz+30BA==
X-CSE-MsgGUID: eBnM9h1TRMyluxICWU2dHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39538382"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.123.220.50])
 by fmviesa004.fm.intel.com with ESMTP; 28 May 2024 02:04:43 -0700
From: Karen Ostrowska <karen.ostrowska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 11:01:40 +0200
Message-Id: <20240528090140.221964-1-karen.ostrowska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 28 May 2024 21:00:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716887097; x=1748423097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/1gxvBhZO8hqCSsJ3sdBoq25DbXK+euP71L0GIG1il4=;
 b=kyCNLRsL5g7P0d7wdGvrPf9md3goSfHhNEaf8VOyTiNcw5pkZupiTpsf
 xh8ziSZ6YqNwJAt61YIzL5GWcjz9/Sp68I6yXbMcRt/ufW+9IBHzmtRRG
 iaTuvesnt6GJdJ52pLwXaASELsuuSzPFQ5FLqs4a+oONsAbacyFUtKbUz
 vd0yPsbgFY/dPDbfzOhTxhwgkZ9Cl+Z+1hLuLMZnZbr2p+AqDxEBhfx6E
 ONtYwh8K2w3PiDVbKOTaHikmJKv5o/u/pJeSPDZE2MI5AEX/qAWqfNLaN
 7LI9bnpPX/1fEmdkvHbyCnPfcWy5sJCf4uCD/fakudWiAztIdQ79VKrFt
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kyCNLRsL
Subject: [Intel-wired-lan] [iwl-next v1] ice: Check all ice_vsi_rebuild()
 errors in function
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
Cc: Eric Joyner <eric.joyner@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Karen Ostrowska <karen.ostrowska@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Eric Joyner <eric.joyner@intel.com>

Check the return value from ice_vsi_rebuild() and prevent the usage of
incorrectly configured VSI.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Eric Joyner <eric.joyner@intel.com>
Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f60c022f7960..e8c30b1730a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4135,15 +4135,23 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)
 
 	/* set for the next time the netdev is started */
 	if (!netif_running(vsi->netdev)) {
-		ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
+		err = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
+		if (err)
+			goto rebuild_err;
 		dev_dbg(ice_pf_to_dev(pf), "Link is down, queue count change happens when link is brought up\n");
 		goto done;
 	}
 
 	ice_vsi_close(vsi);
-	ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
+	err = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
+	if (err)
+		goto rebuild_err;
+
 	ice_pf_dcb_recfg(pf, locked);
 	ice_vsi_open(vsi);
+
+rebuild_err:
+	dev_err(ice_pf_to_dev(pf), "Error during VSI rebuild: %d. Unload and reload the driver.\n", err);
 done:
 	clear_bit(ICE_CFG_BUSY, pf->state);
 	return err;
-- 
2.31.1

