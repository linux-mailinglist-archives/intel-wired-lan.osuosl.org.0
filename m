Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 558F5D3C5B2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 11:41:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95C8A6FC86;
	Tue, 20 Jan 2026 10:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zj6nwxlWwf5t; Tue, 20 Jan 2026 10:41:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC9DA6FC84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768905716;
	bh=yjDiaPELtsoBUGdmfF/wETZyu9mQV9Kyy1ThRs0PnkA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xlPEQaYR+x0QV4JK72A5clJ4eD3D3FcM3g5SqAiGYwPQfSSEw4mOz8CQnzV49M7AD
	 PKlAR615cF/EFpfXVZjLMJ4rB9O8yoHpuNILEseHfKyU2YvdxL2JlB1Th/RWXktHvy
	 fLyZyNTX0rrfnpjUJybXX2Wgb01/9ElrM1q4bQjOVfkTnp+4zUW+m7/gBscNxQRmC+
	 2uOHtHjyjzFd/dSpxZ/meOXPV5I4eR0RjbeKcGkIxTZjOFjmHDmi9H4RYawk2ZsCfF
	 n/o14sfaDgxkTNEPCSYAF0CYG6KlecZtxLctgkcCKyGdldmXcDIdG0hLwuqkSz7sqO
	 pEJYN4Gjy70gw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC9DA6FC84;
	Tue, 20 Jan 2026 10:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 05A5C160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D9C7F85869
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 645lPpSPkCbQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 10:41:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D2BAD85857
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2BAD85857
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D2BAD85857
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:52 +0000 (UTC)
X-CSE-ConnectionGUID: gXEn5lRFRqm2WBz1G8H1vQ==
X-CSE-MsgGUID: k2+V6Lf9R5C+uhmxkvUNjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70161735"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70161735"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 02:34:46 -0800
X-CSE-ConnectionGUID: CKLd6RpjRg+Pt+CqhN9/FQ==
X-CSE-MsgGUID: 8WrafF7ES8+s/ZTOJtjQIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210935849"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 02:34:45 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 20 Jan 2026 11:34:33 +0100
Message-ID: <20260120103440.892326-3-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120103440.892326-1-jakub.slepecki@intel.com>
References: <20260120103440.892326-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768905713; x=1800441713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e0OB/xX+CgF3GE3pSfyBLVlvom42Si0uRCJQfxycEa4=;
 b=iu3HVNy+o9yXDPJuBgNyDVTr3ZIOhNEDHo6QtQjX/cAcyX7lLWnpswAS
 pmH+4HLM8BJPajJ4hjbd1UFO/5GZtflQPEUftUiqAIC2gbasbZGfTjZ5s
 atZ9wzB2ZYgVByzK4K63gHtZpEUkaf7lXV6otfyry0RilPFeognz6mu7U
 HBa1CY1bGRJrYL32bCbyPZWnXZdBj/YXfI6mRr+4rKvCt3vf4CSr8KNNk
 W75mKwpRVGlOGawAH4L5FMXHa2OUn66T+b/OUqi8LkXWzOl96ad+INBfm
 eDwyIkKVvZucko6L5hmshO3X2dUySN12YzOIGYp3DfezJpT8xyW/oiIfY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iu3HVNy+
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/8] ice: allow creating mac,
 vlan filters along mac filters
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

Among other uses, MAC filters are currently used to forward loopback
traffic between VSIs.  However, they only match destination MAC addresses
making them prone to mistakes when handling traffic within multiple
VLANs and especially across the boundaries.

Allows the driver to create MAC,VLAN filters in the same flow as
MAC-only filters completely interchangeably.  This is intended to be
used to forward the loopback traffic only within the boundaries of
particular VLANs.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
No changes in v3.
No changes in v2.
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 48 ++++++++++++++++-----
 1 file changed, 38 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 84848f0123e7..0275e2910c6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3606,6 +3606,29 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
 	return false;
 }
 
+/**
+ * ice_fltr_mac_address - Find MAC in filter
+ * @dst: output MAC address
+ * @info: information struct for the filter in question
+ *
+ * Return: 0 for success, %-ENXIO if no address was found in the filter
+ * information.
+ */
+static
+int ice_fltr_mac_address(u8 *dst, struct ice_fltr_info *info)
+{
+	switch (info->lkup_type) {
+	case ICE_SW_LKUP_MAC:
+		ether_addr_copy(dst, info->l_data.mac.mac_addr);
+		return 0;
+	case ICE_SW_LKUP_MAC_VLAN:
+		ether_addr_copy(dst, info->l_data.mac_vlan.mac_addr);
+		return 0;
+	default:
+		return -ENXIO;
+	}
+}
+
 /**
  * ice_add_mac - Add a MAC address based filter rule
  * @hw: pointer to the hardware structure
@@ -3614,16 +3637,19 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
 int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 {
 	struct ice_fltr_list_entry *m_list_itr;
-	int status = 0;
+	int err;
 
 	if (!m_list || !hw)
 		return -EINVAL;
 
 	list_for_each_entry(m_list_itr, m_list, list_entry) {
-		u8 *add = &m_list_itr->fltr_info.l_data.mac.mac_addr[0];
+		u8 addr[ETH_ALEN];
 		u16 vsi_handle;
 		u16 hw_vsi_id;
 
+		err = ice_fltr_mac_address(addr, &m_list_itr->fltr_info);
+		if (err || is_zero_ether_addr(addr))
+			return -EINVAL;
 		m_list_itr->fltr_info.flag = ICE_FLTR_TX;
 		vsi_handle = m_list_itr->fltr_info.vsi_handle;
 		if (!ice_is_vsi_valid(hw, vsi_handle))
@@ -3634,17 +3660,19 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		if (m_list_itr->fltr_info.src_id != ICE_SRC_ID_VSI)
 			return -EINVAL;
 		m_list_itr->fltr_info.src = hw_vsi_id;
-		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
-		    is_zero_ether_addr(add))
+		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC &&
+		    m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC_VLAN)
 			return -EINVAL;
 
-		m_list_itr->status = ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
-							   m_list_itr);
+		m_list_itr->status =
+			ice_add_rule_internal(hw,
+					      m_list_itr->fltr_info.lkup_type,
+					      m_list_itr);
 		if (m_list_itr->status)
 			return m_list_itr->status;
 	}
 
-	return status;
+	return 0;
 }
 
 /**
@@ -4055,7 +4083,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 		enum ice_sw_lkup_type l_type = list_itr->fltr_info.lkup_type;
 		u16 vsi_handle;
 
-		if (l_type != ICE_SW_LKUP_MAC)
+		if (l_type != ICE_SW_LKUP_MAC && l_type != ICE_SW_LKUP_MAC_VLAN)
 			return -EINVAL;
 
 		vsi_handle = list_itr->fltr_info.vsi_handle;
@@ -4066,7 +4094,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 					ice_get_hw_vsi_num(hw, vsi_handle);
 
 		list_itr->status = ice_remove_rule_internal(hw,
-							    ICE_SW_LKUP_MAC,
+							    l_type,
 							    list_itr);
 		if (list_itr->status)
 			return list_itr->status;
@@ -4507,6 +4535,7 @@ ice_remove_vsi_lkup_fltr(struct ice_hw *hw, u16 vsi_handle,
 
 	switch (lkup) {
 	case ICE_SW_LKUP_MAC:
+	case ICE_SW_LKUP_MAC_VLAN:
 		ice_remove_mac(hw, &remove_list_head);
 		break;
 	case ICE_SW_LKUP_VLAN:
@@ -4516,7 +4545,6 @@ ice_remove_vsi_lkup_fltr(struct ice_hw *hw, u16 vsi_handle,
 	case ICE_SW_LKUP_PROMISC_VLAN:
 		ice_remove_promisc(hw, lkup, &remove_list_head);
 		break;
-	case ICE_SW_LKUP_MAC_VLAN:
 	case ICE_SW_LKUP_ETHERTYPE:
 	case ICE_SW_LKUP_ETHERTYPE_MAC:
 	case ICE_SW_LKUP_DFLT:
-- 
2.43.0

