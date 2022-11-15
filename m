Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 643DC629F0A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 17:29:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49E59416B9;
	Tue, 15 Nov 2022 16:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49E59416B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668529749;
	bh=jPLNLshnU09rL1vHqg8UHasexn8wRwRB9xZFI9xl+WU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1EUL6DOQSGX/MWzOWdwISb//diS8psHfyKdyz/GtMKBEULfpw6ogr54ef9yrpRZcQ
	 G7WCO1RRGKU7ZS90uhCrNmoXKwZnapX7Hq8xqfHzru2aQdpGI//rmgWEiMEVXgzDdo
	 LfN6BLST8+elZyC4IvFUUZ2DiE0wFJhdXeCpCH5wcWcLNkZa4Ni6d2MoOaoD65xtdL
	 WzB1tpNWYT5dY4tgE4aN8/UjNcqAqisMA2FNk4p5B2dzdHPFWwXDgFFKaJrtngrD6i
	 p76HKF5IKXGH4hMhFXVpb/hsnACCNmU+1u4Lfcd9oAB9FUotQMtfHxDBPx2UkioPhC
	 cuxp9g2h0+VmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 86DliLukLIC6; Tue, 15 Nov 2022 16:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02D45416AB;
	Tue, 15 Nov 2022 16:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02D45416AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E2951BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC890607F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:42:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC890607F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VSlpK7XTZSwZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 09:42:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2310A606C0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2310A606C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:42:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="309839397"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="309839397"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 01:42:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="638883419"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="638883419"
Received: from axxiablr1.iind.intel.com ([10.190.162.100])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 01:42:15 -0800
From: Siddaraju DH <siddaraju.dh@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 15 Nov 2022 15:11:35 +0530
Message-Id: <20221115094135.147659-1-siddaraju.dh@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 15 Nov 2022 16:29:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668505337; x=1700041337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bFaMenz73HYcfzkWcgJRFVW+bvbC0b9/UGYu5W+tKPQ=;
 b=Hy5pULLwOQGG4A9ujgU3s1ixa7FGB55JY1Pr9sd60chk3VkvdirkR4Bj
 Q40ADbXONi1V8oZuWlPjPj0m2AVwmjmkiXL6jVeja22wgfzCwd6qzetU5
 rkGHIfLzrYkSCt6pVZaGcnVn9XrU41bJ7bJsbpsvOYNio8kqJSZ2bVwOA
 UsIyz3YXO2tq1J0C4nZv9biYgw//vYulyTlx2DcefpifI11htx42yKnNv
 msYgkaz7FjUjUY+2ApZA0cwcVrwNZYTozOZ/x+gb8ijWLzzdEjR9d20nv
 w5OVOe0I5eTPAFztjbLfoqm0lIl6onT2vCp4hkYOnQYSqdTv0L6HGuA7P
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hy5pULLw
Subject: [Intel-wired-lan] [PATCH 1/1] ice: restrict PTP HW clock freq
 adjustments to 100, 000, 000 PPB
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
Cc: Siddaraju DH <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The PHY provides only 39b timestamp. With current timing
implementation, we discard lower 7b, leaving 32b timestamp.
The driver reconstructs the full 64b timestamp by correlating the
32b timestamp with cached_time for performance. The reconstruction
algorithm does both forward & backward interpolation.

The 32b timeval has overflow duration of 2^32 counts ~= 4.23 second.
Due to interpolation in both direction, its now ~= 2.125 second
IIRC, going with at least half a duration, the cached_time is updated
with periodic thread of 1 second (worst-case) periodicity.

But the 1 second periodicity is based on System-timer.
With PPB adjustments, if the 1588 timers increments at say
double the rate, (2s in-place of 1s), the Nyquist rate/half duration
sampling/update of cached_time with 1 second periodic thread will
lead to incorrect interpolations.

Hence we should restrict the PPB adjustments to at least half duration
of cached_time update which translates to 500,000,000 PPB.

Since the periodicity of the cached-time system thread can vary,
it is good to have some buffer time and considering practicality of
PPB adjustments, limiting the max_adj to 100,000,000.

Signed-off-by: Siddaraju DH <siddaraju.dh@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d74632ce0acb..3b95a1540a35 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2344,7 +2344,7 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	snprintf(info->name, sizeof(info->name) - 1, "%s-%s-clk",
 		 dev_driver_string(dev), dev_name(dev));
 	info->owner = THIS_MODULE;
-	info->max_adj = 999999999;
+	info->max_adj = 100000000;
 	info->adjtime = ice_ptp_adjtime;
 	info->adjfine = ice_ptp_adjfine;
 	info->gettimex64 = ice_ptp_gettimex64;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
