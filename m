Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KANWOBNAxWkU8wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 15:17:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 546D9336AE0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 15:17:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC0C1409BF;
	Thu, 26 Mar 2026 14:17:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZJAofpCUY4u; Thu, 26 Mar 2026 14:17:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EE32409CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774534671;
	bh=XwGclFvzvtmw83tFGc3Z7bUMfypG6T/S2tSXYl9kqno=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1rFUNZ787sgaakJ5ztWMwHyS96bcDLldXwwO2B8zW7/O0oh+zAmwcswDii1D3zC7q
	 S9vwSXLcIYYbzgGsbYrJ7MUaBcN6sAPUDNEg69PkXrM5xQllCSvECWUaQeeN/CodIq
	 iWWi3ZNli/u69KZR+nOKhU3BmAEDi2UvyW7je/NmaR5lhzu23lSrfUwy6c0xfhXsuc
	 9Yw363yHPE1gihiPQf72lHpGIfPC6zlgi5P/uEpwVgZsqPYED034EnL/whtGpmAx4u
	 Ugybh6VXJ8AbZqUPZHhPiukg2/YaabBPwC0ia0nh4CBJXnkmUyT99pG9xVfhtdjuaH
	 tqrrJoyQc4YUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EE32409CF;
	Thu, 26 Mar 2026 14:17:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DB4F7F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 14:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD42040992
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 14:17:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZDGcF1p6CzM2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 14:17:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CFB6D4085B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFB6D4085B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFB6D4085B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 14:17:48 +0000 (UTC)
X-CSE-ConnectionGUID: Gw7vzya/Qq+FdVnUr5IhtA==
X-CSE-MsgGUID: UVJfhQ3PTAWWCdTqnonuxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="98212693"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="98212693"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 07:17:47 -0700
X-CSE-ConnectionGUID: zlYbFasVTCCazD3zHtYOyA==
X-CSE-MsgGUID: FuCbrUlrRh6ZBfeOE+Krvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="229963510"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa005.jf.intel.com with ESMTP; 26 Mar 2026 07:17:46 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Marcin Szycik <marcin.szycik@intel.com>
Date: Thu, 26 Mar 2026 15:17:45 +0100
Message-ID: <20260326141745.3804284-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774534668; x=1806070668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=19JNJgIC1w0C8iD0XBuDVA7+MnIqP+1uGvp0jR8zkts=;
 b=XlMIDE+m6QXDZ0OaS3mfBl6ol7PG+KSTplErc4YMyKthUnJgdvX6xYsN
 JbtisRJkP7AFe59k5gUsCT6dlv7DviPzmGSdLMy/pOnSNAXlQj7wG2FCu
 6AuQo90JtA3uOFVpAHVnl31+Ln4fSDZd+bpavzGyCuil3WkYsPiQaOuFb
 0JjaGn9uDR7hl+JiwjNbcyhxHDPdlxT7biOuUApkR10xL7ZHcETXeJVbK
 OlCeRn2Mzmw/BzAcrbVBi4/dA/Zc+CTz8ZiUvZ7rUwtpS7pQoJ/twQ0Rq
 ubbBmsADx1AAzcr7mOXARBdSGDtRFPLqDhS/J19FArQsi7Wo0dJfvVmNA
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XlMIDE+m
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: remove excessive memory
 allocation in ice_create_lag_recipe()
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 546D9336AE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Marcin Szycik <marcin.szycik@intel.com>

For some reason ice_create_lag_recipe() allocates an array of 64
struct ice_aqc_recipe_data_elem elements, while it only needs one (1).
Fix it, while also using kzalloc_obj().

Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2 -> v3 use sizeof(*new_rcp) in memcpy() to match the allocation (Jakub)
v1 -> v2 remove 'Fixes' from commit message because it's not a critical bug
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 310e8fe..9ad19c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2418,11 +2418,11 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
 	if (err)
 		return err;
 
-	new_rcp = kzalloc(ICE_RECIPE_LEN * ICE_MAX_NUM_RECIPES, GFP_KERNEL);
+	new_rcp = kzalloc_obj(*new_rcp, GFP_KERNEL);
 	if (!new_rcp)
 		return -ENOMEM;
 
-	memcpy(new_rcp, base_recipe, ICE_RECIPE_LEN);
+	memcpy(new_rcp, base_recipe, sizeof(*new_rcp));
 	new_rcp->content.act_ctrl_fwd_priority = prio;
 	new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
 	new_rcp->recipe_indx = *rid;
