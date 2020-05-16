Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A00081D5D71
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B8C387C1A;
	Sat, 16 May 2020 00:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7KtxpG-W4XNy; Sat, 16 May 2020 00:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DDB0863CE;
	Sat, 16 May 2020 00:54:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A76941BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A473E87F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYc7jlAxnmEU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA567881F0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:56 +0000 (UTC)
IronPort-SDR: VycuR3RXqSJ+lQtyeom5iw5BKQV5A2RH79v/URUxkzSZcELClhiqoENgyyL/c51vnqqHTaRPGo
 wM2Uh7jWRx2A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: wzOyxnEYQtz/8hqOmvfCkdG1EmdK43G3bSCTVDCKp6z1259ykYoKYu1Xilr4a6H1bFzMxVznM4
 dWNsITesQ0zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360547"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:17 -0700
Message-Id: <20200516005121.4963-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 11/15] ice: allow host to clear
 administratively set VF MAC
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

From: Brett Creeley <brett.creeley@intel.com>

Currently a user is not allowed to clear a VF's administratively set MAC
on the PF. Fix this by allowing an all zero MAC address via "ip link set
${pf_eth} vf ${vf_id} mac 00:00:00:00:00:00".

An example use case for this would be issuing a "virsh shutdown"
command on a VM. The call to iproute mentioned above is part of this flow.
Without this change the driver incorrectly rejects clearing the VF's
administratively set MAC and prints unhelpful log messages.

Also, improve the comments surrounding this change.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 22 ++++++++++++-------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index f5596b45b996..abc4f2dba388 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3912,7 +3912,7 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-	if (is_zero_ether_addr(mac) || is_multicast_ether_addr(mac)) {
+	if (is_multicast_ether_addr(mac)) {
 		netdev_err(netdev, "%pM not a valid unicast address\n", mac);
 		return -EINVAL;
 	}
@@ -3932,15 +3932,21 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		return -EINVAL;
 	}
 
-	/* copy MAC into dflt_lan_addr and trigger a VF reset. The reset
-	 * flow will use the updated dflt_lan_addr and add a MAC filter
-	 * using ice_add_mac. Also set pf_set_mac to indicate that the PF has
-	 * set the MAC address for this VF.
+	/* VF is notified of its new MAC via the PF's response to the
+	 * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been reset
 	 */
 	ether_addr_copy(vf->dflt_lan_addr.addr, mac);
-	vf->pf_set_mac = true;
-	netdev_info(netdev, "MAC on VF %d set to %pM. VF driver will be reinitialized\n",
-		    vf_id, mac);
+	if (is_zero_ether_addr(mac)) {
+		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
+		vf->pf_set_mac = false;
+		netdev_info(netdev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
+			    vf->vf_id);
+	} else {
+		/* PF will add MAC rule for the VF */
+		vf->pf_set_mac = true;
+		netdev_info(netdev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
+			    mac, vf_id);
+	}
 
 	ice_vc_reset_vf(vf);
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
