Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IVtBlRdumnFUgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 09:07:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 885422B7862
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 09:07:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B309740C13;
	Wed, 18 Mar 2026 08:07:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8tcuUY47aOSm; Wed, 18 Mar 2026 08:07:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F90340C1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773821265;
	bh=qVzcCHRYpyCUWvVuB0C4zUhDiWmlZNq31w6A3WUew/E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V9jvnQHW2+sPVKhUDEmp4y97+A34J1bjtHgGN8toOdIDGa9We0dyxrrfoz+a9fYVE
	 3uhIHHPsVhamEHlUPoMAVQ8+mAtXk5uLuAk/WRuJdX59jUwmSd1VW9uq+a/QyWUU8E
	 B7QGiu2eLys5pZj6PAJqdiq1s9oJxlPQwsZP2GxBF1p79wb4WC12QlxYFoLpL75a0e
	 8rCZy238incs5oQIkou6r7jSfzPKypn3tfmrcnd3B5CfY7pygTcrqKNrPrPmwJQQ2n
	 G4LAR7MNFdjyq1l4LHzle25GiNQcp7DsSrNHDAm6La1sbpGlJ6LknU7MSkRsQLK7/a
	 3jB8vOTWK1UpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F90340C1A;
	Wed, 18 Mar 2026 08:07:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 77CBB1B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDF7D40C1A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f5oD90L3Ewy1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 08:07:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 397DB40B82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 397DB40B82
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 397DB40B82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:42 +0000 (UTC)
X-CSE-ConnectionGUID: U0H58nwJSuCvqOjnW4clwA==
X-CSE-MsgGUID: zIV3XvueTNuKvTNX5jydrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74755247"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74755247"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 01:07:42 -0700
X-CSE-ConnectionGUID: bUW14SIoRxmGzN/ouR8bHA==
X-CSE-MsgGUID: VfEwE6ANTIO4KeolD91YDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="221628552"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 18 Mar 2026 01:07:40 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed, 18 Mar 2026 09:07:36 +0100
Message-ID: <20260318080737.3012293-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260318080737.3012293-1-aleksandr.loktionov@intel.com>
References: <20260318080737.3012293-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773821262; x=1805357262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eeZWTl75BvHWnhfVyBuJjwwR4iwIkFpT5X5IlIOY/jM=;
 b=asCFNjjn8LZDdKqKeXIP76SQb+T0fd15zyIwLV+VUrq+fPwKQQ6FBSO+
 cHppQG3p3rfHgCvh29gVmYexzXtwqFQbg2ZREYXQaleQBtj2G7nPzReKY
 Qi9e2MP4Dtr/doPT2Nf9sDMZQ/PuZP2RQRVOedS4GH/zt9E0ijJv2Gy4d
 2cGT7yqtEFY6a4RKXfkNqTklD1jvhal+jsoPnM8pHlQJN/fHbXTcFFYI6
 46YO3pm1dL0UPIz1c8sqQqhxHdoPA9gEBfoIq94m1DZ1A+E2BbJemitAl
 PXt1S4Ro7OVoEyCCGyNRNriy9Ru0aTOUw08YdpBwjtOveRd4BlsCcrq59
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=asCFNjjn
Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: add 0x88E7 handling
 to SW validation paths
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 885422B7862
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The virtchnl v2 VLAN capability handshake now includes the new
VIRTCHNL_VLAN_ETHERTYPE_88E7 flag for IEEE 802.1ah B-TAG support.
Wire up the corresponding software-path handling in ice so the PF
correctly accepts and translates 0x88E7 (ETH_P_8021AH) VLAN filters
requested by VFs.

Three software-only changes, no hardware offload path affected:

 - ice_check_supported_vlan_tpid() (ice_tc_lib.c): accept ETH_P_8021AH
   in the TC VLAN TPID validation switch so 0x88E7-tagged flower filters
   are not rejected early.

 - validate_vlan() (ice_vsi_vlan_lib.c): allow ETH_P_8021AH as a valid
   TPID when adding VLAN filters to a VSI, consistent with the other
   accepted dot1q/dot1ad/QinQ1 TPIDs.

 - ice_vc_validate_vlan_tpid() / ice_vc_get_tpid() (virt/virtchnl.c):
   bidirectional translation between ETH_P_8021AH and
   VIRTCHNL_VLAN_ETHERTYPE_88E7 in the virtchnl VLAN v2 filter path.

This does not add 0x88E7 hardware offload capability, does not change
outer-tag programming, and does not alter any datapath.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c       | 1 +
 drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 3 ++-
 drivers/net/ethernet/intel/ice/virt/virtchnl.c    | 6 ++++++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index d20357c..4560e55 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -174,6 +174,7 @@ static u16 ice_check_supported_vlan_tpid(u16 vlan_tpid)
 	case ETH_P_8021Q:
 	case ETH_P_8021AD:
 	case ETH_P_QINQ1:
+	case ETH_P_8021AH:
 		return vlan_tpid;
 	default:
 		return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 5498496..b67272e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -24,7 +24,8 @@ static void print_invalid_tpid(struct ice_vsi *vsi, u16 tpid)
 static bool validate_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
 	if (vlan->tpid != ETH_P_8021Q && vlan->tpid != ETH_P_8021AD &&
-	    vlan->tpid != ETH_P_QINQ1 && (vlan->tpid || vlan->vid)) {
+	    vlan->tpid != ETH_P_QINQ1 && vlan->tpid != ETH_P_8021AH &&
+	    (vlan->tpid || vlan->vid)) {
 		print_invalid_tpid(vsi, vlan->tpid);
 		return false;
 	}
diff --git a/drivers/net/ethernet/intel/ice/virt/virtchnl.c b/drivers/net/ethernet/intel/ice/virt/virtchnl.c
index ca8018e..06d2f9b 100644
--- a/drivers/net/ethernet/intel/ice/virt/virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/virt/virtchnl.c
@@ -1702,6 +1702,9 @@ static bool ice_vc_validate_vlan_tpid(u16 filtering_caps, u16 tpid)
 	case ETH_P_QINQ1:
 		vlan_ethertype = VIRTCHNL_VLAN_ETHERTYPE_9100;
 		break;
+	case ETH_P_8021AH:
+		vlan_ethertype = VIRTCHNL_VLAN_ETHERTYPE_88E7;
+		break;
 	}
 
 	if (!(filtering_caps & vlan_ethertype))
@@ -2136,6 +2139,9 @@ static int ice_vc_get_tpid(u32 ethertype_setting, u16 *tpid)
 	case VIRTCHNL_VLAN_ETHERTYPE_9100:
 		*tpid = ETH_P_QINQ1;
 		break;
+	case VIRTCHNL_VLAN_ETHERTYPE_88E7:
+		*tpid = ETH_P_8021AH;
+		break;
 	default:
 		*tpid = 0;
 		return -EINVAL;
-- 
2.52.0

