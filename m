Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0pJeOiI+QmpI2gkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2026 11:42:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AE86D85E7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2026 11:42:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="xXZu8i6/";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C683D40B83;
	Mon, 29 Jun 2026 09:42:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YrMdG6roAEWH; Mon, 29 Jun 2026 09:42:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5071540B91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782726173;
	bh=XsTwMMhwMDtVxR+OBBTUDm3TsKCdMGMTZuRp0lLpxQw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xXZu8i6/NWymV5kFB5aRAQu8bkgKzi/jCwdHSWtqinZG2NILpq8s0S8CJqmYxY/wH
	 cQsfp2chch6KII/zalju3ISzzt8PiHg3ZYL+LENOMFM9FTLVzfPh/BglNobWiS50N3
	 Kb7jA3U0sLujKuZ3PlROjITZAIehcgzC8ET/TDQIM8iU+EbtsV4Gbq2CDOfxciPJmJ
	 jGpRwg+K8LX4gu2qnZTRCHIOaREdgDQ0iNjk3pHl9Qebr6VbLgwUxAh8COYso/evne
	 NeUrihROOxt/8as+DfxwV/ia1i21boBKxRDqS5HRzf1eT8awOJ3dgIWe0XOD93+GKk
	 CXZCRnT6wvVdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5071540B91;
	Mon, 29 Jun 2026 09:42:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 255352F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2026 09:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07F9D81129
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2026 09:42:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2jFX0tOC0GS8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2026 09:42:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 15A0681106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15A0681106
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15A0681106
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2026 09:42:50 +0000 (UTC)
X-CSE-ConnectionGUID: 6lBprjdNRy+a4Cq4cwZ/8A==
X-CSE-MsgGUID: V4cfqo3PS7e9Q4MARtnRtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="85957303"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="85957303"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 02:42:50 -0700
X-CSE-ConnectionGUID: TfzmJJ1ZQxynJIDPPCckMw==
X-CSE-MsgGUID: NyYvSUMDTPGKIjVs5NZwkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="253815918"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa004.fm.intel.com with ESMTP; 29 Jun 2026 02:42:49 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 29 Jun 2026 11:12:03 +0200
Message-ID: <20260629091203.36482-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782726171; x=1814262171;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2ypBJFZejzl3U8rgI1nHi231EjUtIKg6wLLXZKyeFxY=;
 b=gdNIUCoVE79LAf/zAfEvH4xcJSgvfYnpaFigntDjFMzhXNYAp+a/3b1T
 eaeJ//JmBo3g9X6LJgW0pEXNOyeb5dAADiXi4js+JLACRh51jPhgw677E
 bvmyu+k7LPeNocMrDCAdMEn10qvbO+rvBag00tBTZf6XMLIPZzC9pAyCV
 VtYus+2FrMKUpxe2S/mKYsgOIkTtP1HPR/AbOGCHK3sq6vdJk9SQNpegx
 J2hR8PGqblTWZZiRAVgp/Xsh4ZFQ+S7dkSTLk28lcpQkvblStW3B+qEBE
 JoYOIbyQu+MSttumnxgunoaxWtmxN8ldl2L9ge7FxOYI5GumWfCpoI6HJ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gdNIUCoV
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: use global queue index in
 TC to-queue offload
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1AE86D85E7

Previously index within PF was used, which caused rules to fail on any PF
other than PF0.

Switch to global queue index by adding first RX queue id from caps.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Fixes: 143b86f346c7 ("ice: Enable RX queue selection using skbedit action")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index d20357c04127..6f49ecb4165b 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -1202,7 +1202,8 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 		break;
 	case ICE_FWD_TO_Q:
 		/* HW queue number in global space */
-		rule_info.sw_act.fwd_id.q_id = tc_fltr->action.fwd.q.hw_queue;
+		rule_info.sw_act.fwd_id.q_id = tc_fltr->action.fwd.q.hw_queue +
+			hw->func_caps.common_cap.rxq_first_id;
 		rule_info.sw_act.vsi_handle = dest_vsi->idx;
 		rule_info.priority = ICE_SWITCH_FLTR_PRIO_QUEUE;
 		rule_info.sw_act.src = hw->pf_id;
-- 
2.49.0

