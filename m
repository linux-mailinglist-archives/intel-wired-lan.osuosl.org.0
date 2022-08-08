Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF73D58C28E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 06:34:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D94AA60D74;
	Mon,  8 Aug 2022 04:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D94AA60D74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659933256;
	bh=kd23AvGmGiHFpZ3yka/PL5Pk1SxaH38hS4vdxYb3GhU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v9xCIUCk100kuAF4HBMeU68GcHM6CzOufd+F6gg0oiYJsm40hv0GerG5n6cDFYVyA
	 mQgY0IHkJAFQCUtg/4PeJXlPuGIOp6FADeKciPf5RrE1CCaEf6FcRpHiPp0KavhyuR
	 0KkxYsNugOn/o/4Jd6yLfoKd13DD9ZXhO56FEqkqo4fE42V4s6XYeKB9eHjHEpH5Ak
	 PzBok94lKbD1cXvXPJREOAZSuG8bzzWdYhfYNG/erBaKyRT3C4byWmf2MvKEuXp6iX
	 6VPgDMmFlFBJvdy1JwD57wG3R116ij3Xp+O7QQ04uMNR60Rp4gBFmX8ckb51rzN54q
	 IE4WXm9xizs6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Snirw-TpCbGT; Mon,  8 Aug 2022 04:34:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAAEE60D6E;
	Mon,  8 Aug 2022 04:34:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAAEE60D6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9710E1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 04:34:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7311B813D6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 04:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7311B813D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFLLDlxluzmF for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 04:34:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC595813C3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC595813C3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 04:34:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="291276141"
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="291276141"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2022 21:34:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="663764540"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 07 Aug 2022 21:34:01 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Aug 2022 06:23:39 +0200
Message-Id: <20220808042339.2979-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659933249; x=1691469249;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ke5eO7NX380+LtCKQ7rojfPzbWT0agTzuBFLIY43yDQ=;
 b=gvDU7y/XvGS5vGPzhhLtN1Zz161uM7s11pcKBkoWbBZXscub3dlmt2/4
 RadJryK94VsR03PwZ0ECLdBx5VUWYVIJ0XEHo9akJNCnBMVsRnOArFizh
 U5AmEvkXQipjG8BiIOkD00qjm0VpgH3sIBd0d9zy2tnpkFeywxp01n6D0
 ZT/pA3EjyFkBqjagYvV4nSz7NsvcGFiIy2z1VblnqHoht7eG4kvpSi0Vj
 VIHymUDO99LDJSBQVD0Ek/TaoSTE6BnGVkqLB7L+Q/8D5fLAgQ9/m4R14
 2HXCVmrR41DeCPdJ80mWo1lJILv/GYW9Gz/jGlcp/H2JImtopvHSH6Ta6
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gvDU7y/X
Subject: [Intel-wired-lan] [PATCH net] ice: config netdev tc before setting
 queues number
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

After lowering number of tx queues the warning appears:
"Number of in use tx queues changed invalidating tc mappings. Priority
traff ic classification disabled!"

Fix this by setting correct tc mapping before setting real number of
queues on netdev.

Fixes: 0754d65bd4be5 ("ice: Add infrastructure for mqprio support via ndo_setup_tc")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d992321e74ba..bb17bcfd2529 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6918,6 +6918,8 @@ int ice_vsi_open(struct ice_vsi *vsi)
 	if (err)
 		goto err_setup_rx;
 
+	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
+
 	if (vsi->type == ICE_VSI_PF) {
 		/* Notify the stack of the actual queue counts. */
 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
