Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5055C477164
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Dec 2021 13:09:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E25A283486;
	Thu, 16 Dec 2021 12:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jjBetLXRNqWk; Thu, 16 Dec 2021 12:09:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEC3983478;
	Thu, 16 Dec 2021 12:09:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 610E71BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4880A4164E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHTXcD_I041f for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Dec 2021 12:09:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5994415F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639656579; x=1671192579;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pZiomxWeInzO7012KMeuSLGG1bQ4aIE6pJJnSnHY+8A=;
 b=f/J7M/b3xfIuOi0U3ZpqISkdPgX7JSoK3mdDIYXap10Z0GSrkEjZZ038
 SIHUaq5u73kOsFCPghvZkbdks1Sgb2l+Yfe6BXRzLjvAn8dS9tWRH7/9F
 5Im7fLRDkRImj/8F0Cef1Wt0KKMOg/ygt0t/s+eATRbL59rGkSqmgJrM5
 w1ShTK6DmR6/Jfcmd/R3b9uM4VHWDLCG67hgXY/H/EQIloCGl0TuKGvb3
 SaMc6qEDOyMglCMqS32qVC7L/51lW0BMhE3MoZjD4IU+2HDqWbZ9CWXLW
 BlBsMpwh9/fwcIbiOCFtyV6Yp++2FFe6NhBLLAqzMrcVQTlVhrnLTnnPG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="302849947"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="302849947"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 04:09:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="754044949"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga006.fm.intel.com with ESMTP; 16 Dec 2021 04:09:37 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Dec 2021 13:08:52 +0100
Message-Id: <20211216120852.25706-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: Disable hw-tc-offload
 feature on driver load.
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
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After loading driver hw-tc-offload is enabled by default.
Change the behaviour of driver to disable hw-tc-offload by default.
Additionaly since this impacts ntuple feature state change the way
of checking NETIF_F_HW_TC flag.

Title: i40e: Fix hw-tc-offload state on driver load
Change-type: FeatureImplementation
HSDES-Number: 16014847639
HSDES-Tenant: server_platf_lan.bug
Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Squashed two commits into one
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 3fd3f10..fec4d51 100644
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
@@ -13476,6 +13477,8 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	netdev->features |= hw_features | NETIF_F_HW_VLAN_CTAG_FILTER;
 	netdev->hw_enc_features |= NETIF_F_TSO_MANGLEID;
 
+	netdev->features &= ~NETIF_F_HW_TC;
+
 	if (vsi->type == I40E_VSI_MAIN) {
 		SET_NETDEV_DEV(netdev, &pf->pdev->dev);
 		ether_addr_copy(mac_addr, hw->mac.perm_addr);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
