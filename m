Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D435856A346
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 15:16:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77CEB6120A;
	Thu,  7 Jul 2022 13:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77CEB6120A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657199808;
	bh=D5fDj6IaEvfhSDNXurd+KJLAmGxzaq9Q2QkXzWJLyp8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1fe7fnj0Msd6cFEh2sLA2CuX1DDtEBrEvRXvLpiDVov6/YElw5bTlqZTSS74ZNQ11
	 cosQUaphq/NLcyTuhRDY6jSb+24+Lk1B60aHXBq4f6UGa3u5qLa8CbxGDeKEJQR6Ex
	 Ngtfg+fdNB2WRsNriaJYj3H+t0GxrzZFEe2klKw0bG5LW4HgxR98dieZflgqPK9Otm
	 T/3X0Uke8RLasUp0BDBFGxp5TVSFd4gdgybq9OlEFsITprtejZ3k1I7jc8JxoYOZPp
	 2yrvSBBxpiwUfokBmg8EwuDun0wDpL/YQSaaNy2dl3Yr4lghgHGuFsHEkQmWb246H7
	 2fNBc8rEjd48g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V6ORKNrNzhVJ; Thu,  7 Jul 2022 13:16:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A7926120B;
	Thu,  7 Jul 2022 13:16:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A7926120B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EE6D1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 395AC41A66
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 395AC41A66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3d_dObweMfj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 13:16:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CCE741A5F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CCE741A5F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="285148003"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="285148003"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 06:16:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="651131638"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2022 06:16:10 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 15:15:51 +0200
Message-Id: <1657199751-256188-4-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657199772; x=1688735772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=I+Tqo4BGDUtIlpadbb0dZaScTSZ1a4N3REVArGlxE44=;
 b=jQnFSrOmKmxubx17RbLBiAOGV7i1lpL5wT4B4HJuwp0ioKCxPx65uDmZ
 /vGuo+yjHP/I9lrNaCLH7cW8nX4QhEvzDIMq+cCSpDpyyicd4LwhyhS80
 cX7WgTAFqc8d/fWNx+VcnKHRHzUOXg/yEkqSvAjBR0sAU+LotzFHSbUsq
 j3osP6JtxWnLcgw6OmjAh1XUH7wRKltrDEKkwnJBJL2Bs+i0YdS5wIj0C
 V5GCkrsosVUI2Ca3UXIdkoKiYPDyjI5c18n71ertyEEbrlk7/oqDvcb6F
 sRGKtq8KJvjEEtOzJlTHjyDofoKxOTjzmWWjsiGDZ+Wh14mCQJ2nhu3/i
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jQnFSrOm
Subject: [Intel-wired-lan] [PATCH net v1 3/3] ice: Fix clearing of promisc
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
Tested-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Tested-by: Igor Raits <igor@gooddata.com>
Link:
https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  8 +++++++-
 drivers/net/ethernet/intel/ice/ice_main.c | 13 ++++++++++++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f7f9c97..251012d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4078,7 +4078,13 @@ int ice_vsi_del_vlan_zero(struct ice_vsi *vsi)
 	if (err && err != -EEXIST)
 		return err;
 
-	return 0;
+	/* when deleting the last VLAN filter, make sure to disable the VLAN
+	 * promisc mode so the filter isn't left by accident
+	 */
+	err = ice_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
+				    ICE_MCAST_VLAN_PROMISC_BITS, 0);
+
+	return err;
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
