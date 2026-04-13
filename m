Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCscKbKb3GkxUAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 09:30:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 741E83E843B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 09:30:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8903B61795;
	Mon, 13 Apr 2026 07:30:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NTfRy8JwLqf; Mon, 13 Apr 2026 07:30:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0087B61AD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776065449;
	bh=FLmSgxuni4Lur4DRGz9rNAe1ZUU4M45aKWhKSGtW8Fo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l7E2mOCcp3BnA7BeWOPZP1UsnQ5FobBHZlk0k8oBYsZ0IennNEmsBougjFJwsjuhW
	 exPdBAWsJzqEdQM18OPXUHsqg2Rhk7ay0Vt+mL4a/voEWyVGIquDrpmXPV8ubaNeNu
	 nXsS3YWmZ0FkGXbxWKOEb/a2UK8XZ0iIitPhdUYLh6BYEAJOH1ew43/5/lPzS81koN
	 s9SOuBDfda3ZevffW4Fwnnf8ImLbkrrxoH4mXUXI6rnQa0Qx4nzr5MUn6ywD0ZV3ZL
	 aDiClyfL7RYBhHv3/GKPMOOea+WVJeZEYsVzEYl1V8UJ85w3sdT3jxTwFaRvsOmad0
	 5P4z1l6WoiXgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0087B61AD8;
	Mon, 13 Apr 2026 07:30:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D80D1237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE271840F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jFtjlZzLYGsn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 07:30:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 99EED8238D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99EED8238D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99EED8238D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:45 +0000 (UTC)
X-CSE-ConnectionGUID: O+GGcE+PRpmZTAL/hko6DA==
X-CSE-MsgGUID: ES+ra6GYRO25MbzQLgburQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80876645"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80876645"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 00:30:45 -0700
X-CSE-ConnectionGUID: NTVZjr6ZQHONvniZ2cX5dg==
X-CSE-MsgGUID: BBmfq9oATGyMdBhr/cHfCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="267700568"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 13 Apr 2026 00:30:44 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Kiran Patil <kiran.patil@intel.com>
Date: Mon, 13 Apr 2026 09:30:35 +0200
Message-ID: <20260413073035.4082204-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776065446; x=1807601446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W9ya2vXRkq7Xpvvhcfs8QUpkp0MBFOwlS2aQ4IaNQn4=;
 b=TQ6x9nAX4SHvStM/9eH6/a7HiLnlSTrFcCXkfgMcPrrBsYnm0qUfJcqh
 dnjgymIiJLWpHWKnDiM+WV23d73eqwyZ+WnN0LlNizfgpZBvu9EIjohZF
 3aQqvJDtZi40hd3i6Rxm+xCtAkXVSoZSmhdEMM6OYnCuCMTdASFuu97As
 dcIEASsDMEOhXJfhhZkCNmc0u1D3Y8agmsTxDtNnaD0DdW9qazxJ9Xs1o
 oZYiYmQyBvluN0FXdfrTMb3oZUolaDpCB2RLfg9/CzduJwpaVE7QXt2sT
 zR3K+CDBtM/fN/bkqEbFnne8nvrtZTm1nLSAGKgJCdHKYkCIEVG5199aE
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TQ6x9nAX
Subject: [Intel-wired-lan] [PATCH iwl-net 5/5] iavf: return 0 when TC flower
 filter not found after qdisc teardown
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 741E83E843B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Kiran Patil <kiran.patil@intel.com>

When an egress qdisc is destroyed, the driver proactively deletes all
associated cloud filters to prevent stale hardware state, decrementing
num_cloud_filters to zero in the process.

The kernel netdev layer is unaware of this implicit cleanup and may
still try to delete the same filters individually. If the filter is
not found in the driver's list and num_cloud_filters is already zero,
return 0 instead of -EINVAL to avoid confusing upper layers that
believe the filter is still offloaded in hardware.

Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 5e4035b..05aaae9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4175,7 +4175,16 @@ static int iavf_delete_clsflower(struct iavf_adapter *adapter,
 	if (filter) {
 		filter->del = true;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
-	} else {
+	} else if (adapter->num_cloud_filters) {
+		/* When the egress qdisc is detached the driver implicitly
+		 * deletes all associated cloud filters to prevent stale
+		 * hardware entries, reducing num_cloud_filters to zero.
+		 * The netdev layer is unaware of this implicit cleanup and
+		 * may still request deletion of individual filters.  Only
+		 * return -EINVAL when a filter lookup fails and
+		 * num_cloud_filters is non-zero, indicating a genuine
+		 * lookup failure rather than a post-teardown stale delete.
+		 */
 		err = -EINVAL;
 	}
 	spin_unlock_bh(&adapter->cloud_filter_list_lock);
-- 
2.52.0

