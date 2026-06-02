Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PL1LK0gHmr3hQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE486267F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B83016088E;
	Tue,  2 Jun 2026 00:15:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id acw4SFqvWcZ4; Tue,  2 Jun 2026 00:15:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B21476088C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780359338;
	bh=uQ2qDDGKAt7TSTGDrPNTHy3kc/HjfplMCdk9+vrP6qw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o8EJFgaQaSpjs63NKDFs9R8x5+BQzxmDXqsuD97V3j67CquUEwfbonVivJZ7qSzyS
	 J0nNGN9eLpNZS39uw1aneS6sovdoTU8L3hoyzsdO6eIsn47F72yk9cVOL9OrQEJkb0
	 ++0D7PsSLWq/dg3MTdP3werSv+8DQ1HV9ecaTw8BK/Vjk9id6RaOMr7lnJDFNskgTA
	 G3Hn7p+YZsOhb4uoFSd54n0XmsU/umWVFgGuuTSW/xpsmBCCKlveYYGSpgCMsR7f88
	 wq+m9AI9CRFMRomMfwQdN6QifeUqSTdDnuw3L5uTLKhmoYMtoFbkAf80lLyAOX4nQB
	 GEFj3vtPL8wcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B21476088C;
	Tue,  2 Jun 2026 00:15:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CBB56F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCC6140330
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BndC_l7-QCtZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 255364032E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 255364032E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 255364032E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
X-CSE-ConnectionGUID: A2Oi0L6AQQiUlNiz50Fq3Q==
X-CSE-MsgGUID: OaQo6hqwTHmw5jSQay+FcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84755430"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="84755430"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:31 -0700
X-CSE-ConnectionGUID: bylcpzkUTGSFqH47nIGlHQ==
X-CSE-MsgGUID: kKe+Gw4YQqG2og9RrFs4BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267598728"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:31 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 01 Jun 2026 17:14:22 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-5-36d6ecbe5ede@intel.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.16-dev-3fed5
X-Developer-Signature: v=1; a=openpgp-sha256; l=3346;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=2R5YQ5HwMWaPXShLbmuxsPxxykQE+hg8tNL3ARg9LyA=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhiw5hYW3VrxeJsF4am50m8QRTV7Nk1Ym1p/K9j8/ZuN6x
 ClIvPx6RykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABOZL8nwP2uv/Od1opO+uLzZ
 wvTpdEqH96/NjFIXNU675gVxzTVtCGVkmHppdTBbXLFr6dGEVz0GbxwKmS9P37Jp9zH/k4wCpS+
 0mQA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780359332; x=1811895332;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=2R5YQ5HwMWaPXShLbmuxsPxxykQE+hg8tNL3ARg9LyA=;
 b=V+xGXGIaRKR8tBnWlLIDqXDz9aSglIkIDEbdDTVZ5dCYhNJk8Kf9u77U
 P91g2wLqHXyKiFya0aNCB2PhLbYQ5O9vK31/mNzNFywYNhpklFqoFpf3S
 b498L37e74hey2eprRGefu1qi5b1mcoBLeE+vAaHP1NREicJu0h+wj0tP
 tCjPIzAAur+dp9NP//Bql8QIaFa4L93g+W/NaI1uJEPC6vtGaPo9bgeDC
 58/EB+lYIJkYtKO6v9MkN0oQZG9zfj5peLUMkOfjDSYyoM8QN2aVBjOi4
 fGiy5eyqiDQiBaC5ajM9vqSLMuFtmB+gRirEhFNpXMVOuxmLDfLpF8Tv7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V+xGXGIa
Subject: [Intel-wired-lan] [PATCH iwl-next 5/6] ice: remove unused
 aggregator node functions
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2CE486267F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

With the introduction of ice_cfg_vsi_agg(), the ice_cfg_agg() and
ice_move_vsi_to_agg() functions are no longer used. Remove them.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.h |  6 ----
 drivers/net/ethernet/intel/ice/ice_sched.c | 50 ------------------------------
 2 files changed, 56 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index b9ea9174f3d9..30b55bab09d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -140,12 +140,6 @@ int ice_cfg_vsi_agg(struct ice_port_info *pi, u16 vsi_handle,
 		    u32 min_id, u32 max_id, u8 tc_bitmap,
 		    u32 *configured_id);
 int
-ice_cfg_agg(struct ice_port_info *pi, u32 agg_id,
-	    enum ice_agg_type agg_type, u8 tc_bitmap);
-int
-ice_move_vsi_to_agg(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
-		    u8 tc_bitmap);
-int
 ice_cfg_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		 u16 q_handle, enum ice_rl_type rl_type, u32 bw);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index a7f31e84ee14..c45e9076518d 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -2798,30 +2798,6 @@ ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 	return status;
 }
 
-/**
- * ice_cfg_agg - config aggregator node
- * @pi: port information structure
- * @agg_id: aggregator ID
- * @agg_type: aggregator type queue, VSI, or aggregator group
- * @tc_bitmap: bits TC bitmap
- *
- * This function configures aggregator node(s).
- */
-int
-ice_cfg_agg(struct ice_port_info *pi, u32 agg_id, enum ice_agg_type agg_type,
-	    u8 tc_bitmap)
-{
-	unsigned long bitmap = tc_bitmap;
-	int status;
-
-	mutex_lock(&pi->sched_lock);
-	status = ice_sched_cfg_agg(pi, agg_id, agg_type, &bitmap);
-	if (!status)
-		status = ice_save_agg_tc_bitmap(pi, agg_id, &bitmap);
-	mutex_unlock(&pi->sched_lock);
-	return status;
-}
-
 /**
  * ice_get_agg_vsi_info - get the aggregator ID
  * @agg_info: aggregator info
@@ -3073,32 +3049,6 @@ ice_sched_cfg_node_bw_alloc(struct ice_hw *hw, struct ice_sched_node *node,
 	return ice_sched_update_elem(hw, node, &buf);
 }
 
-/**
- * ice_move_vsi_to_agg - moves VSI to new or default aggregator
- * @pi: port information structure
- * @agg_id: aggregator ID
- * @vsi_handle: software VSI handle
- * @tc_bitmap: TC bitmap of enabled TC(s)
- *
- * Move or associate VSI to a new or default aggregator node.
- */
-int
-ice_move_vsi_to_agg(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
-		    u8 tc_bitmap)
-{
-	unsigned long bitmap = tc_bitmap;
-	int status;
-
-	mutex_lock(&pi->sched_lock);
-	status = ice_sched_assoc_vsi_to_agg(pi, agg_id, vsi_handle,
-					    (unsigned long *)&bitmap);
-	if (!status)
-		status = ice_save_agg_vsi_tc_bitmap(pi, agg_id, vsi_handle,
-						    (unsigned long *)&bitmap);
-	mutex_unlock(&pi->sched_lock);
-	return status;
-}
-
 /**
  * ice_find_available_agg - Find or create aggregator node
  * @hw: pointer to the HW structure

-- 
2.54.0.1064.gd145956f57df

