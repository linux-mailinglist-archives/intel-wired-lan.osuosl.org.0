Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP5OF0je/Wn0jwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 14:59:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A5A4F6AC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 14:59:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3B4B82423;
	Fri,  8 May 2026 12:59:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yBaLZFdxn1OK; Fri,  8 May 2026 12:59:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6527882433
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245189;
	bh=UzP2saOEUL+cxF8zpAdYfyrDJUr1o57OQOyCCFbd3e8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AO5EOsRhz9YxPt+Eu9Ywe/xvfEzneYAGBRYfpMRTB8ETSG9H+ph6f6Bns+ChEUu5r
	 RO2FkDo9oJgvXZJ2Exbi2IWY0fmkMsClWnLbGfvK63NbGjVpAGrNdCxORsGucAxlZM
	 Zt0Azfe7LyyAAjlb/fao9mKkGpePJrSGaF7D3C3gu/zpQWQp0CKu+dmxhK1PI+V9T+
	 JMIJhhHj1zRQde4xVK6u1TW0p4FHgemw3bqMgCjbwZwe7QZMqiCQiXXiYYbb78sMqy
	 0FfYARsJpAlUs0ganBuKsFK0H6uQl000dsVhVLke3fIQwEbOMfZcYTzwsvvOuoWLFl
	 H1qvPbSUCiUNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6527882433;
	Fri,  8 May 2026 12:59:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A233E358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93E0E40E37
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bjBZ-aROT5lb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 12:59:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DA69040E67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA69040E67
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA69040E67
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:45 +0000 (UTC)
X-CSE-ConnectionGUID: ynv89umpQRGo0XWD6ZSxlg==
X-CSE-MsgGUID: tSw9K54CRfe+9p3GmhuOaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199880"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79199880"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:59:46 -0700
X-CSE-ConnectionGUID: GMTYscFKSFW/eeqijkQXYA==
X-CSE-MsgGUID: YZKUQNZPQ46TNr2j45qvUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730099"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:41 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 56A4B2879A;
 Fri,  8 May 2026 13:59:39 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  8 May 2026 14:41:56 +0200
Message-Id: <20260508124208.11622-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245186; x=1809781186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xp8id5hWkxewY8R4U5e0ecSa2Lz1SpyuPfR7qie2fB0=;
 b=SaJeICSpux8GuqK4A48Xd6kD9f1hTwWD7XvWIalH/EaFoql5ZeoLREdD
 gMkcGTpwtzzWC2hMC4912HU1Ps0zXSE6+gvgCj8A8kTY2weeS4BkVQ2fJ
 phH43I/tXw7Z82bV00TpzA4Wn729eZvBuEDBGX6TzR63x8/3oVZag75b3
 6XnE7aZyeD0yGBPQts4E1axbA3xhUBuPrnoVC7v7kAezIkxW8b/kmAxLq
 xDhBauQQn3zBsPAv8bun3obGiayRCSKXkqjHg4uBWR11twFXcoXMtLyLG
 wAZcWsge8vw6Zf8KfflQmzR6aAnaH636CG8KXQeygOtVG1VKRZ8zaaZXy
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SaJeICSp
Subject: [Intel-wired-lan] [PATCH iwl-next v1 03/15] ice: simplify
 ice_vc_dis_qs_msg() a little
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
X-Rspamd-Queue-Id: 85A5A4F6AC6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.989];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Remove special case logic for disabling all queues in ice_vc_dis_qs_msg().
There were no actual speedup from it, the only difference was in saved
bitmap checks, but the HW operations take the majority of time anyway.
ice_vsi_stop_all_rx_rings() used (in the removed code) loops over rings
anyway.

With a message added just before removed code, in the "remove VF" scenario
there were no noticeable difference with the "speedup" and without, and it
takes ~0.06s on my machine from this point to the whole iavf removed, so
really no big deal anyway.

Next commit would otherwise need to complicate the "speedup possible"
check, so it's another reason to simplify here.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/virt/queues.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
index 31be2f76181c..6e4ec681fd07 100644
--- a/drivers/net/ethernet/intel/ice/virt/queues.c
+++ b/drivers/net/ethernet/intel/ice/virt/queues.c
@@ -357,6 +357,8 @@ int ice_vf_vsi_dis_single_txq(struct ice_vf *vf, struct ice_vsi *vsi, u16 q_id)
  * @msg: pointer to the msg buffer
  *
  * called from the VF to disable all or specific queue(s)
+ *
+ * Return: exit code of sending the virtchnl response.
  */
 int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 {
@@ -406,18 +408,7 @@ int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	q_map = vqs->rx_queues;
-	/* speed up Rx queue disable by batching them if possible */
-	if (q_map &&
-	    bitmap_equal(&q_map, vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF)) {
-		if (ice_vsi_stop_all_rx_rings(vsi)) {
-			dev_err(ice_pf_to_dev(vsi->back), "Failed to stop all Rx rings on VSI %d\n",
-				vsi->vsi_num);
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-			goto error_param;
-		}
-
-		bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
-	} else if (q_map) {
+	if (q_map) {
 		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF) {
 			if (!ice_vc_isvalid_q_id(vsi, vf_q_id)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-- 
2.39.3

