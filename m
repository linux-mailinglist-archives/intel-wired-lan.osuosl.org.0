Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA55659115C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 15:26:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 320F841913;
	Fri, 12 Aug 2022 13:26:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 320F841913
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660310775;
	bh=QBAtacS+e9bJFv5k1sSjDIQVWoBx0Nx6txvJvDlWEvk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R2jzCSRTdQDCgTPzJezT9FlP4Z5DP6KOJfMu0ENcXpthkMTfb4t79rwp4TR86NmqQ
	 BgSWiWbm5nl3YU0ahmKPdDNbJgX7GSlcWAQqLSr5pKyMnVhmtBYTK19bcpkpQbxJ48
	 9SfBJjLRbsxgm7f5+7ixdkASnx4C2/aY79z3ddYjozhBnwKGl5vNKHmtGca1FR80hf
	 eR+v5Ae6jHugbtoGoLKeNuyfF9BRwDo3K8bo9OUq+n7dvj3Bl+Kl9hGTRwumFbOrkU
	 ct/0rfVroPg32L1T8869j4oBgNCOfEsSu+JINoqM2VRMBebZT3X0vg0Dhw67XYg3Ek
	 qlqg+7MRaiNLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V7YeyQf7we-l; Fri, 12 Aug 2022 13:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC65E41918;
	Fri, 12 Aug 2022 13:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC65E41918
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DE961BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 13:26:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56B4883DB7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 13:26:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56B4883DB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-YTgZc1ikh0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 13:26:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A68483147
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A68483147
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 13:26:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="290346966"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="290346966"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 06:26:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="674075767"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga004.fm.intel.com with ESMTP; 12 Aug 2022 06:26:01 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 15:25:49 +0200
Message-Id: <1660310750-290943-4-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
References: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660310762; x=1691846762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=4kAfp5Xc3KRi5ZlfD9BXYbvCcGQta31xp4mWmTUe7BM=;
 b=Th57hksEiI8QSA2CBEfUYwll125jy4opCPRB7r4F2JqDl1FfWpg/iicy
 rFO4Gc4EsXQ5pLWzPCqpKrh2T6QudVyd4TqUZV/A87Vk6LejDhyNhit2z
 ihy+AD3emNs2rBKp/u1+ZqJ8BwShIaTK3RVT4vuPul5+n19e4nTmhXSxy
 JAD1dOO4L9kr7rcs2wZ07i2vdG/OWDTQCTCkPohQLOZT6U70j7XBX/M2V
 T1+vop4dIRqoN7Ei3BsXc2tkhojbcI3fd4xzQCBxycHF1LzvXQ6WFkXcB
 YAI32H8YuWpDxlw1+uaWfxzwILxSvS45amsE6ZVMmeeisrDUA1TMbhCg2
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Th57hksE
Subject: [Intel-wired-lan] [PATCH net v5 3/4] ice: Fix clearing of promisc
 mode with bridge over bond
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When at least two interfaces are bonded and a bridge is enabled on the
bond, an error can occur when the bridge is removed and re-added. The
reason for the error is because promiscuous mode was not fully cleared from
the VLAN VSI in the hardware. With this change, promiscuous mode is
properly removed when the bridge disconnects from bonding.

[ 1033.676359] bond1: link status definitely down for interface enp95s0f0, disabling it
[ 1033.676366] bond1: making interface enp175s0f0 the new active one
[ 1033.676369] device enp95s0f0 left promiscuous mode
[ 1033.676522] device enp175s0f0 entered promiscuous mode
[ 1033.676901] ice 0000:af:00.0 enp175s0f0: Error setting Multicast promiscuous mode on VSI 6
[ 1041.795662] ice 0000:af:00.0 enp175s0f0: Error setting Multicast promiscuous mode on VSI 6
[ 1041.944826] bond1: link status definitely down for interface enp175s0f0, disabling it
[ 1041.944874] device enp175s0f0 left promiscuous mode
[ 1041.944918] bond1: now running without any active interface!

Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops implementations")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Link: https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 v2: Fixed error message when setting same promiscuous mode
---
 v3: Fixed style issues, changed to return directly.
---
 v4: Fixed problem with patch applying
---
 v5: Fixed incorrect title patch issue
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  6 +++++-
 drivers/net/ethernet/intel/ice/ice_main.c | 13 ++++++++++++-
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f7f9c97..4b1d070 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4078,7 +4078,11 @@ int ice_vsi_del_vlan_zero(struct ice_vsi *vsi)
 	if (err && err != -EEXIST)
 		return err;
 
-	return 0;
+	/* when deleting the last VLAN filter, make sure to disable the VLAN
+	 * promisc mode so the filter isn't left by accident
+	 */
+	return ice_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
+				    ICE_MCAST_VLAN_PROMISC_BITS, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c1ac2f7..c4f89c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -267,8 +267,10 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
 		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
 						  promisc_m, 0);
 	}
+	if (status && status != -EEXIST)
+		return status;
 
-	return status;
+	return 0;
 }
 
 /**
@@ -3572,6 +3574,15 @@ struct ice_vsi *
 	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
 		usleep_range(1000, 2000);
 
+	ret = ice_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
+				    ICE_MCAST_VLAN_PROMISC_BITS, vid);
+
+	if (ret) {
+		netdev_err(netdev, "Error clearing multicast promiscuous mode on VSI %i\n",
+			   vsi->vsi_num);
+		vsi->current_netdev_flags |= IFF_ALLMULTI;
+	}
+
 	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
 
 	/* Make sure VLAN delete is successful before updating VLAN
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
