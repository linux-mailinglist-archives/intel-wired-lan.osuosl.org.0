Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B986B6D63
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 03:17:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AFDA60C18;
	Mon, 13 Mar 2023 02:17:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AFDA60C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678673854;
	bh=OM+h+FXhwhqCcUaeYtxZ/x0WozE71kBvyP3WV4ZxrXc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ypTPgxNivLH3dodaDbBDljJeWVQ93dsy9p2y1VPSeIkMtPRpAM6VLB+VKgv+rfJAJ
	 Vnx9x9Ijj/7qmE/u6M7aHu1SeWzfjtRE1h44m8WKH7gWVBAsI8pd8ylzoit9PC1h4e
	 XO8hErmnJXwVgh+kyuEDqyyh+bKd+5P6f1CC4ZBHjhX1041pk0NidauPVRbfFIU3d9
	 H391gwJlSiQGiSkOqfL9OiDgRVbQoFt1I0U0XmZkQoAzCVx8RO/kPje0HmogHTMOoQ
	 gd69ulSdTW28mxBb6bDLVCmrUn7lj+VHmOyZOdEJxFg6fVeI1sMRMgajLl+z+TnjgY
	 KAKsvif8A9/yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QdN5lgi4u8ho; Mon, 13 Mar 2023 02:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29DEC60AE1;
	Mon, 13 Mar 2023 02:17:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29DEC60AE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4080D1BF407
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 02:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 191AD4014D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 02:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 191AD4014D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v7-tANJO2Z9w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 02:17:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E31840125
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E31840125
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 02:17:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="334516206"
X-IronPort-AV: E=Sophos;i="5.98,254,1673942400"; d="scan'208";a="334516206"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2023 19:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="628480978"
X-IronPort-AV: E=Sophos;i="5.98,254,1673942400"; d="scan'208";a="628480978"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.39])
 by orsmga003.jf.intel.com with ESMTP; 12 Mar 2023 19:17:25 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 10:17:20 +0800
Message-Id: <20230313021720.3274870-1-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230309051011.1165676-1-junfeng.guo@intel.com>
References: <20230309051011.1165676-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678673847; x=1710209847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PZe8nYbg7k0wmOZUp7cB/sEPeqEnQv+IFhHxA7gFyVc=;
 b=Zo9b6QX1R23GY5k1WYXI37MhD9xq2QQ1luOX38Oe3gGJxw2hdfNfgOYG
 NRsCfcLxgPxCqbGuLvWwoAcnx3I3Ziyx5Ff2M/LvQ1LPBrGpwUFP8/0CJ
 rrvyiXjoOcSx3TvdykLmJC12TVXSCs1CfyKmQAhMZovOMn0Jk+Tksc88L
 VPvdJ1SSeyqWAlM1/38bma/hpqCz90CumG3eh8cN8VoaaQys/HAgWYl4i
 v8zMVK4QF5AWehCFY72b0FHQIyptM1i7sXM//yMI0+e5GouOwf2Webjx9
 v5ocNZkCXJNB0yH9f0W+rsYGdhIQho5or7EWXFozyiu1D1cVu0DACUuRO
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zo9b6QX1
Subject: [Intel-wired-lan] [PATCH net v2] ice: add profile conflict check
 for AVF FDIR
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

Add profile conflict check while adding some FDIR rules to aviod
unexpected flow behavior, rules may have conflict including:
        IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
        IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}

For example, when we create an FDIR rule for IPv4, this rule will work
on packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we
then create an FDIR rule for IPv4_UDP and then destroy it, the first
FDIR rule for IPv4 cannot work on pkt IPv4_UDP then.

To prevent this unexpected behavior, we add restriction in software
when creating FDIR rules by adding necessary profile conflict check.

Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index e6ef6b303222..06296ffc3608 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -541,6 +541,73 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
 	}
 }
 
+/**
+ * ice_vc_fdir_has_prof_conflict
+ * @vf: pointer to the VF structure
+ * @conf: FDIR configuration for each filter
+ *
+ * Check if @conf has conflicting profile with existing profiles
+ *
+ * Return: true on success, and false on error.
+ */
+static bool
+ice_vc_fdir_has_prof_conflict(struct ice_vf *vf,
+			      struct virtchnl_fdir_fltr_conf *conf)
+{
+	struct ice_fdir_fltr *desc;
+
+	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
+		struct virtchnl_fdir_fltr_conf *existing_conf =
+						to_fltr_conf_from_desc(desc);
+		enum ice_fltr_ptype flow_type_a, flow_type_b;
+		struct ice_fdir_fltr *a, *b;
+
+		a = &existing_conf->input;
+		b = &conf->input;
+		flow_type_a = a->flow_type;
+		flow_type_b = b->flow_type;
+
+		/**
+		 * No need to compare two rules with different tunnel types or
+		 * with the same protocol type
+		 */
+		if (existing_conf->ttype != conf->ttype ||
+		    flow_type_a == flow_type_b)
+			continue;
+
+		switch (flow_type_a) {
+		case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
+		case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
+		case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
+			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_OTHER)
+				return true;
+			break;
+		case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
+			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
+			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
+			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_SCTP)
+				return true;
+			break;
+		case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
+		case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
+		case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
+			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_OTHER)
+				return true;
+			break;
+		case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
+			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_UDP ||
+			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
+			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_SCTP)
+				return true;
+			break;
+		default:
+			break;
+		}
+	}
+
+	return false;
+}
+
 /**
  * ice_vc_fdir_write_flow_prof
  * @vf: pointer to the VF structure
@@ -677,6 +744,12 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	enum ice_fltr_ptype flow;
 	int ret;
 
+	ret = ice_vc_fdir_has_prof_conflict(vf, conf);
+	if (ret) {
+		dev_dbg(dev, "Found flow prof conflict for VF %d\n", vf->vf_id);
+		return ret;
+	}
+
 	flow = input->flow_type;
 	ret = ice_vc_fdir_alloc_prof(vf, flow);
 	if (ret) {
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
