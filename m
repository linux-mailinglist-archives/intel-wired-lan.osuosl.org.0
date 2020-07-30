Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEC62328B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13AB124C8E;
	Thu, 30 Jul 2020 00:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FV0fVSVOcXEr; Thu, 30 Jul 2020 00:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8E96824DD1;
	Thu, 30 Jul 2020 00:23:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F08C1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 167CB22846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tLWlToAbbHYW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id B85C224F92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
IronPort-SDR: 06dBT+fmgcfjnNSLDl/6qX5R/ILzsZnPL5u6D+ni8ynvmVzr7LwjKBwDGad5Efc4m7BfBp4FbZ
 dCzNtOIrqhUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004469"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004469"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: jXk81gz9tlkoGGJbkWEywIa7/54OVJVpbdeOY4ehHzbqqiVessuBV5ZIY7wIssxXuWTpcBWL9i
 M5rR8D7S/gJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908828"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:50 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:19 -0700
Message-Id: <20200730001922.52568-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 10/13] ice: Disable VLAN pruning in
 promiscuous mode
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

From: Nick Nunley <nicholas.d.nunley@intel.com>

Disable VLAN pruning when entering promiscuous mode, and re-enable it
when exiting.

Without this VLAN-over-bridge topologies created on the device won't be
functional unless rx-vlan-filter is explicitly disabled with ethtool.

Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 7 +++++++
 drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 84202c814c3b..f2682776f8c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2017,6 +2017,13 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 	if (!vsi)
 		return -EINVAL;
 
+	/* Don't enable VLAN pruning if the netdev is currently in promiscuous
+	 * mode. VLAN pruning will be enabled when the interface exits
+	 * promiscuous mode if any VLAN filters are active.
+	 */
+	if (vsi->netdev && vsi->netdev->flags & IFF_PROMISC && ena)
+		return 0;
+
 	pf = vsi->back;
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 22bbd84eef64..22e3d32463f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -369,6 +369,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 						~IFF_PROMISC;
 					goto out_promisc;
 				}
+				ice_cfg_vlan_pruning(vsi, false, false);
 			}
 		} else {
 			/* Clear Rx filter to remove traffic from wire */
@@ -381,6 +382,8 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 						IFF_PROMISC;
 					goto out_promisc;
 				}
+				if (vsi->num_vlan > 1)
+					ice_cfg_vlan_pruning(vsi, true, false);
 			}
 		}
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
