Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B95E74771E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Dec 2021 13:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61A1883089;
	Thu, 16 Dec 2021 12:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fjfxg8Rbr2Cb; Thu, 16 Dec 2021 12:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45CD382F92;
	Thu, 16 Dec 2021 12:32:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB0B51BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98801410D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R0P6GR3ZfjHZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Dec 2021 12:31:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0911410C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 12:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639657915; x=1671193915;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XeHwvrkTJ5AzWaWofcE4/O6vCOFyUi3R5tT7g3ofJrU=;
 b=mW2aqRfofgsOcGsh2KXakWIfKRtMHGSpHXIPLrUHRB30u5m1UMzk+wOG
 fGDvi1D+TtBCsDUjCYaH+SKufR313ZCYt1mGw08p3kYtWbNxQIrWXTYMR
 hsAgfmOjj2sIctAFM7IbafDmnV45CKgxlDXL4iEfuqZC/7upeoX59tTIc
 9cemVSgRZsdzaVOv7G5VY8+R3sfnJWlct7xw3JbQLw3ZrxNNjUGyCneDP
 7TOA4xneTJDnGk/BcZMKEUrCn3bm5GZsv9n7xYdR+rK2jy8ddNw7N/o6B
 eLF4xUtfk7EQKivd8DBSfy2tzYcbwe4Tv0IgZI8MeDeD5XDckjkLfS2Pn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="220155491"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="220155491"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 04:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="611439087"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2021 04:31:53 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Dec 2021 13:31:13 +0100
Message-Id: <20211216123113.2142-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3] i40e: Disable hw-tc-offload
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
Change the behaviour of driver to disable hw-tc-offload by default as this
is the expected state. Additionaly since this impacts ntuple feature state
change the way of checking NETIF_F_HW_TC flag.

Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v3: Removed internal tags and fixed commit message
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
