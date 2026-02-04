Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDISJ3Fpg2kbmgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5236EE949B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66800607B3;
	Wed,  4 Feb 2026 15:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CIqWC4XO9iEv; Wed,  4 Feb 2026 15:44:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A642610B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770219878;
	bh=8BXPZzJV0ibu0eH7V/NXqC/A1pBOBRP67oboFdk1MVA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3F1t35Oxy5MCPUdJkbbQCX7Y2Oe+/3malHHE044+V7gj0X944GAVwzQ1PQjBZb+7G
	 IPdBFGvGtg006KTtSvgpEf02i+aoTdxukl5AjJcoD1fh0SVBnCCF+SG9LKEk1sYuCx
	 lwdF7/McXZNTpFQDVej+gVkEB31CMmf3hg4RCkfnvObAS+IxZODEMVAv09/+VxX9Jx
	 DheyPAH6LTLgnNS+pYegd8XtG8vsdSZYoUQq32t1MtGKf97b/G+T7TANRw4Q5AxLsn
	 KTJneErsxnMHDIaft1TM1KPbtITNtAUXByn3up1DBdroKmrAymIpjn3RP4q1Jqy/ok
	 XIhGI4S8uvj+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A642610B1;
	Wed,  4 Feb 2026 15:44:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E7C5F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19BF180E50
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pSFZwwI0TSdZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 15:44:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 16F6D80CA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16F6D80CA6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16F6D80CA6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:35 +0000 (UTC)
X-CSE-ConnectionGUID: /06/kmwESHqaIq/tW5Pvmg==
X-CSE-MsgGUID: BMwYmS+WTXmI+6z8W7cK1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="88987114"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="88987114"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:44:35 -0800
X-CSE-ConnectionGUID: dSAUQIflSTuYohwg3SIPYg==
X-CSE-MsgGUID: Qp/7AQxdSsOPPRzlbTZHfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209494136"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2026 07:44:32 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed,  4 Feb 2026 16:44:17 +0100
Message-ID: <20260204154418.1285309-7-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204154418.1285309-1-jakub.slepecki@intel.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770219875; x=1801755875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K0E7+UMYGPTimqdt5ibfjpZFUmqBu3rV8ubOJ6pR7tc=;
 b=i7HS1P/yUSO5GwgnChNqglh3qnciJeXHEpAjx0kG8tQtqwoQ/nUi3wM5
 Mbozutd8SO0qha3UT0jWO28s90OXMjROkAPY91wXk+rfp+7wBzZNsstEd
 M+1Y9SmZyLad4tPNdIYfv1JgW8o/IlwmegKBv+SROWsB636CGtPMRfyrH
 qXKaXdoM7UvCpKcsb/a68jLvJpnJmIX/+GmDSLLqeRd3PqFQ218vRDHot
 oyBlrZ2a8OVooyaNvFc80QkU1W7xRRtvZDDu8PTj6IszwA6Rr42arZLuK
 niDybjSx/My5oUYe4/bW2P2p7V7aKmE0Sf67nxTLNqNUpKDJWjpdH08nn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i7HS1P/y
Subject: [Intel-wired-lan] [PATCH iwl-next v4 6/7] ice: add mac vlan to
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
X-Rspamd-Queue-Id: 5236EE949B
X-Rspamd-Action: no action

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Allow mac vlan filters to be managed by filters API in ice driver.
Together with mac-only filters they will be used to forward traffic
intended for loopback in VEB mode.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
No changes in v4.
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

