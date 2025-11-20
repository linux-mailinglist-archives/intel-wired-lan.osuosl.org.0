Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADC9C757E1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 17:57:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A855F6F4C9;
	Thu, 20 Nov 2025 16:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DuFrxD-_hpac; Thu, 20 Nov 2025 16:57:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6ADE6F4DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763657873;
	bh=1LJp5vTvtPsni0q5438hr5hvJFcuxRo23713m9tr60c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NmxbjK1f422ZG1MsuiwZPXqfnR3V3s6FD+Im7uhMaxVkyi/fFiSY1kKxGlXuojepL
	 kh2nKtAiUPydis+2U4foJ48oe7uIK7MFNYcqTxUJjypiwZJws3GSrctZsp1urEn1Ot
	 ocxsuQXWP8TY+/T0mmDKs7MSJdH2suYOfdpF7HNQgUu5VFPoZTeVla9u+1HfUfKVAy
	 SqhjiFtzrYFTPuQ+SEDkvXl5+NV+K2QX+gjbQTPi5hl4H/bM2GOh0tNsH/HmiPAsWE
	 8X9oYSwT6x9XPBymUSewCpvUs423PUmTgW+0hc0+V7CrGezc3zAyNYJe9zpjUNYTr6
	 i5sYvWkofT7YA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6ADE6F4DA;
	Thu, 20 Nov 2025 16:57:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 53F9D158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B2536125B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9aEk0MrAQATI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 16:28:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 45D9D61073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45D9D61073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45D9D61073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:31 +0000 (UTC)
X-CSE-ConnectionGUID: WHvfU3/CRx25HGAPcK2yzQ==
X-CSE-MsgGUID: gX6/5X+UTcCJjQF35TuZLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="69599314"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69599314"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:28:31 -0800
X-CSE-ConnectionGUID: hx1B/rSOQdG1wDYDhYEXiA==
X-CSE-MsgGUID: 5nZDR4qRSCWfqbYicYwY1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191531308"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa008.jf.intel.com with ESMTP; 20 Nov 2025 08:28:29 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com
Date: Thu, 20 Nov 2025 17:28:12 +0100
Message-ID: <20251120162813.37942-8-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120162813.37942-1-jakub.slepecki@intel.com>
References: <20251120162813.37942-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 20 Nov 2025 16:57:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763656111; x=1795192111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7mr82eL2NhNrBA6h6yqN1TZWLz9fgZvkV9spAxbZY5U=;
 b=UAw/WcoVTgP0sgmkuXIx223S8XmBwCSWRq4h68vAQwSJ7uE0iFIU8Yo2
 Ki1D9h5zR7qaxdsYKS1u7h4ywSJoiMUy0LBB2PyXA+i5THRqRzE8hDgAu
 MO2uEM2zsPjPwkfG2T4JMo+j0oR02t6j9TLndhC0Hr6WFFyOJ1wAoj/Sc
 M/4kLBLTnRAMwCTxmwD784spmGHkDU8UmLCr+ShZTlzDuJpJbtYSZGCPt
 6+3Hv7x1gHrJuj6lAKsDfTxxYRvtmoW+OvncTcyrKB6NyLyuGlcIBZrfc
 Ao0sK0643cc3HBviv97xY5LUSpI5SbQpPmSj+awQwfOgmZglD9tkCmDqh
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UAw/WcoV
Subject: [Intel-wired-lan] [PATCH iwl-next 7/8] ice: add mac vlan to filter
 API
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

