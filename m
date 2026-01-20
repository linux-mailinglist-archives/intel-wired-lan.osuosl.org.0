Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF6CD3C5BA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 11:42:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C00F6FC95;
	Tue, 20 Jan 2026 10:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7I1KjjnqN8kg; Tue, 20 Jan 2026 10:42:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C047D6FC8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768905725;
	bh=iZaY8ojRWN5SXG6KOL/8K7kTgV5naNMrliAO/7XdlZ0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZXwW46S4NMwbbRuZKpq/J2Hcke0ZC74Bz4ONBb7q0K+r+3L6/9RAFoLKJhFmjZRGb
	 dsPqNitAGr8g5ybNvS3Qa5eifae/w7EXIgxKB3x65a0yDr1mKNfNPwbdrrpLhaHOQx
	 /94G2/45PGvigQ8a4A230/AGS6oWtspetD2+cvp7XoqzksxjAT+YsaeZ63ZLz588c0
	 Yhz5RNmd0cCQr9B95xXKT3ZDEEaYqJY8aOC+QPln5tMbTrU6Q4LWj6y6LKlGMfCNh3
	 FQIWDsFR78NoWKZHxvI9QV42DoUklpzEqggy2y6HhGQ1lMPXol8vzAKvVGB304Tt3X
	 CQety8ccMBEGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C047D6FC8C;
	Tue, 20 Jan 2026 10:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7B7E2A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC0DE85871
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:42:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9YPqLa3AjDEQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 10:42:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CB1A385857
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB1A385857
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB1A385857
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:42:02 +0000 (UTC)
X-CSE-ConnectionGUID: zuBTLKq4TiyKDbEHFDaR+A==
X-CSE-MsgGUID: c3d517YXR/6HtOTOWjSMOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70161766"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70161766"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 02:34:57 -0800
X-CSE-ConnectionGUID: CKrV8l4zQEq7xLATbK2FzA==
X-CSE-MsgGUID: wPqCkBK3Sq6vg5fEjhWwNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210935876"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 02:34:55 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 20 Jan 2026 11:34:38 +0100
Message-ID: <20260120103440.892326-8-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120103440.892326-1-jakub.slepecki@intel.com>
References: <20260120103440.892326-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768905723; x=1800441723;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pEOvEWrWvAzUY/Vx8v3pEaX80dY9YG1DYZdtnpg8TcY=;
 b=KQg0fIiC8nDKK2Y3HxrbNnE3xp3oOQfAJwo+3SdC/d9jYTMbcimln8yE
 /m6xcnJiqNo9Bf9FSVZF3ZFEutz3vGAbGvPxDBWxBTmiWiD7gvERCMf4J
 onEnjNg2RhuTSaqtVmYebTqLLp3r3Pw3hW2sZkYKUir5tqxjzCZ/nsJLL
 994e6Pp2FIT4EH54wstsKasRDpBsUfKkxotH9QaPO9DaH0QCTNTVQ38Mt
 Z3GfW7fgf86NKpVVmJr3YtOvWSUx5U1MRDlOAMbAZtrbUyO6JULjuzDh2
 F9TBh+KrS/WqqeFUME/5zmDbezehi3Ijz85J3Fylw5vVppkyzMM03cZDX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KQg0fIiC
Subject: [Intel-wired-lan] [PATCH iwl-next v3 7/8] ice: add mac vlan to
 filter API
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Allow mac vlan filters to be managed by filters API in ice driver.
Together with mac-only filters they will be used to forward traffic
intended for loopback in VEB mode.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
No changes in v3.
No changes in v2.
---
 drivers/net/ethernet/intel/ice/ice_fltr.c | 33 +++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fltr.h |  4 +++
 2 files changed, 37 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index aff7a141c30d..96a4e4b1b3fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -240,6 +240,39 @@ ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
 					  list);
 }
 
+/**
+ * ice_fltr_add_mac_vlan_to_list - add MAC VLAN filter info to
+ * existing list
+ * @vsi: pointer to VSI struct
+ * @list: list to add filter info to
+ * @mac: MAC address to add
+ * @vlan_id: VLAN id to add
+ * @action: filter action
+ *
+ * Return:
+ * * 0 if entry for filter was added, or
+ * * %-ENOMEM if entry could not be allocated.
+ */
+int
+ice_fltr_add_mac_vlan_to_list(struct ice_vsi *vsi, struct list_head *list,
+			      const u8 *mac, u16 vlan_id,
+			      enum ice_sw_fwd_act_type action)
+{
+	struct ice_fltr_info info = {};
+
+	info.flag = ICE_FLTR_TX;
+	info.src_id = ICE_SRC_ID_VSI;
+	info.lkup_type = ICE_SW_LKUP_MAC_VLAN;
+	info.fltr_act = action;
+	info.vsi_handle = vsi->idx;
+
+	info.l_data.mac_vlan.vlan_id = vlan_id;
+	ether_addr_copy(info.l_data.mac_vlan.mac_addr, mac);
+
+	return ice_fltr_add_entry_to_list(ice_pf_to_dev(vsi->back), &info,
+					  list);
+}
+
 /**
  * ice_fltr_add_vlan_to_list - add VLAN filter info to exsisting list
  * @vsi: pointer to VSI struct
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
index 0f3dbc308eec..fb9ffb39be50 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.h
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -23,6 +23,10 @@ int
 ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
 			 const u8 *mac, enum ice_sw_fwd_act_type action);
 int
+ice_fltr_add_mac_vlan_to_list(struct ice_vsi *vsi, struct list_head *list,
+			      const u8 *mac, u16 vlan_id,
+			      enum ice_sw_fwd_act_type action);
+int
 ice_fltr_add_mac(struct ice_vsi *vsi, const u8 *mac,
 		 enum ice_sw_fwd_act_type action);
 int
-- 
2.43.0

