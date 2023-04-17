Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A56056E43F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 11:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED431613D2;
	Mon, 17 Apr 2023 09:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED431613D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681724153;
	bh=ke8o6E1xt68qKLG/QLwLHUQl5kkn1vlOj19oxgeY7/g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w4JmHhWjoVJ7ruYsbwbopCzkJ+REHS/Cll4IoxA3iaaM2L17f7tHU/HGa9tdiWmjY
	 zq05KltDAZUY2HnvgJk1HjmW7/P4aU91ri004fFk6ZNYpvPOGyF7uV1NSRjo/jKH1X
	 n/AcZXRQCvTGzFbphfSS+t4vUGLlWRjyOyDDuDc+2bksoMxsqch8HZ0CdWv5TkBQI4
	 KNiwqKJMK0MxYXqySEJQbnoQDbIc3O8EKWQ6v4g/XG91QKEnDkfMvor6UJ6yogTlFu
	 81lZkuvbK4v/Igw9qokb15nROphJZhyoLF7ur+6+ngK0oJ1DM0QcUQyUMxJvkNzmh6
	 ZoPFmFaH4svzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V2xoH3jd4R7K; Mon, 17 Apr 2023 09:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD711613C0;
	Mon, 17 Apr 2023 09:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD711613C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AC861C4186
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E70BF405A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E70BF405A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a3qlXL9cAVUR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 09:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1AD540210
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E1AD540210
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="333644099"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="333644099"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640899272"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="640899272"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2023 02:35:25 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 76DF937F56;
 Mon, 17 Apr 2023 10:35:24 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Apr 2023 11:34:12 +0200
Message-Id: <20230417093412.12161-13-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417093412.12161-1-wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681724126; x=1713260126;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WVMzcQmJMWcYa/TVIasKk8Rv+Cg1TScngvGoHZla3FY=;
 b=GnXYqDEDH73wirvtUKqAzzQDwATg2i1sMuZoqGwO3fpS6nQdDLmM+TYx
 H+4PvD5pFqUO07U2N2qv3wV6dA+/sLLuy0IhrtYWKgTDfQA5AL/7gH8NN
 WCg2OY+t+uWlry6QYWbC3dE+wVTbSrdpDyF3P7XuxmUbxulTv7RVsrFac
 uEwd98FfVrUyz8yJaJ+bNEZGqsONXi+UVHJ/b3p/Nk1owjJ5JgbF4DlFZ
 PPfjs+VIKWN0NhWxoDEEd3NwF22+ITpr3wYA45rbBE9J4k745VZZp3mgR
 yylO/gg4oZLJWARViW9d7QN3ePrNhinfKDVa7buFBdJmQ6D9os+vpBkaC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GnXYqDED
Subject: [Intel-wired-lan] [PATCH net-next 12/12] ice: Ethtool fdb_cnt stats
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

Introduce new ethtool statistic which is 'fdb_cnt'. It
provides information about how many bridge fdbs are created on
a given netdev.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h            | 2 ++
 drivers/net/ethernet/intel/ice/ice_eswitch_br.c | 6 ++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c    | 1 +
 3 files changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 489934ddfbb8..90e007942af6 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -350,6 +350,8 @@ struct ice_vsi {
 	u16 num_gfltr;
 	u16 num_bfltr;
 
+	u32 fdb_cnt;
+
 	/* RSS config */
 	u16 rss_table_size;	/* HW RSS table size */
 	u16 rss_size;		/* Allocated RSS queues */
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 4a69b3a67914..cfa4324bf1a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -330,6 +330,7 @@ static void
 ice_eswitch_br_fdb_entry_delete(struct ice_esw_br *bridge,
 				struct ice_esw_br_fdb_entry *fdb_entry)
 {
+	struct ice_vsi *vsi = fdb_entry->br_port->vsi;
 	struct ice_pf *pf = bridge->br_offloads->pf;
 
 	rhashtable_remove_fast(&bridge->fdb_ht, &fdb_entry->ht_node,
@@ -339,6 +340,7 @@ ice_eswitch_br_fdb_entry_delete(struct ice_esw_br *bridge,
 	ice_eswitch_br_flow_delete(pf, fdb_entry->flow);
 
 	kfree(fdb_entry);
+	vsi->fdb_cnt--;
 }
 
 static void
@@ -462,6 +464,8 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 
 	ice_eswitch_br_fdb_offload_notify(netdev, mac, vid, event);
 
+	br_port->vsi->fdb_cnt++;
+
 	return;
 
 err_fdb_insert:
@@ -941,6 +945,7 @@ ice_eswitch_br_vf_repr_port_init(struct ice_esw_br *bridge,
 	br_port->vsi_idx = br_port->vsi->idx;
 	br_port->type = ICE_ESWITCH_BR_VF_REPR_PORT;
 	repr->br_port = br_port;
+	repr->src_vsi->fdb_cnt = 0;
 
 	err = xa_insert(&bridge->ports, br_port->vsi_idx, br_port, GFP_KERNEL);
 	if (err) {
@@ -966,6 +971,7 @@ ice_eswitch_br_uplink_port_init(struct ice_esw_br *bridge, struct ice_pf *pf)
 	br_port->vsi_idx = br_port->vsi->idx;
 	br_port->type = ICE_ESWITCH_BR_UPLINK_PORT;
 	pf->br_port = br_port;
+	vsi->fdb_cnt = 0;
 
 	err = xa_insert(&bridge->ports, br_port->vsi_idx, br_port, GFP_KERNEL);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 8407c7175cf6..d06b2a688323 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -64,6 +64,7 @@ static const struct ice_stats ice_gstrings_vsi_stats[] = {
 	ICE_VSI_STAT("tx_linearize", tx_linearize),
 	ICE_VSI_STAT("tx_busy", tx_busy),
 	ICE_VSI_STAT("tx_restart", tx_restart),
+	ICE_VSI_STAT("fdb_cnt", fdb_cnt),
 };
 
 enum ice_ethtool_test_id {
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
