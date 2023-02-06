Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CC268CAD3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 00:55:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30C234157D;
	Mon,  6 Feb 2023 23:55:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30C234157D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675727712;
	bh=lvcopaoqZi3COeJiyGVjCOdOPVKsGD2C8eOuJJgzJ1E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oxhc5P4tpfh7TniKyJaswF3I9QUK490PEVZNDEpzrtm10lK7JPVasg/ee1QJzTB/G
	 Z9OmHbZEpMdFv1vHDKJPeVSGhxpMy1Ja8TViCWAojDK03S7ou4A6Ff3sqKHZm+CLUR
	 lK0MdZ2BtxuLDUJgBG0X6wj/KypLCgTLUoKjJsCLgsbEA+kkAUkOVA9ECHNYdB3C5L
	 S3BnSUNAY/xPzwJ6Os2fMBsFI8tsIFA/dayG8+YDZc2Z4hYGR2L9rF18gZAkyYQcCk
	 zRC+gryj/D2bEeyuByV4xbmxN2GPVFPSwqVXpjXwt82crrB4Kud/mmTJoIlrN2OX3e
	 iHy/OYxRbLFHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MusIzK-wB-in; Mon,  6 Feb 2023 23:55:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B523A40928;
	Mon,  6 Feb 2023 23:55:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B523A40928
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 007041BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 23:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBFEB4157D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 23:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBFEB4157D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fh8_PYFc8OYf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 23:55:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8792140928
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8792140928
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 23:55:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="317365734"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="317365734"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 15:54:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="790597035"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="790597035"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 15:54:53 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 Feb 2023 15:54:36 -0800
Message-Id: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675727702; x=1707263702;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rqonhSCze2Ze0QFZvj0hciiw74zLE0sfkGG+fKH1h2Q=;
 b=doOkefbX9bDw2RZSShDFYM3DTH6ndRgwNNZs7K26nncbANqRy4h2dlRR
 NjRI0J1DRBoTYUlSEGRltTp+acEgcN52IVij2Ybc9MQzDtxeu3IO3Rgpq
 Gy5LUs2FA4QhL8asHQmcu4JU+q8HWdLYe65jP06PdaCuTKgsvE60ppjut
 3LQFbwBjInl3EeG9JkadFN92muCYi5MYHUn1SB8vtpazTK4TX4wv6Id0Q
 f2EXO6xdVB2qA2RJoKl9EyNzn/1hLKwLtDF3GDpfEFgd8YGecMvM13hvD
 NUcT4I5mE8u/d5qLXzhf0VJYuOD6/VTnoHavM0A48DFW4LTJZ9elEXylH
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=doOkefbX
Subject: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast packets in
 promisc mode
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There was a problem reported to us where the addition of a VF with an IPv6
address ending with a particular sequence would cause the parent device on
the PF to no longer be able to respond to neighbor discovery packets.

In this case, we had an ovs-bridge device living on top of a VLAN, which
was on top of a PF, and it would not be able to talk anymore (the neighbor
entry would expire and couldn't be restored).

The root cause of the issue is that if the PF is asked to be in IFF_PROMISC
mode (promiscuous mode) and it had an ipv6 address that needed the
33:33:ff:00:00:04 multicast address to work, then when the VF was added
with the need for the same multicast address, the VF would steal all the
traffic destined for that address.

The ice driver didn't auto-subscribe a request of IFF_PROMISC to the
"multicast replication from other port's traffic" meaning that it won't get
for instance, packets with an exact destination in the VF, as above.

The VF's IPv6 address, which adds a "perfect filter" for 33:33:ff:00:00:04,
results in no packets for that multicast address making it to the PF (which
is in promisc but NOT "multicast replication").

The fix is to enable "multicast promiscuous" whenever the driver is asked
to enable IFF_PROMISC, and make sure to disable it when appropriate.

Fixes: e94d44786693 ("ice: Implement filter sync, NDO operations and bump version")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: added fixes
---
 drivers/net/ethernet/intel/ice/ice_main.c | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5f86e4111fa9..3a5f9c15b69c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -275,6 +275,8 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	if (status && status != -EEXIST)
 		return status;
 
+	netdev_dbg(vsi->netdev, "set promisc filter bits for VSI %i: 0x%x\n",
+		   vsi->vsi_num, promisc_m);
 	return 0;
 }
 
@@ -300,6 +302,8 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 						    promisc_m, 0);
 	}
 
+	netdev_dbg(vsi->netdev, "clear promisc filter bits for VSI %i: 0x%x\n",
+		   vsi->vsi_num, promisc_m);
 	return status;
 }
 
@@ -414,6 +418,16 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 				}
 				err = 0;
 				vlan_ops->dis_rx_filtering(vsi);
+
+				/* promiscuous mode implies allmulticast so
+				 * that VSIs that are in promiscuous mode are
+				 * subscribed to multicast packets coming to
+				 * the port
+				 */
+				err = ice_set_promisc(vsi,
+						      ICE_MCAST_PROMISC_BITS);
+				if (err)
+					goto out_promisc;
 			}
 		} else {
 			/* Clear Rx filter to remove traffic from wire */
@@ -430,6 +444,18 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 				    NETIF_F_HW_VLAN_CTAG_FILTER)
 					vlan_ops->ena_rx_filtering(vsi);
 			}
+
+			/* disable allmulti here, but only if allmulti is not
+			 * still enabled for the netdev
+			 */
+			if (!(vsi->current_netdev_flags & IFF_ALLMULTI)) {
+				err = ice_clear_promisc(vsi,
+							ICE_MCAST_PROMISC_BITS);
+				if (err) {
+					netdev_err(netdev, "Error %d clearing multicast promiscuous on VSI %i\n",
+						   err, vsi->vsi_num);
+				}
+			}
 		}
 	}
 	goto exit;

base-commit: 811d581194f7412eda97acc03d17fc77824b561f
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
