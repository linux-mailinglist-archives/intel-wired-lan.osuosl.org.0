Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INXyCKwgHmrmhQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E57A06267E1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27F008144C;
	Tue,  2 Jun 2026 00:15:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bnu891u3ggZb; Tue,  2 Jun 2026 00:15:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94D4181429
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780359335;
	bh=Bv0HkjcVC/WoKID226Xr+Bo+g6n4/bKL9He2WoHQnyo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z7o0DlM9LcH+9mkAqjYBW/7LSnPycmvHpGUUw7F5xb+EFFSKNkB26cM55WP0u7Y87
	 M5LFXCyL6FnXjVbCFlDnKY2fIhKjIu+bip9CQc+8aNHyi1kt2Oatj2Ac0UuTpaIc7s
	 HsYLZG8+UqZosEEshDg+p/twcFvY66Iia1fEqalQo5DjXjWb9DwfdFmmqnwojDsoQO
	 fcmRQ/VfUgZwje756Zyo6KV8v04gxSEtdqa8XQHbV15Nqv5oKmGQp5bRtyeIjwbFIp
	 8aXvgJKzwwPZ2OULowLFB6ax2F7KTmhA2yXaZsH04pm2UiuioadqR0GWSmpIFlmyTU
	 Qse+d1iRMChHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94D4181429;
	Tue,  2 Jun 2026 00:15:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A7543F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92CDB40058
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GzzTOsksy6Q1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E07174030F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E07174030F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E07174030F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:31 +0000 (UTC)
X-CSE-ConnectionGUID: KSmDczMvQSuFv+BvPHZ1+Q==
X-CSE-MsgGUID: oisSewgyRzqfSh3ZyjGskw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84755424"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="84755424"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:30 -0700
X-CSE-ConnectionGUID: fbtR9wcRRsmpY7gj58MGsw==
X-CSE-MsgGUID: tkRitGPIT9iEIxr7FCyRsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267598722"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:30 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 01 Jun 2026 17:14:20 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-3-36d6ecbe5ede@intel.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.16-dev-3fed5
X-Developer-Signature: v=1; a=openpgp-sha256; l=3567;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=3dgMEJWOCpdkTidhqhCeFwMgeKYxmPG93+bJU5TqogE=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhiw5hQU5341/vZt+V2jL98hkmajLufd6zizg4ihzPCL84
 oTCTj7XjlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACaSf4uR4cyGO2yreJs0dJ75
 nlJy/Mpexa1SEcNsujDpxJrEZJ+Dzgx/5Ryzw70FtZ9furxRJXy9e82rDGeh4JhXReoPxM48zVH
 gBgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780359332; x=1811895332;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=3dgMEJWOCpdkTidhqhCeFwMgeKYxmPG93+bJU5TqogE=;
 b=SsGahvJItn10X0+iaHSawc9BDg2CKpQzX5FZbJi+dyS+Bi8p4e4gJhXx
 fffrM//N8V53JGUWzlfW30YyV/MXAJNbGKgkQjrXngGvNKMmgFwKISyCq
 jtbYMzFzvBBE4r3uC9h+C6hw1jDRMK5ctNO6jKva7cOahelJRRVQEL9Hv
 DQxvt2SRrqe2mJfcNku9Ai7vu0Wd6UG+PM9alDh6xBzN1jzhO5llIoLdC
 0qu22dwbuwimNMWz3qCKk6W8G4BjSONSJ7W/gJqVuHQ+roUfg8jQVlVDw
 P7HgOqOdv9UnWhT5jJ8B6hMll4uLS+qihMhP+8PRj8nzQ8a3h/wm8aJiS
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SsGahvJI
Subject: [Intel-wired-lan] [PATCH iwl-next 3/6] ice: extract function to
 allocate aggregator info structure
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,intel.com:mid,intel.com:email];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E57A06267E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new ice_alloc_agg_info() helper function which allocates an
aggregator info structure with an ID between min_id and max_id, inserting
it into the agg_list xarray. Use this function in ice_sched_cfg_agg().

This is done in preparation of refactoring the aggregator node ID logic in
ice_set_agg_vsi().

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 74 +++++++++++++++++++++---------
 1 file changed, 52 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index bfca45f5c53c..88392ebf4454 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -2693,6 +2693,54 @@ ice_sched_add_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
 	return 0;
 }
 
+/**
+ * ice_alloc_agg_info - Allocate aggregator info structure
+ * @hw: pointer to the HW structure
+ * @min_id: the minimum ID to allocate
+ * @max_id: the maximum ID to allocate
+ * @agg_type: the aggregator node type
+ *
+ * Allocates a new aggregator info structure with an ID between min_id and
+ * max_id, inserting it into the agg_list xarray. If an exact ID is required,
+ * use the same value for both min_id and max_id.
+ *
+ * Context: Must be called while holding the scheduler lock.
+ *
+ * Return: the allocated aggregator info structure pointer, or an ERR_PTR on
+ * failure.
+ */
+static struct ice_sched_agg_info *
+ice_alloc_agg_info(struct ice_hw *hw, u32 min_id, u32 max_id,
+		   enum ice_agg_type agg_type)
+{
+	struct ice_sched_agg_info *agg_info;
+	u32 agg_id;
+	int status;
+
+	/* Create new entry for new aggregator ID */
+	agg_info = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*agg_info),
+				GFP_KERNEL);
+	if (!agg_info)
+		return ERR_PTR(-ENOMEM);
+
+	agg_info->agg_type = agg_type;
+	agg_info->tc_bitmap[0] = 0;
+
+	/* Initialize the aggregator VSI list head */
+	INIT_LIST_HEAD(&agg_info->agg_vsi_list);
+	agg_info->num_vsis = 0;
+
+	status = xa_alloc(&hw->agg_list, &agg_id, agg_info,
+			  XA_LIMIT(min_id, max_id), GFP_KERNEL);
+	if (status) {
+		devm_kfree(ice_hw_to_dev(hw), agg_info);
+		return ERR_PTR(status);
+	}
+	agg_info->agg_id = agg_id;
+
+	return agg_info;
+}
+
 /**
  * ice_sched_cfg_agg - configure aggregator node
  * @pi: port information structure
@@ -2719,29 +2767,11 @@ ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 	u8 tc;
 
 	agg_info = xa_load(&hw->agg_list, agg_id);
-	if (!agg_info) {
-		/* Create new entry for new aggregator ID */
-		agg_info = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*agg_info),
-					GFP_KERNEL);
-		if (!agg_info)
-			return -ENOMEM;
+	if (!agg_info)
+		agg_info = ice_alloc_agg_info(hw, agg_id, agg_id, agg_type);
+	if (IS_ERR(agg_info))
+		return PTR_ERR(agg_info);
 
-		agg_info->agg_id = agg_id;
-		agg_info->agg_type = agg_type;
-		agg_info->tc_bitmap[0] = 0;
-
-		/* Initialize the aggregator VSI list head */
-		INIT_LIST_HEAD(&agg_info->agg_vsi_list);
-		agg_info->num_vsis = 0;
-
-		/* Add new entry in aggregator array */
-		status = xa_insert(&hw->agg_list, agg_id, agg_info,
-				   GFP_KERNEL);
-		if (status) {
-			devm_kfree(ice_hw_to_dev(hw), agg_info);
-			return status;
-		}
-	}
 	/* Create aggregator node(s) for requested TC(s) */
 	ice_for_each_traffic_class(tc) {
 		if (!ice_is_tc_ena(*tc_bitmap, tc)) {

-- 
2.54.0.1064.gd145956f57df

