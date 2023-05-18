Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2854F707E0A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 12:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B752F4288D;
	Thu, 18 May 2023 10:27:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B752F4288D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684405622;
	bh=ku1nNW4qnDVKKzrj6+W58eWGF594c6WXVx7g3+sJXD4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gYhudCOUFPAjOnUlGb5KHmB5PltrMJo9U+clxg9VTUOMFFyDcY2TkARLkdbXUNodP
	 2Q9BdWrScXc1XIpG6LleWnPRhhbiUY/C5ZDC6GVh76sPNLxF8Hm0tRNeLp49f2C7Mo
	 gJNS2GbcEmNqH15jH3mm0/GNsfxfS+X/axWKG6B4KWhr7pxHuI1yuHI1ilQRxXwvGc
	 J0c+xls/yJQzL4sbn1ICh0HcEy18bBm4VjjUHm6k6Aep8FYCpBuHFZQytzyZwwefTM
	 lBOBvMJAF1yzIXCqX/vgNQLm6+qvNnKLF6qnWkFuPj7dMEojnAFGC6gCh3FPnFIVUv
	 puccPr1rCVBhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZtfKdZGti7CA; Thu, 18 May 2023 10:27:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C20F4282A;
	Thu, 18 May 2023 10:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C20F4282A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C51A51BF574
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9952843C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9952843C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4jDU9-CbD0jQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 10:26:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28814843C6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28814843C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438371447"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438371447"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 03:26:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="767143757"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="767143757"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 18 May 2023 03:26:26 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EA63936C1E;
 Thu, 18 May 2023 11:26:25 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 May 2023 12:25:09 +0200
Message-Id: <20230518102509.20913-11-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230518102509.20913-1-wojciech.drewek@intel.com>
References: <20230518102509.20913-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684405598; x=1715941598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fk+MwS5mHyXXDU/+J9uuIfeeyhxFbj6y0BPlCSHgm2g=;
 b=Je9Nq3Wsv3iHng+DT21VU2ZkY0YQqH1YvbmQHMckrBQe8rtPPbCsxSXa
 /HHLPpkMiD4VLvBasjA/aKINFJj+KZ9QHrBmaEnyKbOQVdsHArSuAom+k
 bHJsI2eWMzBZsvxTlAI0kanWPXJ1DmM5EmSs/71kRqjmCLeGg+HU2Nb3R
 vqyBNbpzbHR2RIEFpZg6f88rCbyTOfXNqGyYz5E2BDuDZqngelO7aO3wx
 PR1sYjuzCNNTVBOfkQ7UuX1joDrxMrK3YrsgmEir7IiCaZk1tCcU6HH0T
 l2FgaTwJNxVdC8rFVkq6FCM74vy5leTAp0HVAtvd1me4zNHPLnEc3Wdnw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Je9Nq3Ws
Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/10] ice: add tracepoints
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
index 41c47dec5d32..1e75f5210c85 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -7,6 +7,7 @@
 #include "ice_switch.h"
 #include "ice_vlan.h"
 #include "ice_vf_vsi_vlan_ops.h"
+#include "ice_trace.h"
 
 #define ICE_ESW_BRIDGE_UPDATE_INTERVAL msecs_to_jiffies(1000)
 
@@ -399,6 +400,7 @@ ice_eswitch_br_fdb_entry_find_and_delete(struct ice_esw_br *bridge,
 		return;
 	}
 
+	trace_ice_eswitch_br_fdb_entry_find_and_delete(fdb_entry);
 	ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, fdb_entry);
 }
 
@@ -468,6 +470,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 		goto err_fdb_insert;
 
 	list_add(&fdb_entry->list, &bridge->fdb_list);
+	trace_ice_eswitch_br_fdb_entry_create(fdb_entry);
 
 	ice_eswitch_br_fdb_offload_notify(netdev, mac, vid, event);
 
@@ -642,6 +645,7 @@ static void
 ice_eswitch_br_vlan_cleanup(struct ice_esw_br_port *port,
 			    struct ice_esw_br_vlan *vlan)
 {
+	trace_ice_eswitch_br_vlan_cleanup(vlan);
 	xa_erase(&port->vlans, vlan->vid);
 	if (port->pvid == vlan->vid)
 		ice_eswitch_br_clear_pvid(port);
@@ -725,6 +729,8 @@ ice_eswitch_br_vlan_create(u16 vid, u16 flags, struct ice_esw_br_port *port)
 	if (err)
 		goto err_insert;
 
+	trace_ice_eswitch_br_vlan_create(vlan);
+
 	return vlan;
 
 err_insert:
@@ -1083,6 +1089,7 @@ ice_eswitch_br_port_unlink(struct ice_esw_br_offloads *br_offloads,
 		return -EINVAL;
 	}
 
+	trace_ice_eswitch_br_port_unlink(br_port);
 	ice_eswitch_br_port_deinit(br_port->bridge, br_port);
 	ice_eswitch_br_verify_deinit(br_offloads, br_port->bridge);
 
@@ -1111,6 +1118,7 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
 		struct ice_repr *repr = ice_netdev_to_repr(dev);
 
 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
+		trace_ice_eswitch_br_port_link(repr->br_port);
 	} else {
 		struct net_device *ice_dev;
 		struct ice_pf *pf;
@@ -1126,6 +1134,7 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
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
