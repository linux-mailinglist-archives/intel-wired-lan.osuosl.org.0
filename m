Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9904472C14
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 13:14:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44A5A42373;
	Mon, 13 Dec 2021 12:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k_QP3gD23t7v; Mon, 13 Dec 2021 12:14:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E516F42387;
	Mon, 13 Dec 2021 12:13:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B54A1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 878F5606FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ed3h29QRuJXh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 12:13:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BF41606F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639397632; x=1670933632;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HsRFopSXO7Y0yBXY+Fjv87LBuKXPPi0vZOCAuCobYKU=;
 b=NYtEypplBzDLIRv0PsjtWaQAwhqPNOMjHNyGzaCZHkChPiPCj2djE0YP
 ZzLjlyNbVcR+CcR1FVXRDGHdNq3/Gu55KpeTwx9AfsjljkeZgaBjUmJZC
 KWaM9UVdW0BA4MchsVYfhn6ZEs70FCX44XwgGomcVWSpEvpbGp9YN3mCh
 8fZCWADjfdyjG6M5u8NToOfjTa24XwHtGVERbF6lWSLU758umHGHg/6Lg
 0UhAt/odK09NH/KJiIFdCE/nbR8e7NDh/GPwxfs4Z5R3xWAN7LsTpGMCN
 XiDvnz/AJpPgpi1kRFhmxfLsI2Ttfx7wely8u3Oe9BkhosBAyABDGtGT2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="302100528"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="302100528"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 04:13:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="464611879"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga006.jf.intel.com with ESMTP; 13 Dec 2021 04:13:50 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Dec 2021 13:13:10 +0100
Message-Id: <20211213121310.4508-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] i40e: Fix ntuple setting
 change
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previous commit disabled hw-tc-offload netdev feature flag on driver
probe. Fix checking of NETIF_F_HW_TC flag during netdev feature change.
Without this patch, it would not be possible to change ntuple
feature state.

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a7db6db..53ca517 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12724,7 +12724,8 @@ static int i40e_set_features(struct net_device *netdev,
 	else
 		i40e_vlan_stripping_disable(vsi);
 
-	if (!(features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
+	if (!(features & NETIF_F_HW_TC) &&
+	    (netdev->features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
 		dev_err(&pf->pdev->dev,
 			"Offloaded tc filters active, can't turn hw_tc_offload off");
 		return -EINVAL;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
