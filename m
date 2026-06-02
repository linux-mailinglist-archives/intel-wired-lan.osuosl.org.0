Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KArJNqwgHmrmhQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CB36267E9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B285140C33;
	Tue,  2 Jun 2026 00:15:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LIcqoc4lTVW4; Tue,  2 Jun 2026 00:15:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BAF440C2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780359336;
	bh=Qnl2h+08DxrkHK+1x8lG2snZdHu1zt3pMAMXoVS6Thc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3ByXABgPe5pXUq3+rBu8PuuIBlEOdNODGVwKEokASQ67OayFjk2ieHtVhba2KuIBh
	 z+DwBp71syAPILJsbD9cxvc4NH7CTL060bnT3fuG1MM3LLtOSw5lElDRBU3tC+XcEL
	 f+2SAN5uESK+VGGcRahNpBaXSgtyC22YhFMprNpImqbrf268qihYR5na/FuwOI63dz
	 HJZ4DcjQN2ssZt69VX/QpiuqtXzAhFrH8eqiaaDvXL4M07xcf1a1kS7vWNpn0hxpSc
	 3wUXeMM5UIsHTDkUuqZ0/51uwnGBRrpgrusEHl0utML9nMtuHT6At0BSBILWy94uKn
	 ljOq36eXYVYpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BAF440C2C;
	Tue,  2 Jun 2026 00:15:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 25E8BF4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4137440C22
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lKi9iqJFZxod for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7FB6940C19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FB6940C19
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FB6940C19
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
X-CSE-ConnectionGUID: gKI/3DXmQY25rhElT0Z++g==
X-CSE-MsgGUID: xjcXJBP/Q0uu2XJF3HQRww==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84755432"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="84755432"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:31 -0700
X-CSE-ConnectionGUID: 47O+y/BySUuW071iFwTveQ==
X-CSE-MsgGUID: ibmO3pw4S9KI8Y9je1POVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267598732"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:31 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 01 Jun 2026 17:14:23 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-6-36d6ecbe5ede@intel.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.16-dev-3fed5
X-Developer-Signature: v=1; a=openpgp-sha256; l=5035;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=GZP7wObqvcHcDnE52zv1oLXYc2u0wYsJZ/Q1Qvdde2g=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhiw5hYX6dr5L562eEnHL9swlxsWGjgsPJXg63Yj49P/fB
 a7/7A/0O0pZGMS4GGTFFFkUHEJWXjeeEKb1xlkOZg4rE8gQBi5OAZiIui4jw54ZUxmT1Zfn/FiW
 4nyOparjN2/ghH6jPctDEiXqQ2ar5DIyPLk+86NtTVKO3lz+ysJl5+KXJgevb1sRXhLxK8E8dmY
 6OwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780359332; x=1811895332;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=GZP7wObqvcHcDnE52zv1oLXYc2u0wYsJZ/Q1Qvdde2g=;
 b=ehiDyzgSsMXSw2+O9myPMk9oiWggRAhM7xHLLTRRMU8UqquGSciKXNCd
 f7XzCnFW/gD+c2CSMWj8rXZBedL12uLpxJ4Itn7Dxpr5QzAzLtvu293PH
 zkaE8coN4L2zGGleH4uOWeLt0tOfsuXi/uczgrxcHcZYSDwgnVYQZDoTR
 VB8g2Tulxi3LErjOuMd5DHQfE8KKtSdSAsHtMGhsR28pPmiwa7hegzggs
 YiEx5lDpsoVf5Ff2KwgSTD9qZVESa+a1fjzL87pAw3NY8mpy+tzpvOmYE
 hCxY/82iR9IwtWqhtlRYbZE6zjlZcFl5/SeNSCRymTbgCH2W2NPN89YMc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ehiDyzgS
Subject: [Intel-wired-lan] [PATCH iwl-next 6/6] ice: refactor
 ice_sched_cfg_agg to take agg_info pointer
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:mid,intel.com:email];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 59CB36267E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The ice_sched_cfg_agg() function is called with an aggregator ID and type.
It performs a lookup of the aggregator info structure by ID. If the lookup
fails, it calls ice_alloc_agg_info to allocate a new aggregator structure
for that ID.

This behavior used to make sense when ice_cfg_agg() was exported and
intended to create a new aggregator node for a specific ID. This is no
longer true, and all three callers of ice_sched_cfg_agg() already have a
valid agg_info structure.

Refactor the function to take the agg_info pointer directly, dropping the
unnecessary lookup and allocation fallback. This simplifies the function,
and keeps its scope targeted at traffic class configuration.

This removes essentially dead code, and prevents the need for adding
additional error cleanup for failures that are impossible.

Suggested-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 49 ++++++++++--------------------
 1 file changed, 16 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index c45e9076518d..cb5f6120ad0c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -2744,41 +2744,28 @@ ice_alloc_agg_info(struct ice_hw *hw, u32 min_id, u32 max_id,
 /**
  * ice_sched_cfg_agg - configure aggregator node
  * @pi: port information structure
- * @agg_id: aggregator ID
- * @agg_type: aggregator type queue, VSI, or aggregator group
+ * @agg_info: pointer to aggregator node to configure
  * @tc_bitmap: bits TC bitmap
  *
- * It registers a unique aggregator node into scheduler services. It
- * allows a user to register with a unique ID to track it's resources.
- * The aggregator type determines if this is a queue group, VSI group
- * or aggregator group. It then creates the aggregator node(s) for requested
- * TC(s) or removes an existing aggregator node including its configuration
- * if indicated via tc_bitmap. Call ice_rm_agg_cfg to release aggregator
- * resources and remove aggregator ID.
- * This function needs to be called with scheduler lock held.
+ * Configure an aggregator node's traffic classes according to the provided
+ * tc_bitmap.
+ *
+ * Context: Must be called with scheduler lock held.
  */
-static int
-ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
-		  enum ice_agg_type agg_type, unsigned long *tc_bitmap)
+static int ice_sched_cfg_agg(struct ice_port_info *pi,
+			     struct ice_sched_agg_info *agg_info,
+			     unsigned long *tc_bitmap)
 {
-	struct ice_sched_agg_info *agg_info;
-	struct ice_hw *hw = pi->hw;
-	int status = 0;
+	int status;
 	u8 tc;
 
-	agg_info = xa_load(&hw->agg_list, agg_id);
-	if (!agg_info)
-		agg_info = ice_alloc_agg_info(hw, agg_id, agg_id, agg_type);
-	if (IS_ERR(agg_info))
-		return PTR_ERR(agg_info);
-
 	/* Create aggregator node(s) for requested TC(s) */
 	ice_for_each_traffic_class(tc) {
 		if (!ice_is_tc_ena(*tc_bitmap, tc)) {
 			/* Delete aggregator cfg TC if it exists previously */
 			status = ice_rm_agg_cfg_tc(pi, agg_info, tc, false);
 			if (status)
-				break;
+				return status;
 			continue;
 		}
 
@@ -2787,15 +2774,15 @@ ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 			continue;
 
 		/* Create new aggregator node for TC */
-		status = ice_sched_add_agg_cfg(pi, agg_id, tc);
+		status = ice_sched_add_agg_cfg(pi, agg_info->agg_id, tc);
 		if (status)
-			break;
+			return status;
 
 		/* Save aggregator node's TC information */
 		set_bit(tc, agg_info->tc_bitmap);
 	}
 
-	return status;
+	return 0;
 }
 
 /**
@@ -3121,8 +3108,7 @@ int ice_cfg_vsi_agg(struct ice_port_info *pi, u16 vsi_handle,
 	}
 
 	/* Configure the aggregator node */
-	status = ice_sched_cfg_agg(pi, agg_info->agg_id, ICE_AGG_TYPE_AGG,
-				   &bitmap);
+	status = ice_sched_cfg_agg(pi, agg_info, &bitmap);
 	if (status)
 		goto out_unlock;
 
@@ -4402,9 +4388,7 @@ void ice_sched_replay_agg(struct ice_hw *hw)
 						    agg_info->replay_tc_bitmap,
 						    replay_bitmap);
 			status = ice_sched_cfg_agg(hw->port_info,
-						   agg_info->agg_id,
-						   ICE_AGG_TYPE_AGG,
-						   replay_bitmap);
+						   agg_info, replay_bitmap);
 			if (status) {
 				dev_info(ice_hw_to_dev(hw),
 					 "Replay agg id[%d] failed\n",
@@ -4471,8 +4455,7 @@ static int ice_sched_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
 	ice_sched_get_ena_tc_bitmap(pi, agg_info->replay_tc_bitmap,
 				    replay_bitmap);
 	/* Replay aggregator node associated to vsi_handle */
-	status = ice_sched_cfg_agg(hw->port_info, agg_info->agg_id,
-				   ICE_AGG_TYPE_AGG, replay_bitmap);
+	status = ice_sched_cfg_agg(hw->port_info, agg_info, replay_bitmap);
 	if (status)
 		return status;
 

-- 
2.54.0.1064.gd145956f57df

