Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SN4MNm1pg2kbmgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBC2E9485
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B643960F90;
	Wed,  4 Feb 2026 15:44:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 01PN0AuQVZJP; Wed,  4 Feb 2026 15:44:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5149A60D7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770219877;
	bh=C7FZGuDQTohwXgeGisHnQZD2kRajNLxYDyMBOWiC/SI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M3xkoO29G+2WzUEVGeXy6+63FrKfl+pqz584hH3DwKwUsVVlLQE1RDZEoobO2RPqn
	 Uma4N/GMeg/uI/BJ3gslGYnAAvL+GEVS6NSQjOGbrB9QmGO8v7WqXc3xWyz3JHRl9t
	 LIbZEf/Qm1cvu7xyCdNGPr7DNofxLTqwlfqRpxNZCQ1utf7Ph4Fpiwn/wdXAa4CQa0
	 iVGeQpnpk/bwd6+4GMMjDz5Te5xvnF67JU2zFGgazl8sjUjgEbOims0Vk3gfzXbDoG
	 8RWQnS96AH7VorKch7IonBIfr+AWOTUKq2oy32X/JeWslqzVRZkFNvktWdHZdVBU8U
	 7Hbw/9L2HQJ0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5149A60D7E;
	Wed,  4 Feb 2026 15:44:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C97EFF4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C10F280DA2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6LDaFNYyxlSw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 15:44:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C042980CA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C042980CA6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C042980CA6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:32 +0000 (UTC)
X-CSE-ConnectionGUID: zuve9o+ERdSHj+X39DvloA==
X-CSE-MsgGUID: LvlSFiaGTXGQsErcpvq3aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="88987108"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="88987108"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:44:32 -0800
X-CSE-ConnectionGUID: NQERNJTwRwGdCp99zs+DDQ==
X-CSE-MsgGUID: bt0nrMdZRry52fO+LEIbvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209494131"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2026 07:44:30 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed,  4 Feb 2026 16:44:16 +0100
Message-ID: <20260204154418.1285309-6-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204154418.1285309-1-jakub.slepecki@intel.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770219873; x=1801755873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e/SbG2tv+Vp5aAA6qUNCeSUnTaIUvHurv8Z6KAFxvRs=;
 b=mk7k41lMtXL30OhLHUAq3KwkkoZxYYZTomwKDGZerIcg1EsFstx5RVSe
 t177+39i178bkh1iTQh6u70QjV7ifxesNV6n9CP50pkzh+7Bt2HuKlhJA
 ydJRwfA4CYNZ48Au1OsRpaACH9fgd2zvdFQGs69qbs/I7U+0htQYiUlyv
 xv8gFyxyKznzcDrJLTSVkp0Bn6wGjFbhOEKM8ag9xhyt4u7O6TqV5euxU
 XwAyPFcH+WFwNocIS4/FFCjcawLg6+4YGgA+4jekScC5A08JzTQ5GvGK2
 T8wL4Jm6tGRhmIA+3H1L+3qTbLkzzQBN1gc+XaVDl9UN2RweM8h4tKxp3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mk7k41lM
Subject: [Intel-wired-lan] [PATCH iwl-next v4 5/7] ice: add functions to
 query for vsi's pvids
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakub.slepecki@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5CBC2E9485
X-Rspamd-Action: no action

PVID information is set across two structs and several members depending
primarily on DVM support and VSI type.  Add function that guess whether
PVID is set and where and allow to access raw VLAN ID set.  This is
intended to be used later on to decide what MAC{,VLAN} filters to set
for a VSI.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
No changes iv v4.
No changes in v3.
No changes in v2.
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 56 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h |  2 +
 2 files changed, 58 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 041278caf8e3..ff4763cea2e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4136,3 +4136,59 @@ void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel)
 		wr32(hw, qrx_context_offset, regval);
 	}
 }
+
+/**
+ * ice_vsi_has_outer_pvid - check if VSI has outer Port VLAN ID assigned
+ * @info: props of VSI in question
+ *
+ * Return: true if VSI has outer PVID, false otherwise.
+ */
+static bool
+ice_vsi_has_outer_pvid(const struct ice_aqc_vsi_props *info)
+{
+	return info->outer_vlan_flags & ICE_AQ_VSI_OUTER_VLAN_PORT_BASED_INSERT;
+}
+
+/**
+ * ice_vsi_has_inner_pvid - check if VSI has inner Port VLAN ID assigned
+ * @info: props of VSI in question
+ *
+ * Return: true if VSI has inner PVID, false otherwise.
+ */
+static bool
+ice_vsi_has_inner_pvid(const struct ice_aqc_vsi_props *info)
+{
+	return info->inner_vlan_flags & ICE_AQ_VSI_INNER_VLAN_INSERT_PVID;
+}
+
+/**
+ * ice_vsi_has_pvid - check if VSI has Port VLAN ID assigned
+ * @vsi: VSI in question
+ *
+ * Return: true if VSI has either outer or inner PVID, false otherwise.
+ */
+bool
+ice_vsi_has_pvid(struct ice_vsi *vsi)
+{
+	return ice_vsi_has_outer_pvid(&vsi->info) ||
+	       ice_vsi_has_inner_pvid(&vsi->info);
+}
+
+/**
+ * ice_vsi_pvid - retrieve VSI's Port VLAN ID
+ * @vsi: VSI in question
+ *
+ * Return: VSI's PVID; it is valid only if ice_vsi_has_pvid is true.
+ */
+u16
+ice_vsi_pvid(struct ice_vsi *vsi)
+{
+	__le16 vlan_info = 0;
+
+	if (ice_vsi_has_outer_pvid(&vsi->info))
+		vlan_info = vsi->info.port_based_outer_vlan;
+	else if (ice_vsi_has_inner_pvid(&vsi->info))
+		vlan_info = vsi->info.port_based_inner_vlan;
+
+	return le16_to_cpu(vlan_info) & VLAN_VID_MASK;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 2d3168458891..46152e26a995 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -134,6 +134,8 @@ void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
 bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi);
 void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel);
+bool ice_vsi_has_pvid(struct ice_vsi *vsi);
+u16 ice_vsi_pvid(struct ice_vsi *vsi);
 
 extern const struct netdev_queue_mgmt_ops ice_queue_mgmt_ops;
 
-- 
2.43.0

