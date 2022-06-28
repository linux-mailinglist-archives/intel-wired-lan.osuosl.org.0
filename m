Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBF755C05C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 12:45:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA28F82FF9;
	Tue, 28 Jun 2022 10:45:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA28F82FF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656413139;
	bh=0HEK34q6pW9uwV+jNoj56MWyrQLIUcDqbiA1ZxkHVBI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FH2lX9kaxDQd1uPcT7BmahD6i1BbkNL3lB1InDQ9zizn0YiJ+Xov8Iv43Qza7WRzT
	 dSXvR/xWDqqtS3urqPDfofmda3KQYVkKPByWWqm/lokKdXS5t6hjemNOY0Cf5gMNOO
	 HS/YdkXNDCXhx4I6ZVXCU0Cq0twMUabIotYMJdM2l3w8VUPcJClgKs/Iw+7Q3foiJj
	 1KnncFqmP87ikE7CMHy6huCLU3JZyJQYUMF1tfw3HTRLbdatA8cwPMlj4XtfLuUJdl
	 gBb7dTeQ6naDKGu+r0he3ZT5xaNx9UDipMXNCdVBw29envvtMzmSWVNZgDsaNc5S4n
	 TTqVazjY6XDug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CXGwMk7CGlSG; Tue, 28 Jun 2022 10:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9561182B21;
	Tue, 28 Jun 2022 10:45:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9561182B21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B38601BF599
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:45:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8DB5460773
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:45:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DB5460773
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BuLnBjWyD_AJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 10:45:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCE446072A
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CCE446072A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:45:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="368019842"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="368019842"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 03:45:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="693060217"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2022 03:45:31 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jun 2022 12:44:14 +0200
Message-Id: <20220628104414.4297-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656413132; x=1687949132;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WiPhdTIulxcvZJRWJMRVDE6PXcjTuCyUd4vsmL/3vXM=;
 b=iab0iBTfmlj+STE1nYCAo/WAIhAmWkpBQ/GA1XP9xVYtd5/wtd7ZtCk3
 yA0K8kgXMIwI6yZHGreve96indld7+FbrKZQZ7QCj8ivJR09Awcf9nN87
 D55n9TSPIBwSyAEVzaHtv/3NsqCFo28uNIqU1A4unUJMvFhzGdgMJDw+0
 Zo803QQrnW0zjJGs46QeprZ/qOyzIq0oCNbDJkha7xP/sypagss8KTnP3
 CR1trIM6MOHjmqWNQpLlqi4TzscZu/AmVlaMPiLjYNCd62PxEDWTF8AzJ
 0f7IC2a7tj9Mm65c6iKCxntNB4Xza6n3Lwv2Pfkno51j7oKyQSB8/1Ylz
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iab0iBTf
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: Implement FCS/CRC and
 VLAN stripping co-existence policy
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
 Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
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
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6510f4910e5d..8cdd41af8cf6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5724,6 +5724,9 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 					 NETIF_F_HW_VLAN_STAG_RX | \
 					 NETIF_F_HW_VLAN_STAG_TX)
 
+#define NETIF_VLAN_STRIPPING_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
+					 NETIF_F_HW_VLAN_STAG_RX)
+
 #define NETIF_VLAN_FILTERING_FEATURES	(NETIF_F_HW_VLAN_CTAG_FILTER | \
 					 NETIF_F_HW_VLAN_STAG_FILTER)
 
@@ -5810,6 +5813,14 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
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
 
@@ -5903,6 +5914,13 @@ ice_set_vlan_features(struct net_device *netdev, netdev_features_t features)
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
@@ -5960,6 +5978,13 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
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
