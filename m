Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F39084FED4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 22:27:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E499F41DBC;
	Fri,  9 Feb 2024 21:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TesDqRb6Kuny; Fri,  9 Feb 2024 21:27:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 381AB41A59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707514072;
	bh=vBQz/TZGSj92BCu4uAF8I7gXj0KXmIsJkcwzNJ4wBoU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dxBny8wcJgus9GbG8OB1uBImga3cI6sqMkvLpuG9zS2apO5HeJGo0Ztdeimvyrz0C
	 vz0tWQ1c/UgQgOiIC5TmNGu6Crguz2rggHVs+l8EeMdfcsZ7Y4dW9EmIfGDxVuuvTA
	 JRJedF/d3a7qidRCzID7E7+uUrzs8SB5V7SiSVZyEFaUwBBkJnJ8Jwyb3DtIUdc2W3
	 S5FuudIQbOpDlOPAsDj4Gf9S5WqFJJBqEABX0Qy/Ibd0inNyHIw/S8j6XjrdzP1jR/
	 v85L4ajMKKwpIcyW1JOiD8Kg2ZFQytwpybl9Fw99ME14oKL0BvDxhn+CNUGPaMPkvy
	 yjaaTBJE0mb3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 381AB41A59;
	Fri,  9 Feb 2024 21:27:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4646E1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A214A40173
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kxtWq6yMScSw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 21:27:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BD41D400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD41D400D0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD41D400D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="5321573"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="5321573"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 13:27:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="6681840"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa003.jf.intel.com with ESMTP; 09 Feb 2024 13:27:44 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Feb 2024 22:24:31 +0100
Message-Id: <20240209212432.750653-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
References: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707514065; x=1739050065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/zLFYfKrCHlgzoG+Jis0BmozSOrd3qxox8x2jrMAiLI=;
 b=Vw7q2Eo4t19OP35BkTfwNWuUqZPJdgUjSIJqOFTI/KaIqYLXKDwytL6m
 UMUrmFNzEHMQJqE8Zmpe7ZA2q8hpVSxzaoebJpovyaFje2Gid2oWF0CrF
 sCoe21Mo9QxTZRovAFyGJKXTnlnpLJcBCxv6UyC2AsuF7nzHiqvIej9l4
 DIafBMPuG1q2SB6Q4IBUWKdnPQOuSmtoGlXXtaBB9ehvAerNOGu2V3avq
 0DpsZ3C/vEnEmTSFoEwBTTq1IwdRFzNtwkBJTuZxc0eCod4oIDxfhh9e7
 iVnA8QF+iKHEOC0EMWQB6ybGe1VpRbYV+F0VBrsgWapPyY7cCxwGhOzSb
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vw7q2Eo4
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ice: fix dpll periodic
 work data updates on PF reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Igor Bagnucki <igor.bagnucki@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not allow dpll periodic work function to acquire data from firmware
if PF reset is in progress. Acquiring data will cause dmesg errors as the
firmware cannot respond or process the request properly during the reset
time.

Test by looping execution of below step until dmesg error appears:
- perform PF reset
$ echo 1 > /sys/class/net/<ice PF>/device/reset

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 58d135764ab0..544cfedf6c55 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -1364,8 +1364,10 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 	struct ice_pf *pf = container_of(d, struct ice_pf, dplls);
 	struct ice_dpll *de = &pf->dplls.eec;
 	struct ice_dpll *dp = &pf->dplls.pps;
-	int ret;
+	int ret = 0;
 
+	if (ice_is_reset_in_progress(pf->state))
+		goto resched;
 	mutex_lock(&pf->dplls.lock);
 	ret = ice_dpll_update_state(pf, de, false);
 	if (!ret)
@@ -1385,6 +1387,7 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 	ice_dpll_notify_changes(de);
 	ice_dpll_notify_changes(dp);
 
+resched:
 	/* Run twice a second or reschedule if update failed */
 	kthread_queue_delayed_work(d->kworker, &d->work,
 				   ret ? msecs_to_jiffies(10) :
-- 
2.38.1

