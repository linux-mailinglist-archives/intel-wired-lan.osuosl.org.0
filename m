Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F0570B886
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 11:07:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 687084103C;
	Mon, 22 May 2023 09:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 687084103C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684746460;
	bh=IEiHwH24u5WZahMB4fnL7dVeDFEsQLUA02SXCnqhCt4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pxI5/1E4fDRAYmu+C6V0n2mMOWC1wuuOXKYzPUFMzasPuTEd9IiPWNPKbXG85AuJ7
	 gZSa4C9pPjb/yPHLxhl8LwUdDlYiZaR6npcdoUq4owtFUl3O4FJ0JsDNbUGc0tkrkk
	 BRSs+KZrMAeshnaXKxLfDVBJ8Nuj1QN6LQlYmH/XpkJKvVs657JXmhGPusLg00bkMj
	 Nf4a9Ne1KyYldmWcbcj49rXNwe85ZBHv6plVK9DgtD+BiXbTqnsp8KeyNSET6Hh6Y2
	 U/DOyYP0oC492IV1sfLHDflApCXGecLvfY7poItuoNTQ0yNK2t6+VPTJ0xUxi268U4
	 UnaVh81oD+JLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id accIsoPT291h; Mon, 22 May 2023 09:07:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 233C940C09;
	Mon, 22 May 2023 09:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 233C940C09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A9A91BF39F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:07:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3DCA61356
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3DCA61356
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id II-yojLpCyK7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 09:06:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34B906135F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34B906135F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="337459299"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="337459299"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 02:06:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="847765493"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="847765493"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2023 02:06:55 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D9B0A3372E;
 Mon, 22 May 2023 10:06:54 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 11:05:42 +0200
Message-Id: <20230522090542.45679-11-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230522090542.45679-1-wojciech.drewek@intel.com>
References: <20230522090542.45679-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684746418; x=1716282418;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MGgSPd5u5tY6RlE3sIDlGBK+BdteFIEJuxVXH4ghRDw=;
 b=WyQJAVs51YuzB6Ea9uHD2gTk01ExxfBFuBE9U/wrXOXNVhN/YhbrJSHE
 j1fMt4WtzvIcNSREkAp4kBm9WUuvjE4Lny0fqH1bal7uQvcjyHYuuuJI0
 DgB1yNPy7F53Mcik5eHMXkgV15JmvzqQzJRCyTUU3kWPwgBA9924HsMQJ
 +11PLn50bqxiMWp5mrEiOU+9UzlLHR3SbV5YBnIZcXAE4LI9pLWOodKkt
 CSH4+DGxakvPuJj4Zj9+nkBXTwWEBO/qHscSESZMrkg/I4LHBXIGHmSvi
 2J4s56ISYgLijZClb9mxrM3TJHXhUgX69FjmN5tQmg2vJ+eifXxC8+zvw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WyQJAVs5
Subject: [Intel-wired-lan] [PATCH iwl-next v3 10/10] ice: add tracepoints
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
Cc: netdev@vger.kernel.org
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
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  9 ++
 drivers/net/ethernet/intel/ice/ice_trace.h    | 90 +++++++++++++++++++
 2 files changed, 99 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index af3465b9699c..22d36c4132ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -7,6 +7,7 @@
 #include "ice_switch.h"
 #include "ice_vlan.h"
 #include "ice_vf_vsi_vlan_ops.h"
+#include "ice_trace.h"
 
 #define ICE_ESW_BRIDGE_UPDATE_INTERVAL msecs_to_jiffies(1000)
 
@@ -390,6 +391,7 @@ ice_eswitch_br_fdb_entry_find_and_delete(struct ice_esw_br *bridge,
 		return;
 	}
 
+	trace_ice_eswitch_br_fdb_entry_find_and_delete(fdb_entry);
 	ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, fdb_entry);
 }
 
@@ -459,6 +461,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 		goto err_fdb_insert;
 
 	list_add(&fdb_entry->list, &bridge->fdb_list);
+	trace_ice_eswitch_br_fdb_entry_create(fdb_entry);
 
 	ice_eswitch_br_fdb_offload_notify(netdev, mac, vid, event);
 
@@ -633,6 +636,7 @@ static void
 ice_eswitch_br_vlan_cleanup(struct ice_esw_br_port *port,
 			    struct ice_esw_br_vlan *vlan)
 {
+	trace_ice_eswitch_br_vlan_cleanup(vlan);
 	xa_erase(&port->vlans, vlan->vid);
 	if (port->pvid == vlan->vid)
 		ice_eswitch_br_clear_pvid(port);
@@ -716,6 +720,8 @@ ice_eswitch_br_vlan_create(u16 vid, u16 flags, struct ice_esw_br_port *port)
 	if (err)
 		goto err_insert;
 
+	trace_ice_eswitch_br_vlan_create(vlan);
+
 	return vlan;
 
 err_insert:
@@ -1074,6 +1080,7 @@ ice_eswitch_br_port_unlink(struct ice_esw_br_offloads *br_offloads,
 		return -EINVAL;
 	}
 
+	trace_ice_eswitch_br_port_unlink(br_port);
 	ice_eswitch_br_port_deinit(br_port->bridge, br_port);
 	ice_eswitch_br_verify_deinit(br_offloads, br_port->bridge);
 
@@ -1102,6 +1109,7 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
 		struct ice_repr *repr = ice_netdev_to_repr(dev);
 
 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
+		trace_ice_eswitch_br_port_link(repr->br_port);
 	} else {
 		struct net_device *ice_dev;
 		struct ice_pf *pf;
@@ -1117,6 +1125,7 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
 		pf = ice_netdev_to_pf(ice_dev);
 
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
