Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC01A57F9D5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 09:05:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59FA641881;
	Mon, 25 Jul 2022 07:05:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59FA641881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658732705;
	bh=oSThgoZXUzi00X3U/OQluOImXxSr900Ihzd+U5eOLas=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dbc4Sok6bFXNCzSz+Sgabgss4jCg1jXWLrSLNs4MASpudT9mpm9KBf5J3qLhRzxX+
	 lDVpIu6zjQrLn9luX41p5HRwze4RvVqaBYzvOv4di3EBgL33ISzPtf2qyqaDY3VZCL
	 DO24N7dVrr6dOV+06U2yJbezp6+acqyGmV7mi3Y/z1arm41AUfUFs7gUfxrcKYkHSB
	 PwvvGOQIGmC0LtDNrC8jzPA/2pa/e8KEzcnBZQs9wR+jOFskcNrCTyVyFRwELXDQ3/
	 adqVKlWC0Mnu52hozYnfRnlKLcgaMmIoF4NbOOXkDudw2B/5SIh7wgf/I7DZ00Jt2p
	 mD2XYDdJyq/Vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2OeCsv7FDnll; Mon, 25 Jul 2022 07:05:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB33E41869;
	Mon, 25 Jul 2022 07:05:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB33E41869
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 339D71BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DC5A40CB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DC5A40CB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zUOXVp7SEmlr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 07:04:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55060401C2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 55060401C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="287641903"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="287641903"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 00:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="658058768"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jul 2022 00:04:52 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Jul 2022 09:02:10 +0200
Message-Id: <20220725070210.488309-3-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220725070210.488309-1-anatolii.gerasymenko@intel.com>
References: <20220725070210.488309-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658732693; x=1690268693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2na24F8xsZEy9FeqnCp2mbg/yn2BIn87MDGL/fjW2bQ=;
 b=EOgTBEW2vwwVXiTc7VkxykdAiEtrSRpfq3fjSgl0sgPckz2u48RcUkCZ
 k4mTnEqVbM9Z7eVHyrmPF4cF0YSmuAdVOtmWdjZvbOrvdDPZ03K8gNm1M
 BaeXHWXpmYxsoJoww5vr0MAK0Ru677cLQ6BFKv3tbnlPKKA2260oV45J6
 cCCM4GmUzmBh8COuwO9BdqEJZ8XHKHKypNwCBIZb5j8XYkc2+qK2es47A
 1odrt45qk/y1NWU5jBfIfAzPh4YNAjsFAB9R0Ki6otuooZT8+BHb8Bxkw
 Zaa1NBh7Ec82lolTukuY4K5o4ZyczILK3vMCHlr+wUP1JCGiWeHb/GgJ4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EOgTBEW2
Subject: [Intel-wired-lan] [PATCH net-next v3 2/2] ice: Implement FCS/CRC
 and VLAN stripping co-existence policy
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make sure that only the valid combinations of FCS/CRC stripping and
VLAN stripping offloads are allowed.

You cannot have FCS/CRC stripping disabled while VLAN stripping is
enabled - this breaks the correctness of the FCS/CRC.

If administrator tries to enable VLAN stripping when FCS/CRC stripping is
disabled, the request should be rejected.

If administrator tries to disable FCS/CRC stripping when VLAN stripping
is enabled, the request should be rejected if VLANs are configured. If
there is no VLAN configured, then both FCS/CRC and VLAN stripping should
be disabled.

Testing Hints:
The default settings after driver load are:
- VLAN C-Tag offloads are enabled
- VLAN S-Tag offloads are disabled
- FCS/CRC stripping is enabled

Restore the default settings before each test with the command:
ethtool -K eth0 rx-fcs off rxvlan on txvlan on rx-vlan-stag-hw-parse off
tx-vlan-stag-hw-insert off

Test 1:
Disable FCS/CRC and VLAN stripping:
ethtool -K eth0 rx-fcs on rxvlan off
Try to enable VLAN stripping:
ethtool -K eth0 rxvlan on

Expected: VLAN stripping request is rejected

Test 2:
Try to disable FCS/CRC stripping:
ethtool -K eth0 rx-fcs on

Expected: VLAN stripping is also disabled, as there are no VLAN
configured

Test 3:
Add a VLAN:
ip link add link eth0 eth0.42 type vlan id 42
ip link set eth0 up
Try to disable FCS/CRC stripping:
ethtool -K eth0 rx-fcs on

Expected: FCS/CRC stripping request is rejected

Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
v2: rebase on top of Maciej Fijalkowski's patches
---
 drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f9c4463eb50..5b8964215bc8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5725,6 +5725,9 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 					 NETIF_F_HW_VLAN_STAG_RX | \
 					 NETIF_F_HW_VLAN_STAG_TX)
 
+#define NETIF_VLAN_STRIPPING_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
+					 NETIF_F_HW_VLAN_STAG_RX)
+
 #define NETIF_VLAN_FILTERING_FEATURES	(NETIF_F_HW_VLAN_CTAG_FILTER | \
 					 NETIF_F_HW_VLAN_STAG_FILTER)
 
@@ -5811,6 +5814,14 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
 			      NETIF_F_HW_VLAN_STAG_TX);
 	}
 
+	if (!(netdev->features & NETIF_F_RXFCS) &&
+	    (features & NETIF_F_RXFCS) &&
+	    (features & NETIF_VLAN_STRIPPING_FEATURES) &&
+	    !ice_vsi_has_non_zero_vlans(np->vsi)) {
+		netdev_warn(netdev, "Disabling VLAN stripping as FCS/CRC stripping is also disabled and there is no VLAN configured\n");
+		features &= ~NETIF_VLAN_STRIPPING_FEATURES;
+	}
+
 	return features;
 }
 
@@ -5904,6 +5915,13 @@ ice_set_vlan_features(struct net_device *netdev, netdev_features_t features)
 	current_vlan_features = netdev->features & NETIF_VLAN_OFFLOAD_FEATURES;
 	requested_vlan_features = features & NETIF_VLAN_OFFLOAD_FEATURES;
 	if (current_vlan_features ^ requested_vlan_features) {
+		if ((features & NETIF_F_RXFCS) &&
+		    (features & NETIF_VLAN_STRIPPING_FEATURES)) {
+			dev_err(ice_pf_to_dev(vsi->back),
+				"To enable VLAN stripping, you must first enable FCS/CRC stripping\n");
+			return -EIO;
+		}
+
 		err = ice_set_vlan_offload_features(vsi, features);
 		if (err)
 			return err;
@@ -5990,6 +6008,13 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 	 * flag the packet data will have the 4 byte CRC appended
 	 */
 	if (changed & NETIF_F_RXFCS) {
+		if ((features & NETIF_F_RXFCS) &&
+		    (features & NETIF_VLAN_STRIPPING_FEATURES)) {
+			dev_err(ice_pf_to_dev(vsi->back),
+				"To disable FCS/CRC stripping, you must first disable VLAN stripping\n");
+			return -EIO;
+		}
+
 		ice_vsi_cfg_crc_strip(vsi, !!(features & NETIF_F_RXFCS));
 		ret = ice_down_up(vsi);
 		if (ret)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
