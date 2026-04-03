Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEOoCNpSz2nqvAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 168F73911FE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29FD340C8E;
	Fri,  3 Apr 2026 05:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bJYbwaFRzE2m; Fri,  3 Apr 2026 05:40:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D5FB40CA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775194836;
	bh=7MEu+KWN7s4FVH14KOLq8wfiUsXFRe5XZXMOOgKL3E8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1A1EYW62R2ymmYojN4ZZqdHO97lAWoIuM9UI07WAZm8Zsl+omVQcxaQwoSHxo1+ZE
	 8lXaX8Y+EUEa3nCy0rP2q5NVeaMuzdYCSoV7nPs/wvw+Li6b89wLi3ItAu0swJOXAV
	 bzNThRVQ89G4KaV0jLQlx9LLzNIwXk8BbQ8zschKznbDSoU7FSsSIykzlp7VkWdHsm
	 Q6ZWy1XtFRER2NKmVUkkBngB1mlbNsSgO76M3g+S7KwY8/MrMqVaCd8Vr+rxxW9J9S
	 QDSIyrWGVWje/ubH0WQ7Ihi19Q37saXnlLpui4ehyyL5wzdEyNKNbgH93UkFKOptAQ
	 f+LIaOwDH2mNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D5FB40CA8;
	Fri,  3 Apr 2026 05:40:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54C0C1F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4670B40BAA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aKdgcQEz9hjg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:40:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9200B40B9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9200B40B9C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9200B40B9C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:33 +0000 (UTC)
X-CSE-ConnectionGUID: lAJmTqzAR161q7lvV6lOeQ==
X-CSE-MsgGUID: hfJP2QSJTXemqVsiV9h8Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75981738"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75981738"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:40:33 -0700
X-CSE-ConnectionGUID: jbTBlcg1SAetYI2QwXajeg==
X-CSE-MsgGUID: 2xE0J/kwReG74IUN0Bb3lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="223904913"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2026 22:40:31 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Michal Swiatkowski <michal.swiatkowski@intel.com>
Date: Fri,  3 Apr 2026 07:40:19 +0200
Message-ID: <20260403054029.3789616-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775194834; x=1806730834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vp8t693MvIq+MfKl2r5GIw4QU1Y/T0mo5MRMbiHbG4c=;
 b=Oeg0dGr8x6UD54v8Jmphnch08vfW1NWHgVAP5oy12WItv7JA1UhcMhJn
 NbWeb88q6hpCtn1R3xR0NSsmWdioXpjfqfQO5l16PZU7zW+Dt2vHCLlr6
 JSXbUvzn2N86JtS6fQ4FiT436UYJyRcFovQ4T+/E5nJL3CQPITlO4PDil
 Wi8ojwhJQafVigIn8mtrmXcYmznTe501KNaBTDjfatAypUX6u1JS2Et6o
 2UUqxXc1EhRU1Gy/oqwi16lSfPt5mfohQZlNwkPJ74cOnENqavLWkJbsB
 lXduP8+hGwxDnvrj0qNLAFKRIM9ZIbhTwdECsKmXcwFWXIksSMSsUQ8kE
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Oeg0dGr8
Subject: [Intel-wired-lan] [PATCH iwl-net 1/10] ice: fix mirroring to VSI
 list
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 168F73911FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

Rules whose action can be "to VSI list" should have VSI count set to 1
after creation. There was a lack of it in case of mirroring action. Fix
it by setting correct VSI count also for mirror rules.

Reproduction:
  tc filter add dev eth5 ingress protocol arp prio 6301 flower skip_sw \
    dst_mac ff:ff:ff:ff:ff:ff action mirred egress mirror dev eth9
  tc filter add dev eth5 ingress protocol arp prio 6201 flower skip_sw \
    dst_mac ff:ff:ff:ff:ff:ff action mirred egress mirror dev eth10

  tc filter del dev eth5 prio 6301 ingress

The last command removes the rule, but should only remove one VSI from
the forward list. Without the fix:

  tc filter del dev eth5 prio 6201 ingress

results in an error during removing the rule.

Fixes: aa4967d8529c ("ice: Add support for packet mirroring using hardware in switchdev mode")
Cc: stable@vger.kernel.org
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index a3e93b1..d77c188 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -7318,7 +7318,8 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	sw->recp_list[rid].adv_rule = true;
 	rule_head = &sw->recp_list[rid].filt_rules;
 
-	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI)
+	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI ||
+	    rinfo->sw_act.fltr_act == ICE_MIRROR_PACKET)
 		adv_fltr->vsi_count = 1;
 
 	/* Add rule entry to book keeping list */
-- 
2.52.0
