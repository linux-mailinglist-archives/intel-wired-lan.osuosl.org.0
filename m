Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8C2474029
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 11:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB0564067F;
	Tue, 14 Dec 2021 10:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b3DjX7bo7tjA; Tue, 14 Dec 2021 10:12:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9506403AC;
	Tue, 14 Dec 2021 10:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A66D91BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AFF360888
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oARwn7UVUzIA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 10:12:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E39416077D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639476731; x=1671012731;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UgVT0l6vi66ng7DFV2Qc//+2e9QVsiG1iie97bT6Cco=;
 b=IFCO2f8DP1GQoQNWZY9MipRBcmvEhhgJeqD8fpHOlK8ld49AKc10h6rS
 CTjjzH+dlQDcgIlLigsLlthyN3fSzn0eABbgx+pEw4e/3McCpfk4gH5yQ
 UUI5S71DQA7vRapeb6kS25GQ+xy/F91ppt1Rqx7JZwZ8MU+2zbek2IMOT
 GDtrb7ZmUSA2OSUI+zk7d6kCUID1QRxrlGWWAao38Ts+gacLuAJ7QtAM3
 ieysZ76XK5WIgv9FnRkkyy3G4ctsr5Ap+qxQD2HPNPHSeeDsazWOaAtuS
 AstDUry2GhQEx3m+rON1FAz900ujQ+x1/9HnSOnU3123RaF/DqfpIYOfK Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="226224993"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="226224993"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 02:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="752878190"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga006.fm.intel.com with ESMTP; 14 Dec 2021 02:12:09 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 10:12:08 +0000
Message-Id: <20211214101208.6077-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix the timeliness of stats
 after deleting tc
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
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There was an issue with ethtool stats that
have not been cleared after tc had been deleted.
Fix this by resetting stats after deleting tc
by calling i40e_vsi_reset_stats() function
after distroying qdisc.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5322f44ed6ce..9a16874337ac 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5690,6 +5690,11 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 
 	/* Update the netdev TC setup */
 	i40e_vsi_config_netdev_tc(vsi, enabled_tc);
+
+	/* After distroying qdisc reset all stats of the vsi */
+	if (!vsi->mqprio_qopt.qopt.hw)
+		i40e_vsi_reset_stats(vsi);
+
 out:
 	return ret;
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
