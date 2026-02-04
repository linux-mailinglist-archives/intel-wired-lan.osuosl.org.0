Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLRhO2hpg2kbmgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C986E946D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2797561039;
	Wed,  4 Feb 2026 15:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vg1ohfGdTVO3; Wed,  4 Feb 2026 15:44:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE8C560D7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770219873;
	bh=rB+NF6Lj31wNmcslNxJOtoJ6P4iw8UYoPZpsfE3bJaI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=36pUOzx1dL3H9ePKmt4uNYQXgrzgJ9e2xXglzF8fdXWqDJkWfrfTTSyS+dLiQXRQc
	 deelbbB7S/8eQYgRrhZO2OpxLBTJbRZkNqIeoo/gIESyya98CZrdY6nKysu3e+3vjL
	 ekUDViVpVNCGDmMWpj/KmSg993Z4GQttRd3L/vESu8OW3a8SKdbtz2yNPZZJR3FuqI
	 u9c1Xx2NbOovMsc0dpxUAF2UOC/VU2mzS2/uiWQZuV4svmzo3ejRtX/cNWi0EZu0+C
	 sNw3FdBXSp2p+hWQmsEyC5nwK0wkImO5xa8CPgNlsLKgDtMNaERjGUTVB7sHhV2Apg
	 929Z6wMflkzHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE8C560D7E;
	Wed,  4 Feb 2026 15:44:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B8F5F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 033018032C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Tlw7dMmRUFu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 15:44:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A16483E9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A16483E9A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A16483E9A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:25 +0000 (UTC)
X-CSE-ConnectionGUID: c7oMCQINSxmFFfzTs3YHgw==
X-CSE-MsgGUID: ej25iwf/RyaMc+JxQoKsUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="88987091"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="88987091"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:44:26 -0800
X-CSE-ConnectionGUID: 6jqfFe4nRtKo1bJylNkOEA==
X-CSE-MsgGUID: AKljs61XQ7SXqFBlobG3LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209494118"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2026 07:44:23 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed,  4 Feb 2026 16:44:13 +0100
Message-ID: <20260204154418.1285309-3-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204154418.1285309-1-jakub.slepecki@intel.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770219866; x=1801755866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JWmvUqaxGBDpmxTflwTsgJtVOJVahu8eyBgHP2/Rcdo=;
 b=LE6/xRd6KnwS4BIC3dG0IiWxf0uJUkQYZ1a24hgPxh9ynzh85C3UpRPR
 J08gK9XuCFC4+pOrCgq59KcNv6zzAPXz6dIdr7GkeUg540Lssal79Y+o1
 sf+XR1+Cg2fclaWo1wMUK48tq7XWpFe7+q9iDo5iYTT4f3iQ4/HEczu6m
 2k2LRrExMXwLeV1tMtE4SbZxxK5z68s3nDfl1d6ikSgodrqvNQ3q6IP7q
 8+2Qr/5C4+x0R+DJg+1teQXl6oundqwGZxEKpTxwBqL91ovxM3tKi063C
 daMub3zyvnEWhZFSv/Kvg1Ys/leX9kueKlVLlWEceM2MvcSrkWJSG0lqx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LE6/xRd6
Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/7] ice: allow creating mac,
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakub.slepecki@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7C986E946D
X-Rspamd-Action: no action

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
No changes in v4.
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

