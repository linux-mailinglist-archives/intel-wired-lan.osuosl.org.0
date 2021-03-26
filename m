Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C25D1349E13
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3956660BA3;
	Fri, 26 Mar 2021 00:39:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Cdsi3gicynP; Fri, 26 Mar 2021 00:39:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28FD960B2D;
	Fri, 26 Mar 2021 00:39:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BB3C1C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E35384B70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id atMNlUQuX2pG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDAEE84B73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
IronPort-SDR: J7tbmF0Dqhr9Mc3OXXVKL2cu6MJAp+cm0XaGpEAIZMJ7qsYHw7Q2mxwx7QlLld5Xc02uR2G4w1
 u3ErWrJpPlWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762080"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762080"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:44 -0700
IronPort-SDR: rAjZkh8gl4SRFOt54im4sg6cyvfc+3WeMmrypbhhX77fP95ijzX8rljIQEgAfwsOmWvkKvAOk1
 ByQtWiqRfW6w==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276253"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:28 -0700
Message-Id: <20210326003834.3886241-6-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 05/11] igb: handle vlan types
 with checker enabled
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The sparse build (C=2) finds some issues with how the driver
dealt with the (very difficult) hardware that in some generations
uses little-endian, and in others uses big endian, for the VLAN
field. The code as written picks __le16 as a type and for some
hardware revisions we override it to __be16 as done in this
patch. This impacted the VF driver as well so fix it there too.

Also change the vlan_tci assignment to override the sparse
warning without changing functionality.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Warning Detail:
.../igb/igb_main.c:2644:48: warning: incorrect type in assignment (different base types)
.../igb/igb_main.c:2644:48:    expected restricted __be16 [usertype] vlan_tci
.../igb/igb_main.c:2644:48:    got unsigned short [usertype] vlan_priority:3
.../igb/igb_main.c:8608:31: warning: cast to restricted __be16
.../igb/igb_main.c:8608:31: warning: cast from restricted __le16
.../igb/igb_main.c:8608:31: warning: cast to restricted __be16
.../igb/igb_main.c:8608:31: warning: cast from restricted __le16
.../igb/igb_main.c:8608:31: warning: cast to restricted __be16
.../igb/igb_main.c:8608:31: warning: cast from restricted __le16
.../igb/igb_main.c:8608:31: warning: cast to restricted __be16
.../igb/igb_main.c:8608:31: warning: cast from restricted __le16
.../igbvf/netdev.c:93:31: warning: cast to restricted __be16
.../igbvf/netdev.c:93:31: warning: cast to restricted __be16
.../igbvf/netdev.c:93:31: warning: cast to restricted __be16
.../igbvf/netdev.c:93:31: warning: cast to restricted __be16
.../igbvf/netdev.c:95:31: warning: cast to restricted __le16
---
 drivers/net/ethernet/intel/igb/igb_main.c | 5 +++--
 drivers/net/ethernet/intel/igbvf/netdev.c | 4 ++--
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 697aa238ff16..1f82cf22fcc0 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2641,7 +2641,8 @@ static int igb_parse_cls_flower(struct igb_adapter *adapter,
 			}
 
 			input->filter.match_flags |= IGB_FILTER_FLAG_VLAN_TCI;
-			input->filter.vlan_tci = match.key->vlan_priority;
+			input->filter.vlan_tci =
+				(__force __be16)match.key->vlan_priority;
 		}
 	}
 
@@ -8604,7 +8605,7 @@ static void igb_process_skb_fields(struct igb_ring *rx_ring,
 
 		if (igb_test_staterr(rx_desc, E1000_RXDEXT_STATERR_LB) &&
 		    test_bit(IGB_RING_FLAG_RX_LB_VLAN_BSWAP, &rx_ring->flags))
-			vid = be16_to_cpu(rx_desc->wb.upper.vlan);
+			vid = be16_to_cpu((__force __be16)rx_desc->wb.upper.vlan);
 		else
 			vid = le16_to_cpu(rx_desc->wb.upper.vlan);
 
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index fb3fbcb13331..630c1155f196 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -83,14 +83,14 @@ static int igbvf_desc_unused(struct igbvf_ring *ring)
 static void igbvf_receive_skb(struct igbvf_adapter *adapter,
 			      struct net_device *netdev,
 			      struct sk_buff *skb,
-			      u32 status, u16 vlan)
+			      u32 status, __le16 vlan)
 {
 	u16 vid;
 
 	if (status & E1000_RXD_STAT_VP) {
 		if ((adapter->flags & IGBVF_FLAG_RX_LB_VLAN_BSWAP) &&
 		    (status & E1000_RXDEXT_STATERR_LB))
-			vid = be16_to_cpu(vlan) & E1000_RXD_SPC_VLAN_MASK;
+			vid = be16_to_cpu((__force __be16)vlan) & E1000_RXD_SPC_VLAN_MASK;
 		else
 			vid = le16_to_cpu(vlan) & E1000_RXD_SPC_VLAN_MASK;
 		if (test_bit(vid, adapter->active_vlans))
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
