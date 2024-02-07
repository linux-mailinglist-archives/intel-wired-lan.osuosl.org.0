Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADAE84CED0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 17:23:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 474DE83C18;
	Wed,  7 Feb 2024 16:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wnkIK_306ylN; Wed,  7 Feb 2024 16:22:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 809FB83C17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707322978;
	bh=1TnSZN2ETh7VIGY6SjmsG/dLPsRvEASIe/CvuqpySqw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NXD0661O/TR/1dQyPV9CYdI0KlREB03DM6i8O4QGXaFzZbm9i65Qfd0Arisp3nkHN
	 /figCaoOc3MdgSe8wXbG4zROAJIZUpL39Xi8Ix4J0zz6kzhx72h/L0t9XA0s6Tk1o6
	 MM/YY637NgK5O9uPs/CsKEgNHmYXNGtuoX32rAh1dsbVJdTNtRxoPAtIF6Gw92dLiN
	 g9YM5UIf8XomnOJxc2qszkTPHHTgyYx3SsBx6ne76BxtRQpx6gVdFOB6wRx2NddqT6
	 fxcrWlIXeljhH/6ISVZj6oY+tcYFH018spevCpY5vJ1Ap9Y8PYWMOLhUfL04uBQnrW
	 hKcuSe/Ydip7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 809FB83C17;
	Wed,  7 Feb 2024 16:22:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D6591BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42248400CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 905z7TU5ad8m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 16:22:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1A7124019D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A7124019D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A7124019D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="12109114"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="12109114"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 08:22:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="32183224"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa002.jf.intel.com with ESMTP; 07 Feb 2024 08:22:49 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Feb 2024 17:19:22 +0100
Message-Id: <20240207161923.710014-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
References: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707322972; x=1738858972;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7E/rcKPoD+8eF9IavnX872wklId5uA4EeOpu1512ZM0=;
 b=gr3Pq3jNPAOWrsjhORnO/Qoy/r1eeiKedQuSztGGZ6imaaJj/MYBrVPa
 s1Y/+PEK0dsu55C6LGATK4Z5FsaSzbmnemmNbbD4cANNROGlN04cq/vHU
 PcnqUGqEhNxeSva3FJrfVTvhuuOqWLfUhSoPgoe90IO7ekPWufd4p/m4a
 NG0v54fuKom3FOE+fcayhexi7/WS9rAQCFFGdJ8d+EVZsYGanFRNa8dxD
 dgBgYva0kKs0vzcYZEYnPERaadbXf7+cfiT2rTatUKtwV3IQ/iPN+kpKA
 4uG/n19Z3nWls5zqxRidrsuUYeAi2XivsjeBQcso+HuO6wQ727JwAw9mV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gr3Pq3jN
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: fix dpll periodic work
 data updates on PF reset
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
index 82fbb6778c0b..c102535d23db 100644
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

