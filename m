Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82BA70B887
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 11:07:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E6E840CAA;
	Mon, 22 May 2023 09:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E6E840CAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684746465;
	bh=QI/DGqEP3/BOjmXFfsGBi/CI+1xvebwHF7Ye175yP0c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PxRtvjrutY1PwXeL8V3x/rAfV7sCGBm7o1TShIvctzhC82y4B6ihVtkPtgkcFKHYV
	 iDNf05DgJS2WUCok/rSzRpjT+5V4ZXq55cnIlRhRSNSVvTpdHXpUm6mw8MClh+beOC
	 3B/OHQijIXooCqPfwRj41Avu29CTXAzpxYpFzBfNyUSY6w67rUnfd2cv1qJl4zAcec
	 KHFhnvGlWqqVSVDs+2dCxAxIyp0vqgMU6V1OglFoitfOGYIjADJDWrvN/j1Uk4WBzc
	 WudU1H6KXUi6Ueu4qbc37TGFlX2D/geNZV2CLQbf2w04GhEeWnMgY1J0r628w2/QuO
	 yudtcloQUV2eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hIpHNiiH3Rbq; Mon, 22 May 2023 09:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB9B440C12;
	Mon, 22 May 2023 09:07:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB9B440C12
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FB1B1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:07:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C0BF60745
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:07:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C0BF60745
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H_4msuH5Flo8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 09:07:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC88B60784
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC88B60784
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:07:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="337459312"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="337459312"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 02:06:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="847765499"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="847765499"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2023 02:06:54 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 988C2369EB;
 Mon, 22 May 2023 10:06:53 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 11:05:40 +0200
Message-Id: <20230522090542.45679-9-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230522090542.45679-1-wojciech.drewek@intel.com>
References: <20230522090542.45679-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684746420; x=1716282420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LWDUThNqwhejMN6SWHHU2OlNSb5X4G5KV+Cqsh/4C2U=;
 b=ZmjsrIcX8TcueXO3doyyjyhIVr41zIlQyajtZsO8kSXD93SB8BTgYDTG
 EDzSihZmTP4KUgYWZPSHHT6x+sSZnhhS2LRZ664x8i9JuqFv+2QKJ8kRV
 OTgvtVGWF1k2JUdcG7QFpB0GhaRrY5dL3NBD1MAD8brfd9qrpyGyKd+9D
 cIjbrEGTFwy5An4WEuJ/p8r3FZa+mXAQ3pkPdZAQXSiVtNRTpxXD5VzUx
 6tv9F0r3CbDqSe98xk6Yq4MiBr6lLuCEt/IXoWbxs3Dc2LJSeLZ93vhYX
 7qpeLU89ZUdYQujEkjZgeYXTY6YlBCVjEhzW1YCaZJnJhVR3Lnqvx0Nf7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZmjsrIcX
Subject: [Intel-wired-lan] [PATCH iwl-next v3 08/10] ice: implement bridge
 port vlan
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Port VLAN in this case means push and pop VLAN action on specific vid.
There are a few limitation in hardware:
- push and pop can't be used separately
- if port VLAN is used there can't be any trunk VLANs, because pop
  action is done on all traffic received by VSI in port VLAN mode
- port VLAN mode on uplink port isn't supported

Reflect these limitations in code using dev_info to inform the user
about unsupported configuration.

In bridge mode there is a need to configure port vlan without resetting
VFs. To do that implement ice_port_vlan_on/off() functions. They are
only configuring correct vlan_ops to allow setting port vlan.

We also need to clear port vlan without resetting the VF which is not
supported right now. Change it by implementing clear_port_vlan ops.
As previous VLAN configuration isn't always the same, store current
config while creating port vlan and restore it in clear function.

Configuration steps:
- configure switchdev with bridge
- #bridge vlan add dev eth0 vid 120 pvid untagged
- #bridge vlan add dev eth1 vid 120 pvid untagged
- ping from VF0 to VF1

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: minor code style changes, optimize port vlan ops initialization
    in ice_port_vlan_on and ice_port_vlan_off, replace WARN_ON
    with WARN_ON_ONCE
v3: fix traffic typo in the commit message
---
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  89 ++++++++-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |   1 +
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  | 186 ++++++++++--------
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |   3 +
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  84 +++++++-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |   8 +
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |   1 +
 8 files changed, 283 insertions(+), 90 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 8876ed8ba268..176e281dfa24 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -370,6 +370,7 @@ struct ice_vsi {
 	u16 rx_buf_len;
 
 	struct ice_aqc_vsi_props info;	 /* VSI properties */
+	struct ice_vsi_vlan_info vlan_info;	/* vlan config to be restored */
 
 	/* VSI stats */
 	struct rtnl_link_stats64 net_stats;
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index ea1f6b2873bd..74857da6be9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -5,6 +5,8 @@
 #include "ice_eswitch_br.h"
 #include "ice_repr.h"
 #include "ice_switch.h"
+#include "ice_vlan.h"
+#include "ice_vf_vsi_vlan_ops.h"
 
 static const struct rhashtable_params ice_fdb_ht_params = {
 	.key_offset = offsetof(struct ice_esw_br_fdb_entry, data),
@@ -610,11 +612,27 @@ ice_eswitch_br_vlan_filtering_set(struct ice_esw_br *bridge, bool enable)
 		bridge->flags &= ~ICE_ESWITCH_BR_VLAN_FILTERING;
 }
 
+static void
+ice_eswitch_br_clear_pvid(struct ice_esw_br_port *port)
+{
+	struct ice_vsi_vlan_ops *vlan_ops;
+
+	vlan_ops = ice_get_compat_vsi_vlan_ops(port->vsi);
+
+	vlan_ops->clear_port_vlan(port->vsi);
+
+	ice_vf_vsi_disable_port_vlan(port->vsi);
+
+	port->pvid = 0;
+}
+
 static void
 ice_eswitch_br_vlan_cleanup(struct ice_esw_br_port *port,
 			    struct ice_esw_br_vlan *vlan)
 {
 	xa_erase(&port->vlans, vlan->vid);
+	if (port->pvid == vlan->vid)
+		ice_eswitch_br_clear_pvid(port);
 	kfree(vlan);
 }
 
@@ -627,9 +645,50 @@ static void ice_eswitch_br_port_vlans_flush(struct ice_esw_br_port *port)
 		ice_eswitch_br_vlan_cleanup(port, vlan);
 }
 
+static int
+ice_eswitch_br_set_pvid(struct ice_esw_br_port *port,
+			struct ice_esw_br_vlan *vlan)
+{
+	struct ice_vlan port_vlan = ICE_VLAN(ETH_P_8021Q, vlan->vid, 0);
+	struct device *dev = ice_pf_to_dev(port->vsi->back);
+	struct ice_vsi_vlan_ops *vlan_ops;
+	int err;
+
+	if (port->pvid == vlan->vid || vlan->vid == 1)
+		return 0;
+
+	/* Setting port vlan on uplink isn't supported by hw */
+	if (port->type == ICE_ESWITCH_BR_UPLINK_PORT)
+		return -EOPNOTSUPP;
+
+	if (port->pvid) {
+		dev_info(dev,
+			 "Port VLAN (vsi=%u, vid=%u) already exists on the port, remove it before adding new one\n",
+			 port->vsi_idx, port->pvid);
+		return -EEXIST;
+	}
+
+	ice_vf_vsi_enable_port_vlan(port->vsi);
+
+	vlan_ops = ice_get_compat_vsi_vlan_ops(port->vsi);
+	err = vlan_ops->set_port_vlan(port->vsi, &port_vlan);
+	if (err)
+		return err;
+
+	err = vlan_ops->add_vlan(port->vsi, &port_vlan);
+	if (err)
+		return err;
+
+	ice_eswitch_br_port_vlans_flush(port);
+	port->pvid = vlan->vid;
+
+	return 0;
+}
+
 static struct ice_esw_br_vlan *
 ice_eswitch_br_vlan_create(u16 vid, u16 flags, struct ice_esw_br_port *port)
 {
+	struct device *dev = ice_pf_to_dev(port->vsi->back);
 	struct ice_esw_br_vlan *vlan;
 	int err;
 
@@ -639,14 +698,29 @@ ice_eswitch_br_vlan_create(u16 vid, u16 flags, struct ice_esw_br_port *port)
 
 	vlan->vid = vid;
 	vlan->flags = flags;
+	if ((flags & BRIDGE_VLAN_INFO_PVID) &&
+	    (flags & BRIDGE_VLAN_INFO_UNTAGGED)) {
+		err = ice_eswitch_br_set_pvid(port, vlan);
+		if (err)
+			goto err_set_pvid;
+	} else if ((flags & BRIDGE_VLAN_INFO_PVID) ||
+		   (flags & BRIDGE_VLAN_INFO_UNTAGGED)) {
+		dev_info(dev, "VLAN push and pop are supported only simultaneously\n");
+		return ERR_PTR(-EOPNOTSUPP);
+	}
 
 	err = xa_insert(&port->vlans, vlan->vid, vlan, GFP_KERNEL);
-	if (err) {
-		kfree(vlan);
-		return ERR_PTR(err);
-	}
+	if (err)
+		goto err_insert;
 
 	return vlan;
+
+err_insert:
+	if (port->pvid)
+		ice_eswitch_br_clear_pvid(port);
+err_set_pvid:
+	kfree(vlan);
+	return ERR_PTR(err);
 }
 
 static int
@@ -660,6 +734,13 @@ ice_eswitch_br_port_vlan_add(struct ice_esw_br *bridge, u16 vsi_idx, u16 vid,
 	if (!port)
 		return -EINVAL;
 
+	if (port->pvid) {
+		dev_info(ice_pf_to_dev(port->vsi->back),
+			 "Port VLAN (vsi=%u, vid=%d) exists on the port, remove it to add trunk VLANs\n",
+			 port->vsi_idx, port->pvid);
+		return -EEXIST;
+	}
+
 	vlan = xa_load(&port->vlans, vid);
 	if (vlan) {
 		if (vlan->flags == flags)
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index 895b32ece926..72316ba8ff4d 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
@@ -42,6 +42,7 @@ struct ice_esw_br_port {
 	struct ice_vsi *vsi;
 	enum ice_esw_br_port_type type;
 	u16 vsi_idx;
+	u16 pvid;
 	struct xarray vlans;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
index b1ffb81893d4..d7b10dc67f03 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
@@ -21,6 +21,99 @@ noop_vlan(struct ice_vsi __always_unused *vsi)
 	return 0;
 }
 
+static void ice_port_vlan_on(struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops;
+	struct ice_pf *pf = vsi->back;
+
+	if (ice_is_dvm_ena(&pf->hw)) {
+		vlan_ops = &vsi->outer_vlan_ops;
+
+		/* setup outer VLAN ops */
+		vlan_ops->set_port_vlan = ice_vsi_set_outer_port_vlan;
+		vlan_ops->clear_port_vlan = ice_vsi_clear_outer_port_vlan;
+		vlan_ops->clear_port_vlan = ice_vsi_clear_outer_port_vlan;
+
+		/* setup inner VLAN ops */
+		vlan_ops = &vsi->inner_vlan_ops;
+		vlan_ops->add_vlan = noop_vlan_arg;
+		vlan_ops->del_vlan = noop_vlan_arg;
+		vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
+		vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
+		vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
+		vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
+	} else {
+		vlan_ops = &vsi->inner_vlan_ops;
+
+		vlan_ops->set_port_vlan = ice_vsi_set_inner_port_vlan;
+		vlan_ops->clear_port_vlan = ice_vsi_clear_inner_port_vlan;
+		vlan_ops->clear_port_vlan = ice_vsi_clear_inner_port_vlan;
+	}
+	vlan_ops->ena_rx_filtering = ice_vsi_ena_rx_vlan_filtering;
+}
+
+static void ice_port_vlan_off(struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops;
+	struct ice_pf *pf = vsi->back;
+
+	/* setup inner VLAN ops */
+	vlan_ops = &vsi->inner_vlan_ops;
+
+	vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
+	vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
+	vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
+	vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
+
+	if (ice_is_dvm_ena(&pf->hw)) {
+		vlan_ops = &vsi->outer_vlan_ops;
+
+		vlan_ops->del_vlan = ice_vsi_del_vlan;
+		vlan_ops->ena_stripping = ice_vsi_ena_outer_stripping;
+		vlan_ops->dis_stripping = ice_vsi_dis_outer_stripping;
+		vlan_ops->ena_insertion = ice_vsi_ena_outer_insertion;
+		vlan_ops->dis_insertion = ice_vsi_dis_outer_insertion;
+	} else {
+		vlan_ops->del_vlan = ice_vsi_del_vlan;
+	}
+
+	if (!test_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags))
+		vlan_ops->ena_rx_filtering = noop_vlan;
+	else
+		vlan_ops->ena_rx_filtering =
+			ice_vsi_ena_rx_vlan_filtering;
+}
+
+/**
+ * ice_vf_vsi_enable_port_vlan - Set VSI VLAN ops to support port VLAN
+ * @vsi: VF's VSI being configured
+ *
+ * The function won't create port VLAN, it only allows to create port VLAN
+ * using VLAN ops on the VF VSI.
+ */
+void ice_vf_vsi_enable_port_vlan(struct ice_vsi *vsi)
+{
+	if (WARN_ON_ONCE(!vsi->vf))
+		return;
+
+	ice_port_vlan_on(vsi);
+}
+
+/**
+ * ice_vf_vsi_disable_port_vlan - Clear VSI support for creating port VLAN
+ * @vsi: VF's VSI being configured
+ *
+ * The function should be called after removing port VLAN on VSI
+ * (using VLAN ops)
+ */
+void ice_vf_vsi_disable_port_vlan(struct ice_vsi *vsi)
+{
+	if (WARN_ON_ONCE(!vsi->vf))
+		return;
+
+	ice_port_vlan_off(vsi);
+}
+
 /**
  * ice_vf_vsi_init_vlan_ops - Initialize default VSI VLAN ops for VF VSI
  * @vsi: VF's VSI being configured
@@ -39,91 +132,18 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 	if (WARN_ON(!vf))
 		return;
 
-	if (ice_is_dvm_ena(&pf->hw)) {
-		vlan_ops = &vsi->outer_vlan_ops;
+	if (ice_vf_is_port_vlan_ena(vf))
+		ice_port_vlan_on(vsi);
+	else
+		ice_port_vlan_off(vsi);
 
-		/* outer VLAN ops regardless of port VLAN config */
-		vlan_ops->add_vlan = ice_vsi_add_vlan;
-		vlan_ops->ena_tx_filtering = ice_vsi_ena_tx_vlan_filtering;
-		vlan_ops->dis_tx_filtering = ice_vsi_dis_tx_vlan_filtering;
-
-		if (ice_vf_is_port_vlan_ena(vf)) {
-			/* setup outer VLAN ops */
-			vlan_ops->set_port_vlan = ice_vsi_set_outer_port_vlan;
-			/* all Rx traffic should be in the domain of the
-			 * assigned port VLAN, so prevent disabling Rx VLAN
-			 * filtering
-			 */
-			vlan_ops->dis_rx_filtering = noop_vlan;
-			vlan_ops->ena_rx_filtering =
-				ice_vsi_ena_rx_vlan_filtering;
-
-			/* setup inner VLAN ops */
-			vlan_ops = &vsi->inner_vlan_ops;
-			vlan_ops->add_vlan = noop_vlan_arg;
-			vlan_ops->del_vlan = noop_vlan_arg;
-			vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
-			vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
-			vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
-			vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
-		} else {
-			vlan_ops->dis_rx_filtering =
-				ice_vsi_dis_rx_vlan_filtering;
-
-			if (!test_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags))
-				vlan_ops->ena_rx_filtering = noop_vlan;
-			else
-				vlan_ops->ena_rx_filtering =
-					ice_vsi_ena_rx_vlan_filtering;
-
-			vlan_ops->del_vlan = ice_vsi_del_vlan;
-			vlan_ops->ena_stripping = ice_vsi_ena_outer_stripping;
-			vlan_ops->dis_stripping = ice_vsi_dis_outer_stripping;
-			vlan_ops->ena_insertion = ice_vsi_ena_outer_insertion;
-			vlan_ops->dis_insertion = ice_vsi_dis_outer_insertion;
-
-			/* setup inner VLAN ops */
-			vlan_ops = &vsi->inner_vlan_ops;
-
-			vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
-			vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
-			vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
-			vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
-		}
-	} else {
-		vlan_ops = &vsi->inner_vlan_ops;
+	vlan_ops = ice_is_dvm_ena(&pf->hw) ?
+		&vsi->outer_vlan_ops : &vsi->inner_vlan_ops;
 
-		/* inner VLAN ops regardless of port VLAN config */
-		vlan_ops->add_vlan = ice_vsi_add_vlan;
-		vlan_ops->dis_rx_filtering = ice_vsi_dis_rx_vlan_filtering;
-		vlan_ops->ena_tx_filtering = ice_vsi_ena_tx_vlan_filtering;
-		vlan_ops->dis_tx_filtering = ice_vsi_dis_tx_vlan_filtering;
-
-		if (ice_vf_is_port_vlan_ena(vf)) {
-			vlan_ops->set_port_vlan = ice_vsi_set_inner_port_vlan;
-			vlan_ops->ena_rx_filtering =
-				ice_vsi_ena_rx_vlan_filtering;
-			/* all Rx traffic should be in the domain of the
-			 * assigned port VLAN, so prevent disabling Rx VLAN
-			 * filtering
-			 */
-			vlan_ops->dis_rx_filtering = noop_vlan;
-		} else {
-			vlan_ops->dis_rx_filtering =
-				ice_vsi_dis_rx_vlan_filtering;
-			if (!test_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags))
-				vlan_ops->ena_rx_filtering = noop_vlan;
-			else
-				vlan_ops->ena_rx_filtering =
-					ice_vsi_ena_rx_vlan_filtering;
-
-			vlan_ops->del_vlan = ice_vsi_del_vlan;
-			vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
-			vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
-			vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
-			vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
-		}
-	}
+	vlan_ops->add_vlan = ice_vsi_add_vlan;
+	vlan_ops->dis_rx_filtering = ice_vsi_dis_rx_vlan_filtering;
+	vlan_ops->ena_tx_filtering = ice_vsi_ena_tx_vlan_filtering;
+	vlan_ops->dis_tx_filtering = ice_vsi_dis_tx_vlan_filtering;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h
index 875a4e615f39..845330b49608 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.h
@@ -11,6 +11,9 @@ struct ice_vsi;
 void ice_vf_vsi_cfg_dvm_legacy_vlan_mode(struct ice_vsi *vsi);
 void ice_vf_vsi_cfg_svm_legacy_vlan_mode(struct ice_vsi *vsi);
 
+void ice_vf_vsi_enable_port_vlan(struct ice_vsi *vsi);
+void ice_vf_vsi_disable_port_vlan(struct ice_vsi *vsi);
+
 #ifdef CONFIG_PCI_IOV
 void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi);
 #else
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 5b4a0abb4607..76266e709a39 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -202,6 +202,24 @@ int ice_vsi_dis_inner_insertion(struct ice_vsi *vsi)
 	return ice_vsi_manage_vlan_insertion(vsi);
 }
 
+static void
+ice_save_vlan_info(struct ice_aqc_vsi_props *info,
+		   struct ice_vsi_vlan_info *vlan)
+{
+	vlan->sw_flags2 = info->sw_flags2;
+	vlan->inner_vlan_flags = info->inner_vlan_flags;
+	vlan->outer_vlan_flags = info->outer_vlan_flags;
+}
+
+static void
+ice_restore_vlan_info(struct ice_aqc_vsi_props *info,
+		      struct ice_vsi_vlan_info *vlan)
+{
+	info->sw_flags2 = vlan->sw_flags2;
+	info->inner_vlan_flags = vlan->inner_vlan_flags;
+	info->outer_vlan_flags = vlan->outer_vlan_flags;
+}
+
 /**
  * __ice_vsi_set_inner_port_vlan - set port VLAN VSI context settings to enable a port VLAN
  * @vsi: the VSI to update
@@ -218,6 +236,7 @@ static int __ice_vsi_set_inner_port_vlan(struct ice_vsi *vsi, u16 pvid_info)
 	if (!ctxt)
 		return -ENOMEM;
 
+	ice_save_vlan_info(&vsi->info, &vsi->vlan_info);
 	ctxt->info = vsi->info;
 	info = &ctxt->info;
 	info->inner_vlan_flags = ICE_AQ_VSI_INNER_VLAN_TX_MODE_ACCEPTUNTAGGED |
@@ -259,6 +278,33 @@ int ice_vsi_set_inner_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 	return __ice_vsi_set_inner_port_vlan(vsi, port_vlan_info);
 }
 
+int ice_vsi_clear_inner_port_vlan(struct ice_vsi *vsi)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_aqc_vsi_props *info;
+	struct ice_vsi_ctx *ctxt;
+	int ret;
+
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
+	if (!ctxt)
+		return -ENOMEM;
+
+	ice_restore_vlan_info(&vsi->info, &vsi->vlan_info);
+	vsi->info.port_based_inner_vlan = 0;
+	ctxt->info = vsi->info;
+	info = &ctxt->info;
+	info->valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
+					   ICE_AQ_VSI_PROP_SW_VALID);
+
+	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (ret)
+		dev_err(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
+			ret, ice_aq_str(hw->adminq.sq_last_status));
+
+	kfree(ctxt);
+	return ret;
+}
+
 /**
  * ice_cfg_vlan_pruning - enable or disable VLAN pruning on the VSI
  * @vsi: VSI to enable or disable VLAN pruning on
@@ -647,6 +693,7 @@ __ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, u16 vlan_info, u16 tpid)
 	if (!ctxt)
 		return -ENOMEM;
 
+	ice_save_vlan_info(&vsi->info, &vsi->vlan_info);
 	ctxt->info = vsi->info;
 
 	ctxt->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
@@ -689,9 +736,6 @@ __ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, u16 vlan_info, u16 tpid)
  * used if DVM is supported. Also, this function should never be called directly
  * as it should be part of ice_vsi_vlan_ops if it's needed.
  *
- * This function does not support clearing the port VLAN as there is currently
- * no use case for this.
- *
  * Use the ice_vlan structure passed in to set this VSI in a port VLAN.
  */
 int ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
@@ -705,3 +749,37 @@ int ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 
 	return __ice_vsi_set_outer_port_vlan(vsi, port_vlan_info, vlan->tpid);
 }
+
+/**
+ * ice_vsi_clear_outer_port_vlan - clear outer port vlan
+ * @vsi: VSI to configure
+ *
+ * The function is restoring previously set vlan config (saved in
+ * vsi->vlan_info). Setting happens in port vlan configuration.
+ */
+int ice_vsi_clear_outer_port_vlan(struct ice_vsi *vsi)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_vsi_ctx *ctxt;
+	int err;
+
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
+	if (!ctxt)
+		return -ENOMEM;
+
+	ice_restore_vlan_info(&vsi->info, &vsi->vlan_info);
+	vsi->info.port_based_outer_vlan = 0;
+	ctxt->info = vsi->info;
+
+	ctxt->info.valid_sections =
+		cpu_to_le16(ICE_AQ_VSI_PROP_OUTER_TAG_VALID |
+			    ICE_AQ_VSI_PROP_SW_VALID);
+
+	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (err)
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for clearing outer port based VLAN failed, err %d aq_err %s\n",
+			err, ice_aq_str(hw->adminq.sq_last_status));
+
+	kfree(ctxt);
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
index f459909490ec..f0d84d11bd5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
@@ -7,6 +7,12 @@
 #include <linux/types.h>
 #include "ice_vlan.h"
 
+struct ice_vsi_vlan_info {
+	u8 sw_flags2;
+	u8 inner_vlan_flags;
+	u8 outer_vlan_flags;
+};
+
 struct ice_vsi;
 
 int ice_vsi_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
@@ -17,6 +23,7 @@ int ice_vsi_dis_inner_stripping(struct ice_vsi *vsi);
 int ice_vsi_ena_inner_insertion(struct ice_vsi *vsi, u16 tpid);
 int ice_vsi_dis_inner_insertion(struct ice_vsi *vsi);
 int ice_vsi_set_inner_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
+int ice_vsi_clear_inner_port_vlan(struct ice_vsi *vsi);
 
 int ice_vsi_ena_rx_vlan_filtering(struct ice_vsi *vsi);
 int ice_vsi_dis_rx_vlan_filtering(struct ice_vsi *vsi);
@@ -28,5 +35,6 @@ int ice_vsi_dis_outer_stripping(struct ice_vsi *vsi);
 int ice_vsi_ena_outer_insertion(struct ice_vsi *vsi, u16 tpid);
 int ice_vsi_dis_outer_insertion(struct ice_vsi *vsi);
 int ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
+int ice_vsi_clear_outer_port_vlan(struct ice_vsi *vsi);
 
 #endif /* _ICE_VSI_VLAN_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
index 5b47568f6256..b2d2330dedcb 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
@@ -21,6 +21,7 @@ struct ice_vsi_vlan_ops {
 	int (*ena_tx_filtering)(struct ice_vsi *vsi);
 	int (*dis_tx_filtering)(struct ice_vsi *vsi);
 	int (*set_port_vlan)(struct ice_vsi *vsi, struct ice_vlan *vlan);
+	int (*clear_port_vlan)(struct ice_vsi *vsi);
 };
 
 void ice_vsi_init_vlan_ops(struct ice_vsi *vsi);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
