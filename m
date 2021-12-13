Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77333472C11
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 13:13:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 144EB42376;
	Mon, 13 Dec 2021 12:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zu36q89PxrpT; Mon, 13 Dec 2021 12:13:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC21F40A0F;
	Mon, 13 Dec 2021 12:13:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 472D21BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35E44818B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CjM04yIATCGH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 12:13:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E2F28186E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 12:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639397624; x=1670933624;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4z4BLo42X1TV/VkXQCQgQkxYYtNPjp2+nQfREKTsFdA=;
 b=Iy6Kw0wcLDxVb6OfVpwZ4hqqoNrpThZqJI8QJ/AHKhDmuUxEe0iHZjkM
 PV6eSIsafefJgRSrstPUw9vbFLGKDoZ8yRb3/3FFNT6DOL8JzYdsIOtNH
 vp0WQ6LDcS46ATbeqsQ+ce2wqmlhMQU1+fgPY3BHAsxcdnv+6Of2JocoR
 W3C8CgQgVsmpbuvTcVFm0/92NHnfnJyMllKtnOfpWDqG5GDjd18liq+q2
 9QiQRameSlPIBcYGNQHMTytpwOWt/gS7zhrON+f2shjy5f8VGbkJXQqN0
 KPqX40AXpD3ZmUkFCo90xlXwN1kRI90zVHN77BWU39RnwgwMyRST9PFcO w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="262844554"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="262844554"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 04:13:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="660841564"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2021 04:13:42 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Dec 2021 13:13:01 +0100
Message-Id: <20211213121301.4393-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 1/2] i40e: Disable
 hw-tc-offload feature on driver load.
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
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After loading driver hw-tc-offload is enabled by default. Change the
behaviour of driver to disable hw-tc-offload by default.

Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5322f44..a7db6db 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13476,6 +13476,8 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
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
