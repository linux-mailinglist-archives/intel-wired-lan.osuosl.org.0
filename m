Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4833E589D5F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 16:20:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5D9682B08;
	Thu,  4 Aug 2022 14:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5D9682B08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659622857;
	bh=zpW0Nj3eBPD7g3LsNlrsfMEcg2I3gAJe/2KdsGAYpAk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ko/binbz/mZfhDVE5Pahv4QNt+3/66JAgC2Z8/rdtpKsLQiU7P5bkj+NbtsiL5A1u
	 qt0P/EMto/SWB0dnByLKGdKOFpbb7vXpxiWeTa6bIL3s3De5GoyAj6PFZ5ptvX/iMK
	 AEhTKAsDVmE/j/fvJTjLVdqNU2DWDWbPBZahxY3XNzQDFz5DcSkzr2662vpnJ300H+
	 tLC1Bc5rhVNqE3ro0yJcA6TOIF5PsUmAYc2eyX5FRsTP6iuLUEGoTWAxXwXzdWi35A
	 hReXPw80yJge51Lf5aoVK1fvoquEudt5KaQENCmsWKEnf55KfrxahKcNnZJLCrVyTY
	 NgAf6WZoxoL1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9S195VZ8lm1; Thu,  4 Aug 2022 14:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8053D82AA2;
	Thu,  4 Aug 2022 14:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8053D82AA2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 386531BF32E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10389417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10389417B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n0rW5XgsZyGL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 14:20:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C143D416E7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C143D416E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="315820538"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="315820538"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 07:20:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="579089334"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga006.jf.intel.com with ESMTP; 04 Aug 2022 07:20:46 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Aug 2022 16:20:29 +0200
Message-Id: <1659622830-13292-4-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
References: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659622847; x=1691158847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=en3QiwKUbUO1/KttMQWm11qR97JkOzhLSU/X9DZVFFY=;
 b=dIXo8rRDx4gUoSXmXmcqDB3APAzfKXzC7nWmATOJeb5z+qxGbXrXlzk0
 LrU3GWncviIZFBpEqgbVeu4qba6RS5RWTP5LW7NkCHax8mTCp1MCU/7T8
 I8C7NtUResQX3gRtdBhHP1shQM2D2w2KrK0RWV+MGuYs+JszlVVOlvNCw
 d+1BslsGt4XGKhpl9dslhfjVCqs7EXb2GUk7h30anYgCElp7eMfNShS6v
 0jFswm6sUTRp+RP80FMsWizevTn6akK84JjlcmKP5ecLo02021bz0lmwN
 VwJ3yhqJV6zFz+6NFVZqXV4YYsOrTzq/oLcOnbOxzsWuz17KWvLE59PY/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dIXo8rRD
Subject: [Intel-wired-lan] [PATCH net v2 3/4] ice: Fix clearing of promisc
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

Testing Hints (required if no HSD): Create bonding and
add bridge to bond. Test VLAN add/removal and make sure VLAN works
correctly. Test combinations of bridge module and VLAN, bridge and bond,
and bridge over the PF.

Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops implementations")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Link:
https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 v2: Fixed error message when setting same promiscuous mode
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
