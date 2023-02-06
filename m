Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2228068CA87
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 00:29:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F5FE60D69;
	Mon,  6 Feb 2023 23:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F5FE60D69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675726184;
	bh=HxHnX9qMWuKGX0P++TAACf0l2CnlryQinxTrS7Yrtlo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Qme0n62SGqZX6LMrlBu8bRxaHkp0u3rx1H5LW3Apco408kld+WiV9oiqt4KvSH8I7
	 gahYWgA7nIcaKd8Vjq3E7KyDZ64XRZG26UKjq3YfdhtKmpF2QCWoRANFK1XdStqGqo
	 g+LFpSCBxg6B3xn44TBSelw/bRFSqVigebV+11Q2tMffYHJSPU21HaJLdYSofY9CYH
	 N9wYiggl2qVYp6Sgwf9p9+dtUumwhPFw/aA1f9Ee+lzjQNm7PstSrmMxialOWhaGdD
	 +4aKPAY83mxcm0qlulnVEH5vF83jeCnQemgJUKMBxda6Z/EeG2NKckxH/JcIFbOZUr
	 nJ4gQjldiRPMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12jO87MJbQwV; Mon,  6 Feb 2023 23:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8501060D5C;
	Mon,  6 Feb 2023 23:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8501060D5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE6D61BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 23:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6472660D5C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 23:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6472660D5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RNPbCfZJGAsS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 23:29:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2038660D4B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2038660D4B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 23:29:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="329359160"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="329359160"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 15:29:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="644226295"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="644226295"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 15:29:16 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 Feb 2023 15:29:07 -0800
Message-Id: <20230206232907.2254660-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675726177; x=1707262177;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2IK/u3DAhtqRDfw1/fXUaLW4gkd0Z777YypOt+/mn0w=;
 b=eGUlZls/ltFeWUS0TinJQymPugXtIq/yc43CyQXtfKShMPIy+31y1AhX
 gOfdn/QLPHZv3pud5iZbOStT9xDvZavWpi+fo+iTG9OE5QaBmlNJNK6UV
 4TFEWcEHVpb9CxxUgh7Z9F9wTKPPBoZz8OEvK0HyAegvDUDmqKaDvyZrn
 xdqQt4DKK8pvGaheckbwvtWMsYosO8so3o64y30ttgOjtV+rpsn2cp9DD
 V/kWpYv+0RLSzrgn4d+GG+IAVmqhXAeBCtbe9/wvFMH3X2tOj8dqVbTlK
 hiND4qmNpDVwT7mv/HNlRz34Nzcn32vBaYdoeuwD2d7SRPCpKBp+UURoC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eGUlZls/
Subject: [Intel-wired-lan] [PATCH net v1] ice: fix lost multicast packets in
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

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
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
