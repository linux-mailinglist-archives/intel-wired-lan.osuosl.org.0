Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957AB750587
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 13:06:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 301EC41592;
	Wed, 12 Jul 2023 11:06:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 301EC41592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689159962;
	bh=al3J/d+EY+QtqwUsXM6x6kj/nYGuK7xoiggD2Z+i7zc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n2b2Cs8eS+92OiYKQthRxBf/VgG2/BR68jNaVzerfe6RpXOos11McNHNA0gwNM584
	 DHw3wMtZZkvAVir/PGz5jciaUcmM/95GkGg9doYIYeApOblQLkbXecBj9pbJtuIOXg
	 5TInAQ9Zf0b2btK5iXOUcwEPAG4+jjVeFGlMv6t7qP+gL5A5hULB0NV8DkYQOYZkJx
	 O+6lMp3Na1+JjVU1EC5JY4ewPVjpgCmwLUyxlk48I/HjTFKvP2ve4VJIcAuDNXYt3i
	 ApXVD+iVNhQrsIOGAaskTSpXduatJguAm2ZA8U5MnFUnFFPlA/MLZ8DKFXoswPMee4
	 amkudfgZlyphA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cmtz52m67XB1; Wed, 12 Jul 2023 11:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0515A4138F;
	Wed, 12 Jul 2023 11:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0515A4138F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 108021BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77D7140514
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77D7140514
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNlYzso_KDL2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 11:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7976A40516
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7976A40516
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430993851"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="430993851"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 04:05:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="835093810"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="835093810"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2023 04:05:04 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EF462369EA;
 Wed, 12 Jul 2023 12:05:03 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jul 2023 13:03:37 +0200
Message-Id: <20230712110337.8030-13-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712110337.8030-1-wojciech.drewek@intel.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689159913; x=1720695913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N1vrGF69hDZd4qreGdj8bhgkg28ZcLSoqASz8pl7VPs=;
 b=WzW80H6yY2+8B0ZvH8qS1yiB/AxVUhxZwhMVkwSjgyjjuKpqJTxg7jDv
 kY4anjES+JdzHDdqVLqOD8bBsNDsr3076LK2vDrSMKc1quSnZMkvYk7i8
 t8s4Cwoj9dYfLeQ72mjnCYor/Ct2FedGsaR1r/9p44F7PjAjvySs0Ewq6
 5hUoRVVaoowAQUjth67SHKRZZoI+aBpZFBxGAHaW9VuwbHyWJep9Nv9yP
 pZQAjkZYmAWFRTKq8RXuUigkBPWcUgy8q8+Us6yMaM/hskzlZDfBQbhc8
 K4edHJ9UaZioYaBc+BkVhGVBZIuiT3Dy22eMIdT9wLvOZcP/EjroOXFdq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WzW80H6y
Subject: [Intel-wired-lan] [PATCH iwl-next v6 12/12] ice: add tracepoints
 for the switchdev bridge
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, vladbu@nvidia.com,
 kuba@kernel.org, simon.horman@corigine.com, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com>

Add tracepoints for the following events:
- Add FDB entry
- Delete FDB entry
- Create bridge VLAN
- Cleanup bridge VLAN
- Link port to the bridge
- Unlink port from the bridge

Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 10 +++
 drivers/net/ethernet/intel/ice/ice_trace.h    | 90 +++++++++++++++++++
 2 files changed, 100 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 9ccd082f9ac4..673ba3125166 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -7,6 +7,7 @@
 #include "ice_switch.h"
 #include "ice_vlan.h"
 #include "ice_vf_vsi_vlan_ops.h"
+#include "ice_trace.h"
 
 #define ICE_ESW_BRIDGE_UPDATE_INTERVAL msecs_to_jiffies(1000)
 
@@ -353,6 +354,7 @@ ice_eswitch_br_fdb_entry_find_and_delete(struct ice_esw_br *bridge,
 		return;
 	}
 
+	trace_ice_eswitch_br_fdb_entry_find_and_delete(fdb_entry);
 	ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, fdb_entry);
 }
 
@@ -422,6 +424,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 		goto err_fdb_insert;
 
 	list_add(&fdb_entry->list, &bridge->fdb_list);
+	trace_ice_eswitch_br_fdb_entry_create(fdb_entry);
 
 	ice_eswitch_br_fdb_offload_notify(netdev, mac, vid, event);
 
@@ -596,6 +599,8 @@ ice_eswitch_br_vlan_cleanup(struct ice_esw_br_port *port,
 	struct ice_esw_br_fdb_entry *fdb_entry, *tmp;
 	struct ice_esw_br *bridge = port->bridge;
 
+	trace_ice_eswitch_br_vlan_cleanup(vlan);
+
 	list_for_each_entry_safe(fdb_entry, tmp, &bridge->fdb_list, list) {
 		if (vlan->vid == fdb_entry->data.vid)
 			ice_eswitch_br_fdb_entry_delete(bridge, fdb_entry);
@@ -685,6 +690,8 @@ ice_eswitch_br_vlan_create(u16 vid, u16 flags, struct ice_esw_br_port *port)
 	if (err)
 		goto err_insert;
 
+	trace_ice_eswitch_br_vlan_create(vlan);
+
 	return vlan;
 
 err_insert:
@@ -1046,6 +1053,7 @@ ice_eswitch_br_port_unlink(struct ice_esw_br_offloads *br_offloads,
 
 	bridge = br_port->bridge;
 
+	trace_ice_eswitch_br_port_unlink(br_port);
 	ice_eswitch_br_port_deinit(br_port->bridge, br_port);
 	ice_eswitch_br_verify_deinit(br_offloads, bridge);
 
@@ -1074,10 +1082,12 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
 		struct ice_repr *repr = ice_netdev_to_repr(dev);
 
 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
+		trace_ice_eswitch_br_port_link(repr->br_port);
 	} else {
 		struct ice_pf *pf = ice_netdev_to_pf(dev);
 
 		err = ice_eswitch_br_uplink_port_init(bridge, pf);
+		trace_ice_eswitch_br_port_link(pf->br_port);
 	}
 	if (err) {
 		NL_SET_ERR_MSG_MOD(extack, "Failed to init bridge port");
diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
index ae98d5a8ff60..b2f5c9fe0149 100644
--- a/drivers/net/ethernet/intel/ice/ice_trace.h
+++ b/drivers/net/ethernet/intel/ice/ice_trace.h
@@ -21,6 +21,7 @@
 #define _ICE_TRACE_H_
 
 #include <linux/tracepoint.h>
+#include "ice_eswitch_br.h"
 
 /* ice_trace() macro enables shared code to refer to trace points
  * like:
@@ -240,6 +241,95 @@ DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_fw_req);
 DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_fw_done);
 DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_complete);
 
+DECLARE_EVENT_CLASS(ice_esw_br_fdb_template,
+		    TP_PROTO(struct ice_esw_br_fdb_entry *fdb),
+		    TP_ARGS(fdb),
+		    TP_STRUCT__entry(__array(char, dev_name, IFNAMSIZ)
+				     __array(unsigned char, addr, ETH_ALEN)
+				     __field(u16, vid)
+				     __field(int, flags)),
+		    TP_fast_assign(strscpy(__entry->dev_name,
+					   netdev_name(fdb->dev),
+					   IFNAMSIZ);
+				   memcpy(__entry->addr, fdb->data.addr, ETH_ALEN);
+				   __entry->vid = fdb->data.vid;
+				   __entry->flags = fdb->flags;),
+		    TP_printk("net_device=%s addr=%pM vid=%u flags=%x",
+			      __entry->dev_name,
+			      __entry->addr,
+			      __entry->vid,
+			      __entry->flags)
+);
+
+DEFINE_EVENT(ice_esw_br_fdb_template,
+	     ice_eswitch_br_fdb_entry_create,
+	     TP_PROTO(struct ice_esw_br_fdb_entry *fdb),
+	     TP_ARGS(fdb)
+);
+
+DEFINE_EVENT(ice_esw_br_fdb_template,
+	     ice_eswitch_br_fdb_entry_find_and_delete,
+	     TP_PROTO(struct ice_esw_br_fdb_entry *fdb),
+	     TP_ARGS(fdb)
+);
+
+DECLARE_EVENT_CLASS(ice_esw_br_vlan_template,
+		    TP_PROTO(struct ice_esw_br_vlan *vlan),
+		    TP_ARGS(vlan),
+		    TP_STRUCT__entry(__field(u16, vid)
+				     __field(u16, flags)),
+		    TP_fast_assign(__entry->vid = vlan->vid;
+				   __entry->flags = vlan->flags;),
+		    TP_printk("vid=%u flags=%x",
+			      __entry->vid,
+			      __entry->flags)
+);
+
+DEFINE_EVENT(ice_esw_br_vlan_template,
+	     ice_eswitch_br_vlan_create,
+	     TP_PROTO(struct ice_esw_br_vlan *vlan),
+	     TP_ARGS(vlan)
+);
+
+DEFINE_EVENT(ice_esw_br_vlan_template,
+	     ice_eswitch_br_vlan_cleanup,
+	     TP_PROTO(struct ice_esw_br_vlan *vlan),
+	     TP_ARGS(vlan)
+);
+
+#define ICE_ESW_BR_PORT_NAME_L 16
+
+DECLARE_EVENT_CLASS(ice_esw_br_port_template,
+		    TP_PROTO(struct ice_esw_br_port *port),
+		    TP_ARGS(port),
+		    TP_STRUCT__entry(__field(u16, vport_num)
+				     __array(char, port_type, ICE_ESW_BR_PORT_NAME_L)),
+		    TP_fast_assign(__entry->vport_num = port->vsi_idx;
+					if (port->type == ICE_ESWITCH_BR_UPLINK_PORT)
+						strscpy(__entry->port_type,
+							"Uplink",
+							ICE_ESW_BR_PORT_NAME_L);
+					else
+						strscpy(__entry->port_type,
+							"VF Representor",
+							ICE_ESW_BR_PORT_NAME_L);),
+		    TP_printk("vport_num=%u port type=%s",
+			      __entry->vport_num,
+			      __entry->port_type)
+);
+
+DEFINE_EVENT(ice_esw_br_port_template,
+	     ice_eswitch_br_port_link,
+	     TP_PROTO(struct ice_esw_br_port *port),
+	     TP_ARGS(port)
+);
+
+DEFINE_EVENT(ice_esw_br_port_template,
+	     ice_eswitch_br_port_unlink,
+	     TP_PROTO(struct ice_esw_br_port *port),
+	     TP_ARGS(port)
+);
+
 /* End tracepoints */
 
 #endif /* _ICE_TRACE_H_ */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
