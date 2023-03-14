Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1987F6BA349
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 00:04:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EF7240B63;
	Tue, 14 Mar 2023 23:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EF7240B63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678835060;
	bh=sftqIqjwS1P90RkI9iMYpNQGlZDETfao2boC3W/gY38=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hhq+JxH87M3jAOZyNfOwcdJqZXBkig+/+Vn1c9xTNDXgK6s2YDCQbcqn+s02sOJl4
	 M1IBhzynaukzaEGdKOEr+8SQJvKnkGX+hRMNbJCOi6Vaofj5boLApn6aoA4dYwh8Zs
	 BmfM9saTwmkQQtwaULCpvB6B2aqM9deHcR5EeiDiK7TyWZpGjk7kc5UbRdoV8mCVoz
	 OJwTsVlKihbmWH50TYUkX6iRvkzs4rtX5/GmUy175y94mdO85EmpEVkZrSo8AsyGxu
	 LVFmCF/pF4wKgDQfuegueawKbV1XOYrsuNd+c1RypGhLUvdjvr35G02eF8QtYgtEB8
	 ikqa4BTDdqAIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RAaqVUFksCjg; Tue, 14 Mar 2023 23:04:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B35540B71;
	Tue, 14 Mar 2023 23:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B35540B71
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C56A61BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 23:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 939A24094D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 23:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 939A24094D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YOaka9C0K-Dq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 23:04:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C34F4094C
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C34F4094C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 23:04:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="423836637"
X-IronPort-AV: E=Sophos;i="5.98,261,1673942400"; d="scan'208";a="423836637"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 16:04:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="656538001"
X-IronPort-AV: E=Sophos;i="5.98,261,1673942400"; d="scan'208";a="656538001"
Received: from torta-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.33.71])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 16:04:11 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Mar 2023 17:04:01 -0600
Message-Id: <20230314230401.44098-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678835053; x=1710371053;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ogZBiReT8z6nRCfekY0BHlcZUt7tbXz4nV+XDBpYffg=;
 b=Pvkkh4caw8Gkncng64OV7lvpBsZW+xkxhuyIR603TSi75vDDFmJyQA/a
 /Tb/TuCbwtBXHvB8fR1IJSl30iA/pfmV1ZCNVU6p5JTuQfogf0pF95yhT
 pAekZMfpTtphp2UTq6XzTbZ8djVjDwILcssavGi+K/ZTwM8x3uYT5guBi
 WGurIyH92HUrPOPoP2tR71PADvP0ZQGa6H6yTrPk4/NUWz5ZFK2UC307W
 z/nE1kD5mNvsa3malqqPklMVqcT5QENBdnLkbVaKZjMTbEKKk0KgZsezW
 e8T8vWBvoogkGokDW4Lze83109BY94RCu+MXWRR9fh8WFQ1+Dpwg4MWr5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pvkkh4ca
Subject: [Intel-wired-lan] [PATCH] ice: identify aRFS flows using L3/L4
 dissector info
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

The flow ID passed to ice_rx_flow_steer() is computed like this:

    flow_id = skb_get_hash(skb) & flow_table->mask;

With smaller aRFS tables (for example, size 256) and higher number of
flows, there is a good chance of flow ID collisions where two or more
different flows are using the same flow ID. This results in the aRFS
destination queue constantly changing for all flows sharing that ID.

Use the full L3/L4 flow dissector info to identify the steered flow
instead of the passed flow ID.

Fixes: 28bf26724fdb ("ice: Implement aRFS")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_arfs.c | 44 +++++++++++++++++++++--
 1 file changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index fba178e07600..d7ae64d21e01 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -345,6 +345,44 @@ ice_arfs_build_entry(struct ice_vsi *vsi, const struct flow_keys *fk,
 	return arfs_entry;
 }
 
+/**
+ * ice_arfs_cmp - compare flow to a saved ARFS entry's filter info
+ * @fltr_info: filter info of the saved ARFS entry
+ * @fk: flow dissector keys
+ *
+ * Caller must hold arfs_lock if @fltr_info belongs to arfs_fltr_list
+ */
+static bool
+ice_arfs_cmp(struct ice_fdir_fltr *fltr_info, const struct flow_keys *fk)
+{
+	bool is_ipv4;
+
+	if (!fltr_info || !fk)
+		return false;
+
+	is_ipv4 = (fltr_info->flow_type == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
+		fltr_info->flow_type == ICE_FLTR_PTYPE_NONF_IPV4_TCP);
+
+	if (fk->basic.n_proto == htons(ETH_P_IP) && is_ipv4)
+		return (fltr_info->ip.v4.proto == fk->basic.ip_proto &&
+			fltr_info->ip.v4.src_port == fk->ports.src &&
+			fltr_info->ip.v4.dst_port == fk->ports.dst &&
+			fltr_info->ip.v4.src_ip == fk->addrs.v4addrs.src &&
+			fltr_info->ip.v4.dst_ip == fk->addrs.v4addrs.dst);
+	else if (fk->basic.n_proto == htons(ETH_P_IPV6) && !is_ipv4)
+		return (fltr_info->ip.v6.proto == fk->basic.ip_proto &&
+			fltr_info->ip.v6.src_port == fk->ports.src &&
+			fltr_info->ip.v6.dst_port == fk->ports.dst &&
+			!memcmp(&fltr_info->ip.v6.src_ip,
+				&fk->addrs.v6addrs.src,
+				sizeof(struct in6_addr)) &&
+			!memcmp(&fltr_info->ip.v6.dst_ip,
+				&fk->addrs.v6addrs.dst,
+				sizeof(struct in6_addr)));
+
+	return false;
+}
+
 /**
  * ice_arfs_is_perfect_flow_set - Check to see if perfect flow is set
  * @hw: pointer to HW structure
@@ -436,17 +474,17 @@ ice_rx_flow_steer(struct net_device *netdev, const struct sk_buff *skb,
 
 	/* choose the aRFS list bucket based on skb hash */
 	idx = skb_get_hash_raw(skb) & ICE_ARFS_LST_MASK;
+
 	/* search for entry in the bucket */
 	spin_lock_bh(&vsi->arfs_lock);
 	hlist_for_each_entry(arfs_entry, &vsi->arfs_fltr_list[idx],
 			     list_entry) {
-		struct ice_fdir_fltr *fltr_info;
+		struct ice_fdir_fltr *fltr_info = &arfs_entry->fltr_info;
 
 		/* keep searching for the already existing arfs_entry flow */
-		if (arfs_entry->flow_id != flow_id)
+		if (!ice_arfs_cmp(fltr_info, &fk))
 			continue;
 
-		fltr_info = &arfs_entry->fltr_info;
 		ret = fltr_info->fltr_id;
 
 		if (fltr_info->q_index == rxq_idx ||
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
