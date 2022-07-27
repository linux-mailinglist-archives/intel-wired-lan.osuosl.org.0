Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1C4582113
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 09:27:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA1D560AD0;
	Wed, 27 Jul 2022 07:27:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA1D560AD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658906866;
	bh=VsXs20Wt3bvaBRp/5pb3n24oTNBnnw9ybACtRdx1Mpg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KgUU+vVyRQ/2BPwKEGlq0n1JSz4yGjZTCarvKKk6bv5mS0pGxy2BRQ5KPYAJjYBjQ
	 vWmS7NaonlXmwTjdiSjOIi8bUjfNx4HQ44DmwFCsMMpn9vN/8UMV7/zMsPSa9WGF4U
	 dFhDkiRsiy0zaxpfcGu/IPZRNCWTDm6Wp0IFMwUieXqjtI1i9fWItlGpimE/1gpj+W
	 u1/ntmwWpS5P09OZV/JB9F4YN5ZXmoYn8qEaxlViywf7iZ9bpQRbb1uX6tpaI14ISX
	 8t/ZDYjTj6g5m6lzAuoxg+0nNNwsvbTwTSmp8utxh5mdjoWjJfCZ6Y/gPBRPr9mITy
	 sQS7olr/8t63w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q6E5b8hmNMAW; Wed, 27 Jul 2022 07:27:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 756B560ACC;
	Wed, 27 Jul 2022 07:27:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 756B560ACC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 622231BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B90040988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B90040988
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGugBjp5ydip for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 07:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E9154094E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E9154094E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="352161823"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="352161823"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 00:27:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="659076397"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jul 2022 00:27:18 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Jul 2022 09:24:06 +0200
Message-Id: <20220727072406.597424-3-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220727072406.597424-1-anatolii.gerasymenko@intel.com>
References: <20220727072406.597424-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658906840; x=1690442840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2YUPJcHNm1zqhhOXUfZ2JVhrfgNABx53tYYRSzZp9wE=;
 b=KLfm+pWfQdfcTWA1E+fkzTYDLA+QA9TyYELysONl1qcY3QFnCuytWWd4
 0MqVzKx5oi2U1/rfsnsYAS+/4rqETk2cV2FsZSTlWj9cOLe6zfgRjxIzd
 uMKxXVMgvbdFvfLj04I0dUS/iWayTgeJC+JSRfj9BFHM7VILAkSMGg5Xz
 5qk64QJ0CwCskHu5pdYnv0pIZli771zoWdkaxE48ALWMRmZ6SV60GHm1F
 v2qYtBgCoUihP1d/cT5OOUBMJt8FCiB3p/t4hOPUzunJdClUohO+pBgv3
 gYPjDpZaUWLwQXFsmnLySadOyaHf+KzNU0pQqaqp43DPzZ2Ts5oA+RGfS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KLfm+pWf
Subject: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Implement FCS/CRC
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
